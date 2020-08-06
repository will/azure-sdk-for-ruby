# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2015_06_01
  #
  # Use these APIs to manage Azure CDN resources through the Azure Resource
  # Manager. You must make sure that requests made to these resources are
  # secure. For more information, see
  # https://msdn.microsoft.com/en-us/library/azure/dn790557.aspx.
  #
  class CustomDomains
    include MsRestAzure

    #
    # Creates and initializes a new instance of the CustomDomains class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CdnManagementClient] reference to the CdnManagementClient
    attr_reader :client

    #
    # Lists the existing CDN custom domains within an endpoint.
    #
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CustomDomainListResult] operation results.
    #
    def list_by_endpoint(endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      response = list_by_endpoint_async(endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the existing CDN custom domains within an endpoint.
    #
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_endpoint_with_http_info(endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      list_by_endpoint_async(endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Lists the existing CDN custom domains within an endpoint.
    #
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_endpoint_async(endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/customDomains'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomainListResult.mapper()
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
    # Gets an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CustomDomain] operation results.
    #
    def get(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      response = get_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      get_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Gets an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      fail ArgumentError, 'custom_domain_name is nil' if custom_domain_name.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/customDomains/{customDomainName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'customDomainName' => custom_domain_name,'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomain.mapper()
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
    # Creates a new CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param custom_domain_properties [CustomDomainParameters] Custom domain
    # properties required for creation.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CustomDomain] operation results.
    #
    def create(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      response = create_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param custom_domain_properties [CustomDomainParameters] Custom domain
    # properties required for creation.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      # Send request
      promise = begin_create_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomain.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Updates an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param custom_domain_properties [CustomDomainParameters] Custom domain
    # properties to update.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ErrorResponse] operation results.
    #
    def update(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      response = update_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param custom_domain_properties [CustomDomainParameters] Custom domain
    # properties to update.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      update_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Updates an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param custom_domain_properties [CustomDomainParameters] Custom domain
    # properties to update.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      fail ArgumentError, 'custom_domain_name is nil' if custom_domain_name.nil?
      fail ArgumentError, 'custom_domain_properties is nil' if custom_domain_properties.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomainParameters.mapper()
      request_content = @client.serialize(request_mapper,  custom_domain_properties)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/customDomains/{customDomainName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'customDomainName' => custom_domain_name,'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code >= 200 && status_code < 300
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        begin
          parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
          result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::ErrorResponse.mapper()
          result.body = @client.deserialize(result_mapper, parsed_response)
        rescue Exception => e
          fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
        end

        result
      end

      promise.execute
    end

    #
    # Deletes an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CustomDomain] operation results.
    #
    def delete_if_exists(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      response = delete_if_exists_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_if_exists_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      # Send request
      promise = begin_delete_if_exists_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomain.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Creates a new CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param custom_domain_properties [CustomDomainParameters] Custom domain
    # properties required for creation.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CustomDomain] operation results.
    #
    def begin_create(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      response = begin_create_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a new CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param custom_domain_properties [CustomDomainParameters] Custom domain
    # properties required for creation.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_with_http_info(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      begin_create_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Creates a new CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param custom_domain_properties [CustomDomainParameters] Custom domain
    # properties required for creation.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_async(custom_domain_name, custom_domain_properties, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      fail ArgumentError, 'custom_domain_name is nil' if custom_domain_name.nil?
      fail ArgumentError, 'custom_domain_properties is nil' if custom_domain_properties.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomainParameters.mapper()
      request_content = @client.serialize(request_mapper,  custom_domain_properties)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/customDomains/{customDomainName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'customDomainName' => custom_domain_name,'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomain.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomain.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomain.mapper()
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
    # Deletes an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CustomDomain] operation results.
    #
    def begin_delete_if_exists(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      response = begin_delete_if_exists_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_if_exists_with_http_info(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      begin_delete_if_exists_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes an existing CDN custom domain within an endpoint.
    #
    # @param custom_domain_name [String] Name of the custom domain within an
    # endpoint.
    # @param endpoint_name [String] Name of the endpoint within the CDN profile.
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_if_exists_async(custom_domain_name, endpoint_name, profile_name, resource_group_name, custom_headers:nil)
      fail ArgumentError, 'custom_domain_name is nil' if custom_domain_name.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/customDomains/{customDomainName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'customDomainName' => custom_domain_name,'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::CustomDomain.mapper()
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
