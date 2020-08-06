# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_03_31
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class UsageDetailsByBillingAccount
    include MsRestAzure

    #
    # Creates and initializes a new instance of the UsageDetailsByBillingAccount class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Lists the usage details by billingAccountId for a scope by current billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param expand [String] May be used to expand the
    # properties/additionalProperties or properties/meterDetails within a list of
    # usage details. By default, these fields are not included when listing usage
    # details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/usageEnd (Utc time), properties/usageStart (Utc time),
    # properties/resourceGroup, properties/instanceName, properties/instanceId or
    # tags. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does
    # not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair
    # string where key and value is separated by a colon (:).
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<UsageDetail>] operation results.
    #
    def list(billing_account_id, expand:nil, filter:nil, skiptoken:nil, top:nil, query_options:nil, custom_headers:nil)
      first_page = list_as_lazy(billing_account_id, expand:expand, filter:filter, skiptoken:skiptoken, top:top, query_options:query_options, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the usage details by billingAccountId for a scope by current billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param expand [String] May be used to expand the
    # properties/additionalProperties or properties/meterDetails within a list of
    # usage details. By default, these fields are not included when listing usage
    # details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/usageEnd (Utc time), properties/usageStart (Utc time),
    # properties/resourceGroup, properties/instanceName, properties/instanceId or
    # tags. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does
    # not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair
    # string where key and value is separated by a colon (:).
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(billing_account_id, expand:nil, filter:nil, skiptoken:nil, top:nil, query_options:nil, custom_headers:nil)
      list_async(billing_account_id, expand:expand, filter:filter, skiptoken:skiptoken, top:top, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Lists the usage details by billingAccountId for a scope by current billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param expand [String] May be used to expand the
    # properties/additionalProperties or properties/meterDetails within a list of
    # usage details. By default, these fields are not included when listing usage
    # details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/usageEnd (Utc time), properties/usageStart (Utc time),
    # properties/resourceGroup, properties/instanceName, properties/instanceId or
    # tags. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does
    # not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair
    # string where key and value is separated by a colon (:).
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(billing_account_id, expand:nil, filter:nil, skiptoken:nil, top:nil, query_options:nil, custom_headers:nil)
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMaximum': '1000'" if !top.nil? && top > 1000
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      apply = nil
      unless query_options.nil?
        apply = query_options.Apply
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/providers/Microsoft.Consumption/usageDetails'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id},
          query_params: {'$expand' => expand,'$filter' => filter,'$skiptoken' => skiptoken,'$top' => top,'api-version' => @client.api_version,'$apply' => apply},
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
            result_mapper = Azure::Consumption::Mgmt::V2018_03_31::Models::UsageDetailsListResult.mapper()
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
    # Lists the usage details based on billingAccountId for a scope by billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param billing_period_name [String] Billing Period Name.
    # @param expand [String] May be used to expand the
    # properties/additionalProperties or properties/meterDetails within a list of
    # usage details. By default, these fields are not included when listing usage
    # details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/usageEnd (Utc time), properties/usageStart (Utc time),
    # properties/resourceGroup, properties/instanceName or properties/instanceId.
    # The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not
    # currently support 'ne', 'or', or 'not'. Tag filter is a key value pair string
    # where key and value is separated by a colon (:).
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<UsageDetail>] operation results.
    #
    def list_by_billing_period(billing_account_id, billing_period_name, expand:nil, filter:nil, skiptoken:nil, top:nil, query_options:nil, custom_headers:nil)
      first_page = list_by_billing_period_as_lazy(billing_account_id, billing_period_name, expand:expand, filter:filter, skiptoken:skiptoken, top:top, query_options:query_options, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the usage details based on billingAccountId for a scope by billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param billing_period_name [String] Billing Period Name.
    # @param expand [String] May be used to expand the
    # properties/additionalProperties or properties/meterDetails within a list of
    # usage details. By default, these fields are not included when listing usage
    # details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/usageEnd (Utc time), properties/usageStart (Utc time),
    # properties/resourceGroup, properties/instanceName or properties/instanceId.
    # The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not
    # currently support 'ne', 'or', or 'not'. Tag filter is a key value pair string
    # where key and value is separated by a colon (:).
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_billing_period_with_http_info(billing_account_id, billing_period_name, expand:nil, filter:nil, skiptoken:nil, top:nil, query_options:nil, custom_headers:nil)
      list_by_billing_period_async(billing_account_id, billing_period_name, expand:expand, filter:filter, skiptoken:skiptoken, top:top, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Lists the usage details based on billingAccountId for a scope by billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param billing_period_name [String] Billing Period Name.
    # @param expand [String] May be used to expand the
    # properties/additionalProperties or properties/meterDetails within a list of
    # usage details. By default, these fields are not included when listing usage
    # details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/usageEnd (Utc time), properties/usageStart (Utc time),
    # properties/resourceGroup, properties/instanceName or properties/instanceId.
    # The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not
    # currently support 'ne', 'or', or 'not'. Tag filter is a key value pair string
    # where key and value is separated by a colon (:).
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_billing_period_async(billing_account_id, billing_period_name, expand:nil, filter:nil, skiptoken:nil, top:nil, query_options:nil, custom_headers:nil)
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?
      fail ArgumentError, 'billing_period_name is nil' if billing_period_name.nil?
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMaximum': '1000'" if !top.nil? && top > 1000
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      apply = nil
      unless query_options.nil?
        apply = query_options.Apply
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}/providers/Microsoft.Consumption/usageDetails'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id,'billingPeriodName' => billing_period_name},
          query_params: {'$expand' => expand,'$filter' => filter,'$skiptoken' => skiptoken,'$top' => top,'api-version' => @client.api_version,'$apply' => apply},
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
            result_mapper = Azure::Consumption::Mgmt::V2018_03_31::Models::UsageDetailsListResult.mapper()
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
    # Lists the usage details by billingAccountId for a scope by current billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UsageDetailsListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the usage details by billingAccountId for a scope by current billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
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
    # Lists the usage details by billingAccountId for a scope by current billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
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
            result_mapper = Azure::Consumption::Mgmt::V2018_03_31::Models::UsageDetailsListResult.mapper()
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
    # Lists the usage details based on billingAccountId for a scope by billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UsageDetailsListResult] operation results.
    #
    def list_by_billing_period_next(next_page_link, custom_headers:nil)
      response = list_by_billing_period_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the usage details based on billingAccountId for a scope by billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_billing_period_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_billing_period_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the usage details based on billingAccountId for a scope by billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_billing_period_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::Consumption::Mgmt::V2018_03_31::Models::UsageDetailsListResult.mapper()
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
    # Lists the usage details by billingAccountId for a scope by current billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param expand [String] May be used to expand the
    # properties/additionalProperties or properties/meterDetails within a list of
    # usage details. By default, these fields are not included when listing usage
    # details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/usageEnd (Utc time), properties/usageStart (Utc time),
    # properties/resourceGroup, properties/instanceName, properties/instanceId or
    # tags. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does
    # not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair
    # string where key and value is separated by a colon (:).
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UsageDetailsListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(billing_account_id, expand:nil, filter:nil, skiptoken:nil, top:nil, query_options:nil, custom_headers:nil)
      response = list_async(billing_account_id, expand:expand, filter:filter, skiptoken:skiptoken, top:top, query_options:query_options, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Lists the usage details based on billingAccountId for a scope by billing
    # period. Usage details are available via this API only for May 1, 2014 or
    # later.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param billing_period_name [String] Billing Period Name.
    # @param expand [String] May be used to expand the
    # properties/additionalProperties or properties/meterDetails within a list of
    # usage details. By default, these fields are not included when listing usage
    # details.
    # @param filter [String] May be used to filter usageDetails by
    # properties/usageEnd (Utc time), properties/usageStart (Utc time),
    # properties/resourceGroup, properties/instanceName or properties/instanceId.
    # The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not
    # currently support 'ne', 'or', or 'not'. Tag filter is a key value pair string
    # where key and value is separated by a colon (:).
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N usageDetails.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UsageDetailsListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_billing_period_as_lazy(billing_account_id, billing_period_name, expand:nil, filter:nil, skiptoken:nil, top:nil, query_options:nil, custom_headers:nil)
      response = list_by_billing_period_async(billing_account_id, billing_period_name, expand:expand, filter:filter, skiptoken:skiptoken, top:top, query_options:query_options, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_billing_period_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
