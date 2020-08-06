# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class Tags
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Tags class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Get all available tag keys for the defined scope
    #
    # @param scope [String] The scope associated with tags operations. This
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
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TagsResult] operation results.
    #
    def get(scope, custom_headers:nil)
      response = get_async(scope, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all available tag keys for the defined scope
    #
    # @param scope [String] The scope associated with tags operations. This
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
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(scope, custom_headers:nil)
      get_async(scope, custom_headers:custom_headers).value!
    end

    #
    # Get all available tag keys for the defined scope
    #
    # @param scope [String] The scope associated with tags operations. This
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
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(scope, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.Consumption/tags'

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
            result_mapper = Azure::Consumption::Mgmt::V2019_10_01::Models::TagsResult.mapper()
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
