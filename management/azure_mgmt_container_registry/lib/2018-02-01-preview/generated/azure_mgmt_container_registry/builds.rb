# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_02_01_preview
  #
  # Builds
  #
  class Builds
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Builds class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContainerRegistryManagementClient] reference to the ContainerRegistryManagementClient
    attr_reader :client

    #
    # Gets all the builds for a registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param filter [String] The builds filter to apply on the operation.
    # @param top [Integer] $top is supported for get list of builds, which limits
    # the maximum number of builds to return.
    # @param skip_token [String] $skipToken is supported on get list of builds,
    # which provides the next page in the list of builds.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Build>] operation results.
    #
    def list(resource_group_name, registry_name, filter:nil, top:nil, skip_token:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, registry_name, filter:filter, top:top, skip_token:skip_token, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all the builds for a registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param filter [String] The builds filter to apply on the operation.
    # @param top [Integer] $top is supported for get list of builds, which limits
    # the maximum number of builds to return.
    # @param skip_token [String] $skipToken is supported on get list of builds,
    # which provides the next page in the list of builds.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, registry_name, filter:nil, top:nil, skip_token:nil, custom_headers:nil)
      list_async(resource_group_name, registry_name, filter:filter, top:top, skip_token:skip_token, custom_headers:custom_headers).value!
    end

    #
    # Gets all the builds for a registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param filter [String] The builds filter to apply on the operation.
    # @param top [Integer] $top is supported for get list of builds, which limits
    # the maximum number of builds to return.
    # @param skip_token [String] $skipToken is supported on get list of builds,
    # which provides the next page in the list of builds.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, registry_name, filter:nil, top:nil, skip_token:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MaxLength': '50'" if !registry_name.nil? && registry_name.length > 50
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MinLength': '5'" if !registry_name.nil? && registry_name.length < 5
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]*$'" if !registry_name.nil? && registry_name.match(Regexp.new('^^[a-zA-Z0-9]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/builds'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$top' => top,'$skipToken' => skip_token},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2018_02_01_preview::Models::BuildListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the detailed information for a given build.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Build] operation results.
    #
    def get(resource_group_name, registry_name, build_id, custom_headers:nil)
      response = get_async(resource_group_name, registry_name, build_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the detailed information for a given build.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, registry_name, build_id, custom_headers:nil)
      get_async(resource_group_name, registry_name, build_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the detailed information for a given build.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, registry_name, build_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MaxLength': '50'" if !registry_name.nil? && registry_name.length > 50
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MinLength': '5'" if !registry_name.nil? && registry_name.length < 5
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]*$'" if !registry_name.nil? && registry_name.match(Regexp.new('^^[a-zA-Z0-9]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'build_id is nil' if build_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/builds/{buildId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name,'buildId' => build_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2018_02_01_preview::Models::Build.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Patch the build properties.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param build_update_parameters [BuildUpdateParameters] The build update
    # properties.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Build] operation results.
    #
    def update(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:nil)
      response = update_async(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param build_update_parameters [BuildUpdateParameters] The build update
    # properties.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:nil)
      # Send request
      promise = begin_update_async(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ContainerRegistry::Mgmt::V2018_02_01_preview::Models::Build.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets a link to download the build logs.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BuildGetLogResult] operation results.
    #
    def get_log_link(resource_group_name, registry_name, build_id, custom_headers:nil)
      response = get_log_link_async(resource_group_name, registry_name, build_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a link to download the build logs.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_log_link_with_http_info(resource_group_name, registry_name, build_id, custom_headers:nil)
      get_log_link_async(resource_group_name, registry_name, build_id, custom_headers:custom_headers).value!
    end

    #
    # Gets a link to download the build logs.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_log_link_async(resource_group_name, registry_name, build_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MaxLength': '50'" if !registry_name.nil? && registry_name.length > 50
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MinLength': '5'" if !registry_name.nil? && registry_name.length < 5
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]*$'" if !registry_name.nil? && registry_name.match(Regexp.new('^^[a-zA-Z0-9]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'build_id is nil' if build_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/builds/{buildId}/getLogLink'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name,'buildId' => build_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2018_02_01_preview::Models::BuildGetLogResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Cancel an existing build.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def cancel(resource_group_name, registry_name, build_id, custom_headers:nil)
      response = cancel_async(resource_group_name, registry_name, build_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def cancel_async(resource_group_name, registry_name, build_id, custom_headers:nil)
      # Send request
      promise = begin_cancel_async(resource_group_name, registry_name, build_id, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Patch the build properties.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param build_update_parameters [BuildUpdateParameters] The build update
    # properties.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Build] operation results.
    #
    def begin_update(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:nil)
      response = begin_update_async(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Patch the build properties.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param build_update_parameters [BuildUpdateParameters] The build update
    # properties.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:nil)
      begin_update_async(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:custom_headers).value!
    end

    #
    # Patch the build properties.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param build_update_parameters [BuildUpdateParameters] The build update
    # properties.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(resource_group_name, registry_name, build_id, build_update_parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MaxLength': '50'" if !registry_name.nil? && registry_name.length > 50
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MinLength': '5'" if !registry_name.nil? && registry_name.length < 5
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]*$'" if !registry_name.nil? && registry_name.match(Regexp.new('^^[a-zA-Z0-9]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'build_id is nil' if build_id.nil?
      fail ArgumentError, 'build_update_parameters is nil' if build_update_parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ContainerRegistry::Mgmt::V2018_02_01_preview::Models::BuildUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  build_update_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/builds/{buildId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name,'buildId' => build_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2018_02_01_preview::Models::Build.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2018_02_01_preview::Models::Build.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Cancel an existing build.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_cancel(resource_group_name, registry_name, build_id, custom_headers:nil)
      response = begin_cancel_async(resource_group_name, registry_name, build_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Cancel an existing build.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_cancel_with_http_info(resource_group_name, registry_name, build_id, custom_headers:nil)
      begin_cancel_async(resource_group_name, registry_name, build_id, custom_headers:custom_headers).value!
    end

    #
    # Cancel an existing build.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param build_id [String] The build ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_cancel_async(resource_group_name, registry_name, build_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MaxLength': '50'" if !registry_name.nil? && registry_name.length > 50
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MinLength': '5'" if !registry_name.nil? && registry_name.length < 5
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]*$'" if !registry_name.nil? && registry_name.match(Regexp.new('^^[a-zA-Z0-9]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'build_id is nil' if build_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/builds/{buildId}/cancel'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name,'buildId' => build_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets all the builds for a registry.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BuildListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the builds for a registry.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all the builds for a registry.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2018_02_01_preview::Models::BuildListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all the builds for a registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param filter [String] The builds filter to apply on the operation.
    # @param top [Integer] $top is supported for get list of builds, which limits
    # the maximum number of builds to return.
    # @param skip_token [String] $skipToken is supported on get list of builds,
    # which provides the next page in the list of builds.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BuildListResult] which provide lazy access to pages of the response.
    #
    def list_as_lazy(resource_group_name, registry_name, filter:nil, top:nil, skip_token:nil, custom_headers:nil)
      response = list_async(resource_group_name, registry_name, filter:filter, top:top, skip_token:skip_token, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
