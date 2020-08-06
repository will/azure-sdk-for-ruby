# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_09_01
  #
  # Registries
  #
  class Registries
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Registries class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContainerRegistryManagementClient] reference to the ContainerRegistryManagementClient
    attr_reader :client

    #
    # Schedules a new run based on the request parameters and add it to the run
    # queue.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param run_request [RunRequest] The parameters of a run that needs to
    # scheduled.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Run] operation results.
    #
    def schedule_run(resource_group_name, registry_name, run_request, custom_headers:nil)
      response = schedule_run_async(resource_group_name, registry_name, run_request, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param run_request [RunRequest] The parameters of a run that needs to
    # scheduled.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def schedule_run_async(resource_group_name, registry_name, run_request, custom_headers:nil)
      # Send request
      promise = begin_schedule_run_async(resource_group_name, registry_name, run_request, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Run.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Get the upload location for the user to be able to upload the source.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SourceUploadDefinition] operation results.
    #
    def get_build_source_upload_url(resource_group_name, registry_name, custom_headers:nil)
      response = get_build_source_upload_url_async(resource_group_name, registry_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the upload location for the user to be able to upload the source.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_build_source_upload_url_with_http_info(resource_group_name, registry_name, custom_headers:nil)
      get_build_source_upload_url_async(resource_group_name, registry_name, custom_headers:custom_headers).value!
    end

    #
    # Get the upload location for the user to be able to upload the source.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_build_source_upload_url_async(resource_group_name, registry_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
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
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/listBuildSourceUploadUrl'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name},
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
            result_mapper = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceUploadDefinition.mapper()
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
    # Schedules a new run based on the request parameters and add it to the run
    # queue.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param run_request [RunRequest] The parameters of a run that needs to
    # scheduled.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Run] operation results.
    #
    def begin_schedule_run(resource_group_name, registry_name, run_request, custom_headers:nil)
      response = begin_schedule_run_async(resource_group_name, registry_name, run_request, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Schedules a new run based on the request parameters and add it to the run
    # queue.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param run_request [RunRequest] The parameters of a run that needs to
    # scheduled.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_schedule_run_with_http_info(resource_group_name, registry_name, run_request, custom_headers:nil)
      begin_schedule_run_async(resource_group_name, registry_name, run_request, custom_headers:custom_headers).value!
    end

    #
    # Schedules a new run based on the request parameters and add it to the run
    # queue.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param run_request [RunRequest] The parameters of a run that needs to
    # scheduled.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_schedule_run_async(resource_group_name, registry_name, run_request, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MaxLength': '50'" if !registry_name.nil? && registry_name.length > 50
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'MinLength': '5'" if !registry_name.nil? && registry_name.length < 5
      fail ArgumentError, "'registry_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]*$'" if !registry_name.nil? && registry_name.match(Regexp.new('^^[a-zA-Z0-9]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'run_request is nil' if run_request.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunRequest.mapper()
      request_content = @client.serialize(request_mapper,  run_request)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/scheduleRun'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Run.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
