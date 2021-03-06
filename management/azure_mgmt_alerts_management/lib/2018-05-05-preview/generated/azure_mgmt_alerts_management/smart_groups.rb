# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05_preview
  #
  # AlertsManagement Client
  #
  class SmartGroups
    include MsRestAzure

    #
    # Creates and initializes a new instance of the SmartGroups class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AlertsManagementClient] reference to the AlertsManagementClient
    attr_reader :client

    #
    # Get all smartGroups within the subscription
    #
    # List all the smartGroups within the specified subscription.
    #
    # @param target_resource [String] filter by target resource
    # @param target_resource_group [String] filter by target resource group name
    # @param target_resource_type [String] filter by target resource type
    # @param monitor_condition [MonitorCondition] filter by monitor condition which
    # is the state of the alert at monitor service. Possible values include:
    # 'Fired', 'Resolved'
    # @param severity [Severity] filter by severity. Possible values include:
    # 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
    # @param smart_group_state [AlertState] filter by state. Possible values
    # include: 'New', 'Acknowledged', 'Closed'
    # @param time_range [TimeRange] filter by time range, default value is 1 day.
    # Possible values include: '1h', '1d', '7d', '30d'
    # @param page_count [Integer] number of items per page, default value is '25'.
    # @param sort_by [SmartGroupsSortByFields] sort the query results by input
    # field, default value is 'lastModifiedDateTime'. Possible values include:
    # 'alertsCount', 'state', 'severity', 'startDateTime', 'lastModifiedDateTime'
    # @param sort_order [Enum] sort the query results order in either ascending or
    # descending, default value is 'desc' for time fields and 'asc' for others.
    # Possible values include: 'asc', 'desc'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroupsList] operation results.
    #
    def get_all(target_resource:nil, target_resource_group:nil, target_resource_type:nil, monitor_condition:nil, severity:nil, smart_group_state:nil, time_range:nil, page_count:nil, sort_by:nil, sort_order:nil, custom_headers:nil)
      response = get_all_async(target_resource:target_resource, target_resource_group:target_resource_group, target_resource_type:target_resource_type, monitor_condition:monitor_condition, severity:severity, smart_group_state:smart_group_state, time_range:time_range, page_count:page_count, sort_by:sort_by, sort_order:sort_order, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all smartGroups within the subscription
    #
    # List all the smartGroups within the specified subscription.
    #
    # @param target_resource [String] filter by target resource
    # @param target_resource_group [String] filter by target resource group name
    # @param target_resource_type [String] filter by target resource type
    # @param monitor_condition [MonitorCondition] filter by monitor condition which
    # is the state of the alert at monitor service. Possible values include:
    # 'Fired', 'Resolved'
    # @param severity [Severity] filter by severity. Possible values include:
    # 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
    # @param smart_group_state [AlertState] filter by state. Possible values
    # include: 'New', 'Acknowledged', 'Closed'
    # @param time_range [TimeRange] filter by time range, default value is 1 day.
    # Possible values include: '1h', '1d', '7d', '30d'
    # @param page_count [Integer] number of items per page, default value is '25'.
    # @param sort_by [SmartGroupsSortByFields] sort the query results by input
    # field, default value is 'lastModifiedDateTime'. Possible values include:
    # 'alertsCount', 'state', 'severity', 'startDateTime', 'lastModifiedDateTime'
    # @param sort_order [Enum] sort the query results order in either ascending or
    # descending, default value is 'desc' for time fields and 'asc' for others.
    # Possible values include: 'asc', 'desc'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_all_with_http_info(target_resource:nil, target_resource_group:nil, target_resource_type:nil, monitor_condition:nil, severity:nil, smart_group_state:nil, time_range:nil, page_count:nil, sort_by:nil, sort_order:nil, custom_headers:nil)
      get_all_async(target_resource:target_resource, target_resource_group:target_resource_group, target_resource_type:target_resource_type, monitor_condition:monitor_condition, severity:severity, smart_group_state:smart_group_state, time_range:time_range, page_count:page_count, sort_by:sort_by, sort_order:sort_order, custom_headers:custom_headers).value!
    end

    #
    # Get all smartGroups within the subscription
    #
    # List all the smartGroups within the specified subscription.
    #
    # @param target_resource [String] filter by target resource
    # @param target_resource_group [String] filter by target resource group name
    # @param target_resource_type [String] filter by target resource type
    # @param monitor_condition [MonitorCondition] filter by monitor condition which
    # is the state of the alert at monitor service. Possible values include:
    # 'Fired', 'Resolved'
    # @param severity [Severity] filter by severity. Possible values include:
    # 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
    # @param smart_group_state [AlertState] filter by state. Possible values
    # include: 'New', 'Acknowledged', 'Closed'
    # @param time_range [TimeRange] filter by time range, default value is 1 day.
    # Possible values include: '1h', '1d', '7d', '30d'
    # @param page_count [Integer] number of items per page, default value is '25'.
    # @param sort_by [SmartGroupsSortByFields] sort the query results by input
    # field, default value is 'lastModifiedDateTime'. Possible values include:
    # 'alertsCount', 'state', 'severity', 'startDateTime', 'lastModifiedDateTime'
    # @param sort_order [Enum] sort the query results order in either ascending or
    # descending, default value is 'desc' for time fields and 'asc' for others.
    # Possible values include: 'asc', 'desc'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_all_async(target_resource:nil, target_resource_group:nil, target_resource_type:nil, monitor_condition:nil, severity:nil, smart_group_state:nil, time_range:nil, page_count:nil, sort_by:nil, sort_order:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.AlertsManagement/smartGroups'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'targetResource' => target_resource,'targetResourceGroup' => target_resource_group,'targetResourceType' => target_resource_type,'monitorService' => @client.monitor_service,'monitorCondition' => monitor_condition,'severity' => severity,'smartGroupState' => smart_group_state,'timeRange' => time_range,'pageCount' => page_count,'sortBy' => sort_by,'sortOrder' => sort_order,'api-version' => @client.api_version},
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
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupsList.mapper()
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
    # Get information of smart alerts group.
    #
    # Get details of smart group.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroup] operation results.
    #
    def get_by_id(smart_group_id, custom_headers:nil)
      response = get_by_id_async(smart_group_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get information of smart alerts group.
    #
    # Get details of smart group.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_id_with_http_info(smart_group_id, custom_headers:nil)
      get_by_id_async(smart_group_id, custom_headers:custom_headers).value!
    end

    #
    # Get information of smart alerts group.
    #
    # Get details of smart group.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_id_async(smart_group_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'smart_group_id is nil' if smart_group_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.AlertsManagement/smartGroups/{smartGroupId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'smartGroupId' => smart_group_id},
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
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroup.mapper()
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
    # Change the state from unresolved to resolved and all the alerts within the
    # smart group will also be resolved.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param new_state [AlertState] filter by state. Possible values include:
    # 'New', 'Acknowledged', 'Closed'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroup] operation results.
    #
    def change_state(smart_group_id, new_state, custom_headers:nil)
      response = change_state_async(smart_group_id, new_state, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Change the state from unresolved to resolved and all the alerts within the
    # smart group will also be resolved.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param new_state [AlertState] filter by state. Possible values include:
    # 'New', 'Acknowledged', 'Closed'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def change_state_with_http_info(smart_group_id, new_state, custom_headers:nil)
      change_state_async(smart_group_id, new_state, custom_headers:custom_headers).value!
    end

    #
    # Change the state from unresolved to resolved and all the alerts within the
    # smart group will also be resolved.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param new_state [AlertState] filter by state. Possible values include:
    # 'New', 'Acknowledged', 'Closed'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def change_state_async(smart_group_id, new_state, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'smart_group_id is nil' if smart_group_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'new_state is nil' if new_state.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.AlertsManagement/smartGroups/{smartGroupId}/changeState'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'smartGroupId' => smart_group_id},
          query_params: {'api-version' => @client.api_version,'newState' => new_state},
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
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroup.mapper()
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
    # Get the history of the changes of smart group.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SmartGroupModification] operation results.
    #
    def get_history(smart_group_id, custom_headers:nil)
      response = get_history_async(smart_group_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the history of the changes of smart group.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_history_with_http_info(smart_group_id, custom_headers:nil)
      get_history_async(smart_group_id, custom_headers:custom_headers).value!
    end

    #
    # Get the history of the changes of smart group.
    #
    # @param smart_group_id [String] Smart Group Id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_history_async(smart_group_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'smart_group_id is nil' if smart_group_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.AlertsManagement/smartGroups/{smartGroupId}/history'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'smartGroupId' => smart_group_id},
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
            result_mapper = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModification.mapper()
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
