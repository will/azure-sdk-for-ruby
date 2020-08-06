# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  #
  # Azure Cosmos DB Database Service Resource Provider REST API
  #
  class Collection
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Collection class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CosmosDBManagementClient] reference to the CosmosDBManagementClient
    attr_reader :client

    #
    # Retrieves the metrics determined by the given filter for the given database
    # account and collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return. The parameters that can be filtered are name.value (name
    # of the metric, can have an or of multiple names), startTime, endTime, and
    # timeGrain. The supported operator is eq.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MetricListResult] operation results.
    #
    def list_metrics(resource_group_name, account_name, database_rid, collection_rid, filter, custom_headers:nil)
      response = list_metrics_async(resource_group_name, account_name, database_rid, collection_rid, filter, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves the metrics determined by the given filter for the given database
    # account and collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return. The parameters that can be filtered are name.value (name
    # of the metric, can have an or of multiple names), startTime, endTime, and
    # timeGrain. The supported operator is eq.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_metrics_with_http_info(resource_group_name, account_name, database_rid, collection_rid, filter, custom_headers:nil)
      list_metrics_async(resource_group_name, account_name, database_rid, collection_rid, filter, custom_headers:custom_headers).value!
    end

    #
    # Retrieves the metrics determined by the given filter for the given database
    # account and collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return. The parameters that can be filtered are name.value (name
    # of the metric, can have an or of multiple names), startTime, endTime, and
    # timeGrain. The supported operator is eq.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_metrics_async(resource_group_name, account_name, database_rid, collection_rid, filter, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '50'" if !account_name.nil? && account_name.length > 50
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[a-z0-9]+(-[a-z0-9]+)*'" if !account_name.nil? && account_name.match(Regexp.new('^^[a-z0-9]+(-[a-z0-9]+)*$')).nil?
      fail ArgumentError, 'database_rid is nil' if database_rid.nil?
      fail ArgumentError, 'collection_rid is nil' if collection_rid.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'filter is nil' if filter.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/databases/{databaseRid}/collections/{collectionRid}/metrics'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'databaseRid' => database_rid,'collectionRid' => collection_rid},
          query_params: {'api-version' => @client.api_version,'$filter' => filter},
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
            result_mapper = Azure::Cosmosdb::Mgmt::V2019_12_12::Models::MetricListResult.mapper()
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
    # Retrieves the usages (most recent storage data) for the given collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param filter [String] An OData filter expression that describes a subset of
    # usages to return. The supported parameter is name.value (name of the metric,
    # can have an or of multiple names).
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UsagesResult] operation results.
    #
    def list_usages(resource_group_name, account_name, database_rid, collection_rid, filter:nil, custom_headers:nil)
      response = list_usages_async(resource_group_name, account_name, database_rid, collection_rid, filter:filter, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves the usages (most recent storage data) for the given collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param filter [String] An OData filter expression that describes a subset of
    # usages to return. The supported parameter is name.value (name of the metric,
    # can have an or of multiple names).
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_usages_with_http_info(resource_group_name, account_name, database_rid, collection_rid, filter:nil, custom_headers:nil)
      list_usages_async(resource_group_name, account_name, database_rid, collection_rid, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Retrieves the usages (most recent storage data) for the given collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param filter [String] An OData filter expression that describes a subset of
    # usages to return. The supported parameter is name.value (name of the metric,
    # can have an or of multiple names).
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_usages_async(resource_group_name, account_name, database_rid, collection_rid, filter:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '50'" if !account_name.nil? && account_name.length > 50
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[a-z0-9]+(-[a-z0-9]+)*'" if !account_name.nil? && account_name.match(Regexp.new('^^[a-z0-9]+(-[a-z0-9]+)*$')).nil?
      fail ArgumentError, 'database_rid is nil' if database_rid.nil?
      fail ArgumentError, 'collection_rid is nil' if collection_rid.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/databases/{databaseRid}/collections/{collectionRid}/usages'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'databaseRid' => database_rid,'collectionRid' => collection_rid},
          query_params: {'api-version' => @client.api_version,'$filter' => filter},
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
            result_mapper = Azure::Cosmosdb::Mgmt::V2019_12_12::Models::UsagesResult.mapper()
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
    # Retrieves metric definitions for the given collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MetricDefinitionsListResult] operation results.
    #
    def list_metric_definitions(resource_group_name, account_name, database_rid, collection_rid, custom_headers:nil)
      response = list_metric_definitions_async(resource_group_name, account_name, database_rid, collection_rid, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves metric definitions for the given collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_metric_definitions_with_http_info(resource_group_name, account_name, database_rid, collection_rid, custom_headers:nil)
      list_metric_definitions_async(resource_group_name, account_name, database_rid, collection_rid, custom_headers:custom_headers).value!
    end

    #
    # Retrieves metric definitions for the given collection.
    #
    # @param resource_group_name [String] Name of an Azure resource group.
    # @param account_name [String] Cosmos DB database account name.
    # @param database_rid [String] Cosmos DB database rid.
    # @param collection_rid [String] Cosmos DB collection rid.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_metric_definitions_async(resource_group_name, account_name, database_rid, collection_rid, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '50'" if !account_name.nil? && account_name.length > 50
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[a-z0-9]+(-[a-z0-9]+)*'" if !account_name.nil? && account_name.match(Regexp.new('^^[a-z0-9]+(-[a-z0-9]+)*$')).nil?
      fail ArgumentError, 'database_rid is nil' if database_rid.nil?
      fail ArgumentError, 'collection_rid is nil' if collection_rid.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/databases/{databaseRid}/collections/{collectionRid}/metricDefinitions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'databaseRid' => database_rid,'collectionRid' => collection_rid},
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
            result_mapper = Azure::Cosmosdb::Mgmt::V2019_12_12::Models::MetricDefinitionsListResult.mapper()
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
