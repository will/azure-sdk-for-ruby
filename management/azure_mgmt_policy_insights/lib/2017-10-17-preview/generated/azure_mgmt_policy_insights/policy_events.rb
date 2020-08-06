# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2017_10_17_preview
  #
  # PolicyEvents
  #
  class PolicyEvents
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PolicyEvents class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [PolicyInsightsClient] reference to the PolicyInsightsClient
    attr_reader :client

    #
    # Queries policy events for the resources under the management group.
    #
    # @param management_group_name [String] Management group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyEventsQueryResults] operation results.
    #
    def list_query_results_for_management_group(management_group_name, query_options:nil, custom_headers:nil)
      response = list_query_results_for_management_group_async(management_group_name, query_options:query_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Queries policy events for the resources under the management group.
    #
    # @param management_group_name [String] Management group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_management_group_with_http_info(management_group_name, query_options:nil, custom_headers:nil)
      list_query_results_for_management_group_async(management_group_name, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Queries policy events for the resources under the management group.
    #
    # @param management_group_name [String] Management group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_management_group_async(management_group_name, query_options:nil, custom_headers:nil)
      policy_events_resource = 'default'
      management_groups_namespace = 'Microsoft.Management'
      fail ArgumentError, 'management_group_name is nil' if management_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      top = nil
      order_by = nil
      select = nil
      from = nil
      to = nil
      filter = nil
      apply = nil
      unless query_options.nil?
        top = query_options.Top
      end
      unless query_options.nil?
        order_by = query_options.OrderBy
      end
      unless query_options.nil?
        select = query_options.Select
      end
      unless query_options.nil?
        from = query_options.From
      end
      unless query_options.nil?
        to = query_options.To
      end
      unless query_options.nil?
        filter = query_options.Filter
      end
      unless query_options.nil?
        apply = query_options.Apply
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/{managementGroupsNamespace}/managementGroups/{managementGroupName}/providers/Microsoft.PolicyInsights/policyEvents/{policyEventsResource}/queryResults'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'policyEventsResource' => policy_events_resource,'managementGroupsNamespace' => management_groups_namespace,'managementGroupName' => management_group_name},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$orderby' => order_by,'$select' => select,'$from' => from,'$to' => to,'$filter' => filter,'$apply' => apply},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2017_10_17_preview::Models::PolicyEventsQueryResults.mapper()
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
    # Queries policy events for the resources under the subscription.
    #
    # @param subscription_id [String] Microsoft Azure subscription ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyEventsQueryResults] operation results.
    #
    def list_query_results_for_subscription(subscription_id, query_options:nil, custom_headers:nil)
      response = list_query_results_for_subscription_async(subscription_id, query_options:query_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Queries policy events for the resources under the subscription.
    #
    # @param subscription_id [String] Microsoft Azure subscription ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_subscription_with_http_info(subscription_id, query_options:nil, custom_headers:nil)
      list_query_results_for_subscription_async(subscription_id, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Queries policy events for the resources under the subscription.
    #
    # @param subscription_id [String] Microsoft Azure subscription ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_subscription_async(subscription_id, query_options:nil, custom_headers:nil)
      policy_events_resource = 'default'
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      top = nil
      order_by = nil
      select = nil
      from = nil
      to = nil
      filter = nil
      apply = nil
      unless query_options.nil?
        top = query_options.Top
      end
      unless query_options.nil?
        order_by = query_options.OrderBy
      end
      unless query_options.nil?
        select = query_options.Select
      end
      unless query_options.nil?
        from = query_options.From
      end
      unless query_options.nil?
        to = query_options.To
      end
      unless query_options.nil?
        filter = query_options.Filter
      end
      unless query_options.nil?
        apply = query_options.Apply
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.PolicyInsights/policyEvents/{policyEventsResource}/queryResults'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'policyEventsResource' => policy_events_resource,'subscriptionId' => subscription_id},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$orderby' => order_by,'$select' => select,'$from' => from,'$to' => to,'$filter' => filter,'$apply' => apply},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2017_10_17_preview::Models::PolicyEventsQueryResults.mapper()
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
    # Queries policy events for the resources under the resource group.
    #
    # @param subscription_id [String] Microsoft Azure subscription ID.
    # @param resource_group_name [String] Resource group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyEventsQueryResults] operation results.
    #
    def list_query_results_for_resource_group(subscription_id, resource_group_name, query_options:nil, custom_headers:nil)
      response = list_query_results_for_resource_group_async(subscription_id, resource_group_name, query_options:query_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Queries policy events for the resources under the resource group.
    #
    # @param subscription_id [String] Microsoft Azure subscription ID.
    # @param resource_group_name [String] Resource group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_resource_group_with_http_info(subscription_id, resource_group_name, query_options:nil, custom_headers:nil)
      list_query_results_for_resource_group_async(subscription_id, resource_group_name, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Queries policy events for the resources under the resource group.
    #
    # @param subscription_id [String] Microsoft Azure subscription ID.
    # @param resource_group_name [String] Resource group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_resource_group_async(subscription_id, resource_group_name, query_options:nil, custom_headers:nil)
      policy_events_resource = 'default'
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      top = nil
      order_by = nil
      select = nil
      from = nil
      to = nil
      filter = nil
      apply = nil
      unless query_options.nil?
        top = query_options.Top
      end
      unless query_options.nil?
        order_by = query_options.OrderBy
      end
      unless query_options.nil?
        select = query_options.Select
      end
      unless query_options.nil?
        from = query_options.From
      end
      unless query_options.nil?
        to = query_options.To
      end
      unless query_options.nil?
        filter = query_options.Filter
      end
      unless query_options.nil?
        apply = query_options.Apply
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PolicyInsights/policyEvents/{policyEventsResource}/queryResults'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'policyEventsResource' => policy_events_resource,'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$orderby' => order_by,'$select' => select,'$from' => from,'$to' => to,'$filter' => filter,'$apply' => apply},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2017_10_17_preview::Models::PolicyEventsQueryResults.mapper()
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
    # Queries policy events for the resource.
    #
    # @param resource_id [String] Resource ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyEventsQueryResults] operation results.
    #
    def list_query_results_for_resource(resource_id, query_options:nil, custom_headers:nil)
      response = list_query_results_for_resource_async(resource_id, query_options:query_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Queries policy events for the resource.
    #
    # @param resource_id [String] Resource ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_resource_with_http_info(resource_id, query_options:nil, custom_headers:nil)
      list_query_results_for_resource_async(resource_id, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Queries policy events for the resource.
    #
    # @param resource_id [String] Resource ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_resource_async(resource_id, query_options:nil, custom_headers:nil)
      policy_events_resource = 'default'
      fail ArgumentError, 'resource_id is nil' if resource_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      top = nil
      order_by = nil
      select = nil
      from = nil
      to = nil
      filter = nil
      apply = nil
      unless query_options.nil?
        top = query_options.Top
      end
      unless query_options.nil?
        order_by = query_options.OrderBy
      end
      unless query_options.nil?
        select = query_options.Select
      end
      unless query_options.nil?
        from = query_options.From
      end
      unless query_options.nil?
        to = query_options.To
      end
      unless query_options.nil?
        filter = query_options.Filter
      end
      unless query_options.nil?
        apply = query_options.Apply
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceId}/providers/Microsoft.PolicyInsights/policyEvents/{policyEventsResource}/queryResults'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'policyEventsResource' => policy_events_resource},
          skip_encoding_path_params: {'resourceId' => resource_id},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$orderby' => order_by,'$select' => select,'$from' => from,'$to' => to,'$filter' => filter,'$apply' => apply},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2017_10_17_preview::Models::PolicyEventsQueryResults.mapper()
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
    # Gets OData metadata XML document.
    #
    # @param scope [String] A valid scope, i.e. management group, subscription,
    # resource group, or resource ID. Scope used has no effect on metadata
    # returned.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [String] operation results.
    #
    def get_metadata(scope, custom_headers:nil)
      response = get_metadata_async(scope, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets OData metadata XML document.
    #
    # @param scope [String] A valid scope, i.e. management group, subscription,
    # resource group, or resource ID. Scope used has no effect on metadata
    # returned.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_metadata_with_http_info(scope, custom_headers:nil)
      get_metadata_async(scope, custom_headers:custom_headers).value!
    end

    #
    # Gets OData metadata XML document.
    #
    # @param scope [String] A valid scope, i.e. management group, subscription,
    # resource group, or resource ID. Scope used has no effect on metadata
    # returned.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_metadata_async(scope, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.PolicyInsights/policyEvents/$metadata'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'scope' => scope},
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
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'String'
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

  end
end
