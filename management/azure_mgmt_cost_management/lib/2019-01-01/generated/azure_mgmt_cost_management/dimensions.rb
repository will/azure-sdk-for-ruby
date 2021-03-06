# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_01_01
  #
  # Dimensions
  #
  class Dimensions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Dimensions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CostManagementClient] reference to the CostManagementClient
    attr_reader :client

    #
    # Lists the dimensions by the defined scope.
    #
    # @param scope [String] The scope associated with dimension operations. This
    # includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for
    # resourceGroup scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}'
    # for Department scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}'
    # for EnrollmentAccount scope and
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope..
    # @param filter [String] May be used to filter dimensions by
    # properties/category, properties/usageStart, properties/usageEnd. Supported
    # operators are 'eq','lt', 'gt', 'le', 'ge'.
    # @param expand [String] May be used to expand the properties/data within a
    # dimension category. By default, data is not included when listing dimensions.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N dimension data.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DimensionsListResult] operation results.
    #
    def list_by_subscription(scope, filter:nil, expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      response = list_by_subscription_async(scope, filter:filter, expand:expand, skiptoken:skiptoken, top:top, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the dimensions by the defined scope.
    #
    # @param scope [String] The scope associated with dimension operations. This
    # includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for
    # resourceGroup scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}'
    # for Department scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}'
    # for EnrollmentAccount scope and
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope..
    # @param filter [String] May be used to filter dimensions by
    # properties/category, properties/usageStart, properties/usageEnd. Supported
    # operators are 'eq','lt', 'gt', 'le', 'ge'.
    # @param expand [String] May be used to expand the properties/data within a
    # dimension category. By default, data is not included when listing dimensions.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N dimension data.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_subscription_with_http_info(scope, filter:nil, expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      list_by_subscription_async(scope, filter:filter, expand:expand, skiptoken:skiptoken, top:top, custom_headers:custom_headers).value!
    end

    #
    # Lists the dimensions by the defined scope.
    #
    # @param scope [String] The scope associated with dimension operations. This
    # includes '/subscriptions/{subscriptionId}/' for subscription scope,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for
    # resourceGroup scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing
    # Account scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}'
    # for Department scope,
    # '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}'
    # for EnrollmentAccount scope and
    # '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for
    # Management Group scope..
    # @param filter [String] May be used to filter dimensions by
    # properties/category, properties/usageStart, properties/usageEnd. Supported
    # operators are 'eq','lt', 'gt', 'le', 'ge'.
    # @param expand [String] May be used to expand the properties/data within a
    # dimension category. By default, data is not included when listing dimensions.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the most
    # recent N dimension data.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_subscription_async(scope, filter:nil, expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMaximum': '1000'" if !top.nil? && top > 1000
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.CostManagement/dimensions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'scope' => scope},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$expand' => expand,'$skiptoken' => skiptoken,'$top' => top},
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_01_01::Models::DimensionsListResult.mapper()
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
