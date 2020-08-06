# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_09_07
  #
  # The Azure Kusto management API provides a RESTful set of web services that
  # interact with Azure Kusto services to manage your clusters and databases.
  # The API enables you to create, update, and delete clusters and databases.
  #
  class AttachedDatabaseConfigurations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AttachedDatabaseConfigurations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [KustoManagementClient] reference to the KustoManagementClient
    attr_reader :client

    #
    # Returns the list of attached database configurations of the given Kusto
    # cluster.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AttachedDatabaseConfigurationListResult] operation results.
    #
    def list_by_cluster(resource_group_name, cluster_name, custom_headers:nil)
      response = list_by_cluster_async(resource_group_name, cluster_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns the list of attached database configurations of the given Kusto
    # cluster.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_cluster_with_http_info(resource_group_name, cluster_name, custom_headers:nil)
      list_by_cluster_async(resource_group_name, cluster_name, custom_headers:custom_headers).value!
    end

    #
    # Returns the list of attached database configurations of the given Kusto
    # cluster.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_cluster_async(resource_group_name, cluster_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/attachedDatabaseConfigurations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfigurationListResult.mapper()
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
    # Returns an attached database configuration.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AttachedDatabaseConfiguration] operation results.
    #
    def get(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:nil)
      response = get_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns an attached database configuration.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:nil)
      get_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:custom_headers).value!
    end

    #
    # Returns an attached database configuration.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'attached_database_configuration_name is nil' if attached_database_configuration_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/attachedDatabaseConfigurations/{attachedDatabaseConfigurationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'attachedDatabaseConfigurationName' => attached_database_configuration_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfiguration.mapper()
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
    # Creates or updates an attached database configuration.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param parameters [AttachedDatabaseConfiguration] The database parameters
    # supplied to the CreateOrUpdate operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AttachedDatabaseConfiguration] operation results.
    #
    def create_or_update(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param parameters [AttachedDatabaseConfiguration] The database parameters
    # supplied to the CreateOrUpdate operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfiguration.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes the attached database configuration with the given name.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:nil)
      response = delete_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:custom_headers)

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
    # Creates or updates an attached database configuration.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param parameters [AttachedDatabaseConfiguration] The database parameters
    # supplied to the CreateOrUpdate operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AttachedDatabaseConfiguration] operation results.
    #
    def begin_create_or_update(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates an attached database configuration.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param parameters [AttachedDatabaseConfiguration] The database parameters
    # supplied to the CreateOrUpdate operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates an attached database configuration.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param parameters [AttachedDatabaseConfiguration] The database parameters
    # supplied to the CreateOrUpdate operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, cluster_name, attached_database_configuration_name, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'attached_database_configuration_name is nil' if attached_database_configuration_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfiguration.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/attachedDatabaseConfigurations/{attachedDatabaseConfigurationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'attachedDatabaseConfigurationName' => attached_database_configuration_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfiguration.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfiguration.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfiguration.mapper()
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
    # Deletes the attached database configuration with the given name.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the attached database configuration with the given name.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:nil)
      begin_delete_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the attached database configuration with the given name.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Kusto cluster.
    # @param cluster_name [String] The name of the Kusto cluster.
    # @param attached_database_configuration_name [String] The name of the attached
    # database configuration.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, cluster_name, attached_database_configuration_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'attached_database_configuration_name is nil' if attached_database_configuration_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/attachedDatabaseConfigurations/{attachedDatabaseConfigurationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'attachedDatabaseConfigurationName' => attached_database_configuration_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
