# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  #
  # REST APIs for orchestrating deployments using the Azure Deployment Manager
  # (ADM). See
  # https://docs.microsoft.com/en-us/azure/azure-resource-manager/deployment-manager-overview
  # for more information.
  #
  class ServiceUnits
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ServiceUnits class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AzureDeploymentManager] reference to the AzureDeploymentManager
    attr_reader :client

    #
    # Creates or updates a service unit under the service in the service topology.
    #
    # This is an asynchronous operation and can be polled to completion using the
    # operation resource returned by this operation.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param service_unit_info [ServiceUnitResource] The service unit resource
    # object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceUnitResource] operation results.
    #
    def create_or_update(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:nil)
      response = create_or_update_async(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param service_unit_info [ServiceUnitResource] The service unit resource
    # object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitResource.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the service unit.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceUnitResource] operation results.
    #
    def get(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:nil)
      response = get_async(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the service unit.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:nil)
      get_async(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the service unit.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'service_topology_name is nil' if service_topology_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'service_unit_name is nil' if service_unit_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeploymentManager/serviceTopologies/{serviceTopologyName}/services/{serviceName}/serviceUnits/{serviceUnitName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serviceTopologyName' => service_topology_name,'serviceName' => service_name,'serviceUnitName' => service_unit_name},
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
            result_mapper = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitResource.mapper()
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
    # Deletes the service unit.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:nil)
      response = delete_async(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the service unit.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:nil)
      delete_async(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the service unit.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, service_topology_name, service_name, service_unit_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'service_topology_name is nil' if service_topology_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'service_unit_name is nil' if service_unit_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeploymentManager/serviceTopologies/{serviceTopologyName}/services/{serviceName}/serviceUnits/{serviceUnitName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serviceTopologyName' => service_topology_name,'serviceName' => service_name,'serviceUnitName' => service_unit_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
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
    # Lists the service units under a service in the service topology.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list(resource_group_name, service_topology_name, service_name, custom_headers:nil)
      response = list_async(resource_group_name, service_topology_name, service_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the service units under a service in the service topology.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, service_topology_name, service_name, custom_headers:nil)
      list_async(resource_group_name, service_topology_name, service_name, custom_headers:custom_headers).value!
    end

    #
    # Lists the service units under a service in the service topology.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, service_topology_name, service_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'service_topology_name is nil' if service_topology_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeploymentManager/serviceTopologies/{serviceTopologyName}/services/{serviceName}/serviceUnits'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serviceTopologyName' => service_topology_name,'serviceName' => service_name},
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
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'ServiceUnitResourceElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'ServiceUnitResource'
                    }
                }
              }
            }
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
    # Creates or updates a service unit under the service in the service topology.
    #
    # This is an asynchronous operation and can be polled to completion using the
    # operation resource returned by this operation.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param service_unit_info [ServiceUnitResource] The service unit resource
    # object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceUnitResource] operation results.
    #
    def begin_create_or_update(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a service unit under the service in the service topology.
    #
    # This is an asynchronous operation and can be polled to completion using the
    # operation resource returned by this operation.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param service_unit_info [ServiceUnitResource] The service unit resource
    # object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a service unit under the service in the service topology.
    #
    # This is an asynchronous operation and can be polled to completion using the
    # operation resource returned by this operation.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param service_topology_name [String] The name of the service topology .
    # @param service_name [String] The name of the service resource.
    # @param service_unit_name [String] The name of the service unit resource.
    # @param service_unit_info [ServiceUnitResource] The service unit resource
    # object.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, service_topology_name, service_name, service_unit_name, service_unit_info, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'service_topology_name is nil' if service_topology_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'service_unit_name is nil' if service_unit_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'service_unit_info is nil' if service_unit_info.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitResource.mapper()
      request_content = @client.serialize(request_mapper,  service_unit_info)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeploymentManager/serviceTopologies/{serviceTopologyName}/services/{serviceName}/serviceUnits/{serviceUnitName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serviceTopologyName' => service_topology_name,'serviceName' => service_name,'serviceUnitName' => service_unit_name},
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
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitResource.mapper()
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
