# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  #
  # REST API for Azure Logic Apps.
  #
  class WorkflowTriggers
    include MsRestAzure

    #
    # Creates and initializes a new instance of the WorkflowTriggers class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LogicManagementClient] reference to the LogicManagementClient
    attr_reader :client

    #
    # Gets a list of workflow triggers.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<WorkflowTrigger>] operation results.
    #
    def list(resource_group_name, workflow_name, top:nil, filter:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, workflow_name, top:top, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets a list of workflow triggers.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, workflow_name, top:nil, filter:nil, custom_headers:nil)
      list_async(resource_group_name, workflow_name, top:top, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Gets a list of workflow triggers.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, workflow_name, top:nil, filter:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/triggers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$filter' => filter},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerListResult.mapper()
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
    # Gets a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkflowTrigger] operation results.
    #
    def get(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      response = get_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      get_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
    end

    #
    # Gets a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, 'trigger_name is nil' if trigger_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/triggers/{triggerName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name,'triggerName' => trigger_name},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTrigger.mapper()
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
    # Resets a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def reset(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      response = reset_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Resets a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def reset_with_http_info(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      reset_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
    end

    #
    # Resets a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def reset_async(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, 'trigger_name is nil' if trigger_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/triggers/{triggerName}/reset'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name,'triggerName' => trigger_name},
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

        result
      end

      promise.execute
    end

    #
    # Runs a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def run(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      response = run_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Runs a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def run_with_http_info(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      run_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
    end

    #
    # Runs a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def run_async(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, 'trigger_name is nil' if trigger_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/triggers/{triggerName}/run'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name,'triggerName' => trigger_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code >= 200 && status_code < 300
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get the trigger schema as JSON.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JsonSchema] operation results.
    #
    def get_schema_json(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      response = get_schema_json_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the trigger schema as JSON.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_schema_json_with_http_info(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      get_schema_json_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
    end

    #
    # Get the trigger schema as JSON.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_schema_json_async(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, 'trigger_name is nil' if trigger_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/triggers/{triggerName}/schemas/json'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name,'triggerName' => trigger_name},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::JsonSchema.mapper()
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
    # Sets the state of a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param set_state [SetTriggerStateActionDefinition] The workflow trigger
    # state.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def set_state(resource_group_name, workflow_name, trigger_name, set_state, custom_headers:nil)
      response = set_state_async(resource_group_name, workflow_name, trigger_name, set_state, custom_headers:custom_headers).value!
      nil
    end

    #
    # Sets the state of a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param set_state [SetTriggerStateActionDefinition] The workflow trigger
    # state.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def set_state_with_http_info(resource_group_name, workflow_name, trigger_name, set_state, custom_headers:nil)
      set_state_async(resource_group_name, workflow_name, trigger_name, set_state, custom_headers:custom_headers).value!
    end

    #
    # Sets the state of a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param set_state [SetTriggerStateActionDefinition] The workflow trigger
    # state.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def set_state_async(resource_group_name, workflow_name, trigger_name, set_state, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, 'trigger_name is nil' if trigger_name.nil?
      fail ArgumentError, 'set_state is nil' if set_state.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::SetTriggerStateActionDefinition.mapper()
      request_content = @client.serialize(request_mapper,  set_state)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/triggers/{triggerName}/setState'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name,'triggerName' => trigger_name},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get the callback URL for a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkflowTriggerCallbackUrl] operation results.
    #
    def list_callback_url(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      response = list_callback_url_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the callback URL for a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_callback_url_with_http_info(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      list_callback_url_async(resource_group_name, workflow_name, trigger_name, custom_headers:custom_headers).value!
    end

    #
    # Get the callback URL for a workflow trigger.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param trigger_name [String] The workflow trigger name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_callback_url_async(resource_group_name, workflow_name, trigger_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workflow_name is nil' if workflow_name.nil?
      fail ArgumentError, 'trigger_name is nil' if trigger_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/triggers/{triggerName}/listCallbackUrl'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workflowName' => workflow_name,'triggerName' => trigger_name},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerCallbackUrl.mapper()
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
    # Gets a list of workflow triggers.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkflowTriggerListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of workflow triggers.
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
    # Gets a list of workflow triggers.
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerListResult.mapper()
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
    # Gets a list of workflow triggers.
    #
    # @param resource_group_name [String] The resource group name.
    # @param workflow_name [String] The workflow name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkflowTriggerListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(resource_group_name, workflow_name, top:nil, filter:nil, custom_headers:nil)
      response = list_async(resource_group_name, workflow_name, top:top, filter:filter, custom_headers:custom_headers).value!
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
