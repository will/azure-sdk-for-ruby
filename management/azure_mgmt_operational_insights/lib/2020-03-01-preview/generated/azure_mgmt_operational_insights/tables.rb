# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_03_01_preview
  #
  # Operational Insights Client
  #
  class Tables
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Tables class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [OperationalInsightsManagementClient] reference to the OperationalInsightsManagementClient
    attr_reader :client

    #
    # Gets all the tables for the specified Log Analytics workspace.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TablesListResult] operation results.
    #
    def list_by_workspace(resource_group_name, workspace_name, custom_headers:nil)
      response = list_by_workspace_async(resource_group_name, workspace_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the tables for the specified Log Analytics workspace.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_workspace_with_http_info(resource_group_name, workspace_name, custom_headers:nil)
      list_by_workspace_async(resource_group_name, workspace_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all the tables for the specified Log Analytics workspace.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_workspace_async(resource_group_name, workspace_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MaxLength': '63'" if !workspace_name.nil? && workspace_name.length > 63
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MinLength': '4'" if !workspace_name.nil? && workspace_name.length < 4
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$'" if !workspace_name.nil? && workspace_name.match(Regexp.new('^^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/tables'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name},
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
            result_mapper = Azure::OperationalInsights::Mgmt::V2020_03_01_preview::Models::TablesListResult.mapper()
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
    # Updates a Log Analytics workspace table properties.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param table_name [String] The name of the table.
    # @param parameters [Table] The parameters required to update table properties.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Table] operation results.
    #
    def update(resource_group_name, workspace_name, table_name, parameters, custom_headers:nil)
      response = update_async(resource_group_name, workspace_name, table_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates a Log Analytics workspace table properties.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param table_name [String] The name of the table.
    # @param parameters [Table] The parameters required to update table properties.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, workspace_name, table_name, parameters, custom_headers:nil)
      update_async(resource_group_name, workspace_name, table_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Updates a Log Analytics workspace table properties.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param table_name [String] The name of the table.
    # @param parameters [Table] The parameters required to update table properties.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, workspace_name, table_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MaxLength': '63'" if !workspace_name.nil? && workspace_name.length > 63
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MinLength': '4'" if !workspace_name.nil? && workspace_name.length < 4
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$'" if !workspace_name.nil? && workspace_name.match(Regexp.new('^^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'table_name is nil' if table_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::OperationalInsights::Mgmt::V2020_03_01_preview::Models::Table.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/tables/{tableName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'tableName' => table_name},
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
            result_mapper = Azure::OperationalInsights::Mgmt::V2020_03_01_preview::Models::Table.mapper()
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
    # Gets a Log Analytics workspace table.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param table_name [String] The name of the table.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Table] operation results.
    #
    def get(resource_group_name, workspace_name, table_name, custom_headers:nil)
      response = get_async(resource_group_name, workspace_name, table_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a Log Analytics workspace table.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param table_name [String] The name of the table.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, workspace_name, table_name, custom_headers:nil)
      get_async(resource_group_name, workspace_name, table_name, custom_headers:custom_headers).value!
    end

    #
    # Gets a Log Analytics workspace table.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param table_name [String] The name of the table.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, workspace_name, table_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MaxLength': '63'" if !workspace_name.nil? && workspace_name.length > 63
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MinLength': '4'" if !workspace_name.nil? && workspace_name.length < 4
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$'" if !workspace_name.nil? && workspace_name.match(Regexp.new('^^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'table_name is nil' if table_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/tables/{tableName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'tableName' => table_name},
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
            result_mapper = Azure::OperationalInsights::Mgmt::V2020_03_01_preview::Models::Table.mapper()
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
