# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  #
  # Azure Synapse Analytics Management Client
  #
  class SqlPoolTables
    include MsRestAzure

    #
    # Creates and initializes a new instance of the SqlPoolTables class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SynapseManagementClient] reference to the SynapseManagementClient
    attr_reader :client

    #
    # Gets tables of a given schema in a SQL pool
    #
    # Gets tables of a given schema in a SQL pool.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace
    # @param sql_pool_name [String] SQL pool name
    # @param schema_name [String] The name of the schema.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<SqlPoolTable>] operation results.
    #
    def list_by_schema(resource_group_name, workspace_name, sql_pool_name, schema_name, filter:nil, custom_headers:nil)
      first_page = list_by_schema_as_lazy(resource_group_name, workspace_name, sql_pool_name, schema_name, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets tables of a given schema in a SQL pool
    #
    # Gets tables of a given schema in a SQL pool.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace
    # @param sql_pool_name [String] SQL pool name
    # @param schema_name [String] The name of the schema.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_schema_with_http_info(resource_group_name, workspace_name, sql_pool_name, schema_name, filter:nil, custom_headers:nil)
      list_by_schema_async(resource_group_name, workspace_name, sql_pool_name, schema_name, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Gets tables of a given schema in a SQL pool
    #
    # Gets tables of a given schema in a SQL pool.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace
    # @param sql_pool_name [String] SQL pool name
    # @param schema_name [String] The name of the schema.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_schema_async(resource_group_name, workspace_name, sql_pool_name, schema_name, filter:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'sql_pool_name is nil' if sql_pool_name.nil?
      fail ArgumentError, 'schema_name is nil' if schema_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/sqlPools/{sqlPoolName}/schemas/{schemaName}/tables'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'sqlPoolName' => sql_pool_name,'schemaName' => schema_name},
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
            result_mapper = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolTableListResult.mapper()
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
    # Gets tables of a given schema in a SQL pool
    #
    # Gets tables of a given schema in a SQL pool.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SqlPoolTableListResult] operation results.
    #
    def list_by_schema_next(next_page_link, custom_headers:nil)
      response = list_by_schema_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets tables of a given schema in a SQL pool
    #
    # Gets tables of a given schema in a SQL pool.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_schema_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_schema_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets tables of a given schema in a SQL pool
    #
    # Gets tables of a given schema in a SQL pool.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_schema_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SqlPoolTableListResult.mapper()
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
    # Gets tables of a given schema in a SQL pool
    #
    # Gets tables of a given schema in a SQL pool.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace
    # @param sql_pool_name [String] SQL pool name
    # @param schema_name [String] The name of the schema.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SqlPoolTableListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_schema_as_lazy(resource_group_name, workspace_name, sql_pool_name, schema_name, filter:nil, custom_headers:nil)
      response = list_by_schema_async(resource_group_name, workspace_name, sql_pool_name, schema_name, filter:filter, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_schema_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
