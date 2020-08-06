# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_11_27_preview
  #
  # API to manage VM Insights Onboarding
  #
  class VMInsights
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VMInsights class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MonitorManagementClient] reference to the MonitorManagementClient
    attr_reader :client

    #
    # Retrieves the VM Insights onboarding status for the specified resource or
    # resource scope.
    #
    # @param resource_uri [String] The fully qualified Azure Resource manager
    # identifier of the resource, or scope, whose status to retrieve.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VMInsightsOnboardingStatus] operation results.
    #
    def get_onboarding_status(resource_uri, custom_headers:nil)
      response = get_onboarding_status_async(resource_uri, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves the VM Insights onboarding status for the specified resource or
    # resource scope.
    #
    # @param resource_uri [String] The fully qualified Azure Resource manager
    # identifier of the resource, or scope, whose status to retrieve.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_onboarding_status_with_http_info(resource_uri, custom_headers:nil)
      get_onboarding_status_async(resource_uri, custom_headers:custom_headers).value!
    end

    #
    # Retrieves the VM Insights onboarding status for the specified resource or
    # resource scope.
    #
    # @param resource_uri [String] The fully qualified Azure Resource manager
    # identifier of the resource, or scope, whose status to retrieve.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_onboarding_status_async(resource_uri, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceUri}/providers/Microsoft.Insights/vmInsightsOnboardingStatuses/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'resourceUri' => resource_uri},
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
            result_mapper = Azure::Monitor::Mgmt::V2018_11_27_preview::Models::VMInsightsOnboardingStatus.mapper()
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
