# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  #
  # Azure Synapse Analytics Management Client
  #
  class IntegrationRuntimeCredentials
    include MsRestAzure

    #
    # Creates and initializes a new instance of the IntegrationRuntimeCredentials class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SynapseManagementClient] reference to the SynapseManagementClient
    attr_reader :client

    #
    # Sync integration runtime credentials
    #
    # Force the integration runtime to synchronize credentials across integration
    # runtime nodes, and this will override the credentials across all worker nodes
    # with those available on the dispatcher node. If you already have the latest
    # credential backup file, you should manually import it (preferred) on any
    # self-hosted integration runtime node than using this API directly.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace
    # @param integration_runtime_name [String] Integration runtime name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def sync(resource_group_name, workspace_name, integration_runtime_name, custom_headers:nil)
      response = sync_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Sync integration runtime credentials
    #
    # Force the integration runtime to synchronize credentials across integration
    # runtime nodes, and this will override the credentials across all worker nodes
    # with those available on the dispatcher node. If you already have the latest
    # credential backup file, you should manually import it (preferred) on any
    # self-hosted integration runtime node than using this API directly.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace
    # @param integration_runtime_name [String] Integration runtime name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def sync_with_http_info(resource_group_name, workspace_name, integration_runtime_name, custom_headers:nil)
      sync_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:custom_headers).value!
    end

    #
    # Sync integration runtime credentials
    #
    # Force the integration runtime to synchronize credentials across integration
    # runtime nodes, and this will override the credentials across all worker nodes
    # with those available on the dispatcher node. If you already have the latest
    # credential backup file, you should manually import it (preferred) on any
    # self-hosted integration runtime node than using this API directly.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace
    # @param integration_runtime_name [String] Integration runtime name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def sync_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'integration_runtime_name is nil' if integration_runtime_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/integrationRuntimes/{integrationRuntimeName}/syncCredentials'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'integrationRuntimeName' => integration_runtime_name},
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

        result
      end

      promise.execute
    end

  end
end