# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_04_01
  #
  # Monitor Management Client
  #
  class TenantActivityLogs
    include MsRestAzure

    #
    # Creates and initializes a new instance of the TenantActivityLogs class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MonitorManagementClient] reference to the MonitorManagementClient
    attr_reader :client

    #
    # Gets the Activity Logs for the Tenant.<br>Everything that is applicable to
    # the API to get the Activity Logs for the subscription is applicable to this
    # API (the parameters, $filter, etc.).<br>One thing to point out here is that
    # this API does *not* retrieve the logs at the individual subscription of the
    # tenant but only surfaces the logs that were generated at the tenant level.
    #
    # @param filter [String] Reduces the set of data collected. <br>The **$filter**
    # is very restricted and allows only the following patterns.<br>- List events
    # for a resource group: $filter=eventTimestamp ge '<Start Time>' and
    # eventTimestamp le '<End Time>' and eventChannels eq 'Admin, Operation' and
    # resourceGroupName eq '<ResourceGroupName>'.<br>- List events for resource:
    # $filter=eventTimestamp ge '<Start Time>' and eventTimestamp le '<End Time>'
    # and eventChannels eq 'Admin, Operation' and resourceUri eq
    # '<ResourceURI>'.<br>- List events for a subscription: $filter=eventTimestamp
    # ge '<Start Time>' and eventTimestamp le '<End Time>' and eventChannels eq
    # 'Admin, Operation'.<br>- List events for a resource provider:
    # $filter=eventTimestamp ge '<Start Time>' and eventTimestamp le '<End Time>'
    # and eventChannels eq 'Admin, Operation' and resourceProvider eq
    # '<ResourceProviderName>'.<br>- List events for a correlation Id:
    # api-version=2014-04-01&$filter=eventTimestamp ge
    # '2014-07-16T04:36:37.6407898Z' and eventTimestamp le
    # '2014-07-20T04:36:37.6407898Z' and eventChannels eq 'Admin, Operation' and
    # correlationId eq '<CorrelationID>'.<br>**NOTE**: No other syntax is allowed.
    # @param select [String] Used to fetch events with only the given
    # properties.<br>The **$select** argument is a comma separated list of property
    # names to be returned. Possible values are: *authorization*, *claims*,
    # *correlationId*, *description*, *eventDataId*, *eventName*, *eventTimestamp*,
    # *httpRequest*, *level*, *operationId*, *operationName*, *properties*,
    # *resourceGroupName*, *resourceProviderName*, *resourceId*, *status*,
    # *submissionTimestamp*, *subStatus*, *subscriptionId*
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<EventData>] operation results.
    #
    def list(filter:nil, select:nil, custom_headers:nil)
      first_page = list_as_lazy(filter:filter, select:select, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets the Activity Logs for the Tenant.<br>Everything that is applicable to
    # the API to get the Activity Logs for the subscription is applicable to this
    # API (the parameters, $filter, etc.).<br>One thing to point out here is that
    # this API does *not* retrieve the logs at the individual subscription of the
    # tenant but only surfaces the logs that were generated at the tenant level.
    #
    # @param filter [String] Reduces the set of data collected. <br>The **$filter**
    # is very restricted and allows only the following patterns.<br>- List events
    # for a resource group: $filter=eventTimestamp ge '<Start Time>' and
    # eventTimestamp le '<End Time>' and eventChannels eq 'Admin, Operation' and
    # resourceGroupName eq '<ResourceGroupName>'.<br>- List events for resource:
    # $filter=eventTimestamp ge '<Start Time>' and eventTimestamp le '<End Time>'
    # and eventChannels eq 'Admin, Operation' and resourceUri eq
    # '<ResourceURI>'.<br>- List events for a subscription: $filter=eventTimestamp
    # ge '<Start Time>' and eventTimestamp le '<End Time>' and eventChannels eq
    # 'Admin, Operation'.<br>- List events for a resource provider:
    # $filter=eventTimestamp ge '<Start Time>' and eventTimestamp le '<End Time>'
    # and eventChannels eq 'Admin, Operation' and resourceProvider eq
    # '<ResourceProviderName>'.<br>- List events for a correlation Id:
    # api-version=2014-04-01&$filter=eventTimestamp ge
    # '2014-07-16T04:36:37.6407898Z' and eventTimestamp le
    # '2014-07-20T04:36:37.6407898Z' and eventChannels eq 'Admin, Operation' and
    # correlationId eq '<CorrelationID>'.<br>**NOTE**: No other syntax is allowed.
    # @param select [String] Used to fetch events with only the given
    # properties.<br>The **$select** argument is a comma separated list of property
    # names to be returned. Possible values are: *authorization*, *claims*,
    # *correlationId*, *description*, *eventDataId*, *eventName*, *eventTimestamp*,
    # *httpRequest*, *level*, *operationId*, *operationName*, *properties*,
    # *resourceGroupName*, *resourceProviderName*, *resourceId*, *status*,
    # *submissionTimestamp*, *subStatus*, *subscriptionId*
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(filter:nil, select:nil, custom_headers:nil)
      list_async(filter:filter, select:select, custom_headers:custom_headers).value!
    end

    #
    # Gets the Activity Logs for the Tenant.<br>Everything that is applicable to
    # the API to get the Activity Logs for the subscription is applicable to this
    # API (the parameters, $filter, etc.).<br>One thing to point out here is that
    # this API does *not* retrieve the logs at the individual subscription of the
    # tenant but only surfaces the logs that were generated at the tenant level.
    #
    # @param filter [String] Reduces the set of data collected. <br>The **$filter**
    # is very restricted and allows only the following patterns.<br>- List events
    # for a resource group: $filter=eventTimestamp ge '<Start Time>' and
    # eventTimestamp le '<End Time>' and eventChannels eq 'Admin, Operation' and
    # resourceGroupName eq '<ResourceGroupName>'.<br>- List events for resource:
    # $filter=eventTimestamp ge '<Start Time>' and eventTimestamp le '<End Time>'
    # and eventChannels eq 'Admin, Operation' and resourceUri eq
    # '<ResourceURI>'.<br>- List events for a subscription: $filter=eventTimestamp
    # ge '<Start Time>' and eventTimestamp le '<End Time>' and eventChannels eq
    # 'Admin, Operation'.<br>- List events for a resource provider:
    # $filter=eventTimestamp ge '<Start Time>' and eventTimestamp le '<End Time>'
    # and eventChannels eq 'Admin, Operation' and resourceProvider eq
    # '<ResourceProviderName>'.<br>- List events for a correlation Id:
    # api-version=2014-04-01&$filter=eventTimestamp ge
    # '2014-07-16T04:36:37.6407898Z' and eventTimestamp le
    # '2014-07-20T04:36:37.6407898Z' and eventChannels eq 'Admin, Operation' and
    # correlationId eq '<CorrelationID>'.<br>**NOTE**: No other syntax is allowed.
    # @param select [String] Used to fetch events with only the given
    # properties.<br>The **$select** argument is a comma separated list of property
    # names to be returned. Possible values are: *authorization*, *claims*,
    # *correlationId*, *description*, *eventDataId*, *eventName*, *eventTimestamp*,
    # *httpRequest*, *level*, *operationId*, *operationName*, *properties*,
    # *resourceGroupName*, *resourceProviderName*, *resourceId*, *status*,
    # *submissionTimestamp*, *subStatus*, *subscriptionId*
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(filter:nil, select:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/microsoft.insights/eventtypes/management/values'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$select' => select},
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
            result_mapper = Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection.mapper()
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
    # Gets the Activity Logs for the Tenant.<br>Everything that is applicable to
    # the API to get the Activity Logs for the subscription is applicable to this
    # API (the parameters, $filter, etc.).<br>One thing to point out here is that
    # this API does *not* retrieve the logs at the individual subscription of the
    # tenant but only surfaces the logs that were generated at the tenant level.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EventDataCollection] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the Activity Logs for the Tenant.<br>Everything that is applicable to
    # the API to get the Activity Logs for the subscription is applicable to this
    # API (the parameters, $filter, etc.).<br>One thing to point out here is that
    # this API does *not* retrieve the logs at the individual subscription of the
    # tenant but only surfaces the logs that were generated at the tenant level.
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
    # Gets the Activity Logs for the Tenant.<br>Everything that is applicable to
    # the API to get the Activity Logs for the subscription is applicable to this
    # API (the parameters, $filter, etc.).<br>One thing to point out here is that
    # this API does *not* retrieve the logs at the individual subscription of the
    # tenant but only surfaces the logs that were generated at the tenant level.
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection.mapper()
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
    # Gets the Activity Logs for the Tenant.<br>Everything that is applicable to
    # the API to get the Activity Logs for the subscription is applicable to this
    # API (the parameters, $filter, etc.).<br>One thing to point out here is that
    # this API does *not* retrieve the logs at the individual subscription of the
    # tenant but only surfaces the logs that were generated at the tenant level.
    #
    # @param filter [String] Reduces the set of data collected. <br>The **$filter**
    # is very restricted and allows only the following patterns.<br>- List events
    # for a resource group: $filter=eventTimestamp ge '<Start Time>' and
    # eventTimestamp le '<End Time>' and eventChannels eq 'Admin, Operation' and
    # resourceGroupName eq '<ResourceGroupName>'.<br>- List events for resource:
    # $filter=eventTimestamp ge '<Start Time>' and eventTimestamp le '<End Time>'
    # and eventChannels eq 'Admin, Operation' and resourceUri eq
    # '<ResourceURI>'.<br>- List events for a subscription: $filter=eventTimestamp
    # ge '<Start Time>' and eventTimestamp le '<End Time>' and eventChannels eq
    # 'Admin, Operation'.<br>- List events for a resource provider:
    # $filter=eventTimestamp ge '<Start Time>' and eventTimestamp le '<End Time>'
    # and eventChannels eq 'Admin, Operation' and resourceProvider eq
    # '<ResourceProviderName>'.<br>- List events for a correlation Id:
    # api-version=2014-04-01&$filter=eventTimestamp ge
    # '2014-07-16T04:36:37.6407898Z' and eventTimestamp le
    # '2014-07-20T04:36:37.6407898Z' and eventChannels eq 'Admin, Operation' and
    # correlationId eq '<CorrelationID>'.<br>**NOTE**: No other syntax is allowed.
    # @param select [String] Used to fetch events with only the given
    # properties.<br>The **$select** argument is a comma separated list of property
    # names to be returned. Possible values are: *authorization*, *claims*,
    # *correlationId*, *description*, *eventDataId*, *eventName*, *eventTimestamp*,
    # *httpRequest*, *level*, *operationId*, *operationName*, *properties*,
    # *resourceGroupName*, *resourceProviderName*, *resourceId*, *status*,
    # *submissionTimestamp*, *subStatus*, *subscriptionId*
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EventDataCollection] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(filter:nil, select:nil, custom_headers:nil)
      response = list_async(filter:filter, select:select, custom_headers:custom_headers).value!
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
