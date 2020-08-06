# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_04_01_preview
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class AggregatedCost
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AggregatedCost class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Provides the aggregate cost of a management group and all child management
    # groups by current billing period.
    #
    # @param management_group_id [String] Azure Management Group ID.
    # @param filter [String] May be used to filter aggregated cost by
    # properties/usageStart (Utc time), properties/usageEnd (Utc time). The filter
    # supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not currently
    # support 'ne', 'or', or 'not'. Tag filter is a key value pair string where key
    # and value is separated by a colon (:).
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagementGroupAggregatedCostResult] operation results.
    #
    def get_by_management_group(management_group_id, filter:nil, custom_headers:nil)
      response = get_by_management_group_async(management_group_id, filter:filter, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Provides the aggregate cost of a management group and all child management
    # groups by current billing period.
    #
    # @param management_group_id [String] Azure Management Group ID.
    # @param filter [String] May be used to filter aggregated cost by
    # properties/usageStart (Utc time), properties/usageEnd (Utc time). The filter
    # supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not currently
    # support 'ne', 'or', or 'not'. Tag filter is a key value pair string where key
    # and value is separated by a colon (:).
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_management_group_with_http_info(management_group_id, filter:nil, custom_headers:nil)
      get_by_management_group_async(management_group_id, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Provides the aggregate cost of a management group and all child management
    # groups by current billing period.
    #
    # @param management_group_id [String] Azure Management Group ID.
    # @param filter [String] May be used to filter aggregated cost by
    # properties/usageStart (Utc time), properties/usageEnd (Utc time). The filter
    # supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not currently
    # support 'ne', 'or', or 'not'. Tag filter is a key value pair string where key
    # and value is separated by a colon (:).
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_management_group_async(management_group_id, filter:nil, custom_headers:nil)
      fail ArgumentError, 'management_group_id is nil' if management_group_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Consumption/aggregatedcost'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'managementGroupId' => management_group_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2019_04_01_preview::Models::ManagementGroupAggregatedCostResult.mapper()
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
    # Provides the aggregate cost of a management group and all child management
    # groups by specified billing period
    #
    # @param management_group_id [String] Azure Management Group ID.
    # @param billing_period_name [String] Billing Period Name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagementGroupAggregatedCostResult] operation results.
    #
    def get_for_billing_period_by_management_group(management_group_id, billing_period_name, custom_headers:nil)
      response = get_for_billing_period_by_management_group_async(management_group_id, billing_period_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Provides the aggregate cost of a management group and all child management
    # groups by specified billing period
    #
    # @param management_group_id [String] Azure Management Group ID.
    # @param billing_period_name [String] Billing Period Name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_for_billing_period_by_management_group_with_http_info(management_group_id, billing_period_name, custom_headers:nil)
      get_for_billing_period_by_management_group_async(management_group_id, billing_period_name, custom_headers:custom_headers).value!
    end

    #
    # Provides the aggregate cost of a management group and all child management
    # groups by specified billing period
    #
    # @param management_group_id [String] Azure Management Group ID.
    # @param billing_period_name [String] Billing Period Name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_for_billing_period_by_management_group_async(management_group_id, billing_period_name, custom_headers:nil)
      fail ArgumentError, 'management_group_id is nil' if management_group_id.nil?
      fail ArgumentError, 'billing_period_name is nil' if billing_period_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}/Microsoft.Consumption/aggregatedcost'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'managementGroupId' => management_group_id,'billingPeriodName' => billing_period_name},
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
            result_mapper = Azure::Consumption::Mgmt::V2019_04_01_preview::Models::ManagementGroupAggregatedCostResult.mapper()
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
