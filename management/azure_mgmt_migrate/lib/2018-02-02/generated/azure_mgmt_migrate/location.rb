# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  #
  # Move your workloads to Azure.
  #
  class Location
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Location class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AzureMigrate] reference to the AzureMigrate
    attr_reader :client

    #
    # Checks whether the project name is available in the specified region.
    #
    # @param location_name [String] The desired region for the name check.
    # @param parameters [CheckNameAvailabilityParameters] Properties needed to
    # check the availability of a name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CheckNameAvailabilityResult] operation results.
    #
    def check_name_availability(location_name, parameters, custom_headers:nil)
      response = check_name_availability_async(location_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Checks whether the project name is available in the specified region.
    #
    # @param location_name [String] The desired region for the name check.
    # @param parameters [CheckNameAvailabilityParameters] Properties needed to
    # check the availability of a name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_name_availability_with_http_info(location_name, parameters, custom_headers:nil)
      check_name_availability_async(location_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Checks whether the project name is available in the specified region.
    #
    # @param location_name [String] The desired region for the name check.
    # @param parameters [CheckNameAvailabilityParameters] Properties needed to
    # check the availability of a name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_name_availability_async(location_name, parameters, custom_headers:nil)
      fail ArgumentError, 'location_name is nil' if location_name.nil?
      @client.api_version = '2018-02-02'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::CheckNameAvailabilityParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Migrate/locations/{locationName}/checkNameAvailability'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'locationName' => location_name,'subscriptionId' => @client.subscription_id},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::CheckNameAvailabilityResult.mapper()
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
