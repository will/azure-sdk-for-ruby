# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  #
  # HDInsight Management Client
  #
  class ScriptActions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ScriptActions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [HDInsightManagementClient] reference to the HDInsightManagementClient
    attr_reader :client

    #
    # Deletes a specified persisted script action of the cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param script_name [String] The name of the script.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, cluster_name, script_name, custom_headers:nil)
      response = delete_async(resource_group_name, cluster_name, script_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes a specified persisted script action of the cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param script_name [String] The name of the script.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, cluster_name, script_name, custom_headers:nil)
      delete_async(resource_group_name, cluster_name, script_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes a specified persisted script action of the cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param script_name [String] The name of the script.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, cluster_name, script_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'script_name is nil' if script_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/scriptActions/{scriptName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'scriptName' => script_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

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

        result
      end

      promise.execute
    end

    #
    # Lists all the persisted script actions for the specified cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<RuntimeScriptActionDetail>] operation results.
    #
    def list_persisted_scripts(resource_group_name, cluster_name, custom_headers:nil)
      first_page = list_persisted_scripts_as_lazy(resource_group_name, cluster_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists all the persisted script actions for the specified cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_persisted_scripts_with_http_info(resource_group_name, cluster_name, custom_headers:nil)
      list_persisted_scripts_async(resource_group_name, cluster_name, custom_headers:custom_headers).value!
    end

    #
    # Lists all the persisted script actions for the specified cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_persisted_scripts_async(resource_group_name, cluster_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/scriptActions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name},
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
            result_mapper = Azure::Hdinsight::Mgmt::V2015_03_01_preview::Models::ScriptActionsList.mapper()
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
    # Gets the script execution detail for the given script execution ID.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param script_execution_id [String] The script execution Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RuntimeScriptActionDetail] operation results.
    #
    def get_execution_detail(resource_group_name, cluster_name, script_execution_id, custom_headers:nil)
      response = get_execution_detail_async(resource_group_name, cluster_name, script_execution_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the script execution detail for the given script execution ID.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param script_execution_id [String] The script execution Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_execution_detail_with_http_info(resource_group_name, cluster_name, script_execution_id, custom_headers:nil)
      get_execution_detail_async(resource_group_name, cluster_name, script_execution_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the script execution detail for the given script execution ID.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param script_execution_id [String] The script execution Id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_execution_detail_async(resource_group_name, cluster_name, script_execution_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, 'script_execution_id is nil' if script_execution_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/scriptExecutionHistory/{scriptExecutionId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name,'scriptExecutionId' => script_execution_id},
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
            result_mapper = Azure::Hdinsight::Mgmt::V2015_03_01_preview::Models::RuntimeScriptActionDetail.mapper()
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
    # Lists all the persisted script actions for the specified cluster.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ScriptActionsList] operation results.
    #
    def list_persisted_scripts_next(next_page_link, custom_headers:nil)
      response = list_persisted_scripts_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all the persisted script actions for the specified cluster.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_persisted_scripts_next_with_http_info(next_page_link, custom_headers:nil)
      list_persisted_scripts_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists all the persisted script actions for the specified cluster.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_persisted_scripts_next_async(next_page_link, custom_headers:nil)
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Hdinsight::Mgmt::V2015_03_01_preview::Models::ScriptActionsList.mapper()
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
    # Lists all the persisted script actions for the specified cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ScriptActionsList] which provide lazy access to pages of the
    # response.
    #
    def list_persisted_scripts_as_lazy(resource_group_name, cluster_name, custom_headers:nil)
      response = list_persisted_scripts_async(resource_group_name, cluster_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_persisted_scripts_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
