# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  #
  # A service client - single point of access to the REST API.
  #
  class PeeringClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The Azure subscription ID.
    attr_accessor :subscription_id

    # @return [String] The client API version.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [LegacyPeerings] legacy_peerings
    attr_reader :legacy_peerings

    # @return [Operations] operations
    attr_reader :operations

    # @return [PeerAsns] peer_asns
    attr_reader :peer_asns

    # @return [PeeringLocations] peering_locations
    attr_reader :peering_locations

    # @return [Peerings] peerings
    attr_reader :peerings

    # @return [PeeringServiceLocations] peering_service_locations
    attr_reader :peering_service_locations

    # @return [PeeringServicePrefixes] peering_service_prefixes
    attr_reader :peering_service_prefixes

    # @return [Prefixes] prefixes
    attr_reader :prefixes

    # @return [PeeringServiceProviders] peering_service_providers
    attr_reader :peering_service_providers

    # @return [PeeringServices] peering_services
    attr_reader :peering_services

    #
    # Creates initializes a new instance of the PeeringClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @legacy_peerings = LegacyPeerings.new(self)
      @operations = Operations.new(self)
      @peer_asns = PeerAsns.new(self)
      @peering_locations = PeeringLocations.new(self)
      @peerings = Peerings.new(self)
      @peering_service_locations = PeeringServiceLocations.new(self)
      @peering_service_prefixes = PeeringServicePrefixes.new(self)
      @prefixes = Prefixes.new(self)
      @peering_service_providers = PeeringServiceProviders.new(self)
      @peering_services = PeeringServices.new(self)
      @api_version = '2019-08-01-preview'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end

    #
    # Checks if the peering service provider is present within 1000 miles of
    # customer's location
    #
    # @param check_service_provider_availability_input
    # [CheckServiceProviderAvailabilityInput] The
    # CheckServiceProviderAvailabilityInput
    # indicating customer location and service provider.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [enum] operation results.
    #
    def check_service_provider_availability(check_service_provider_availability_input, custom_headers:nil)
      response = check_service_provider_availability_async(check_service_provider_availability_input, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Checks if the peering service provider is present within 1000 miles of
    # customer's location
    #
    # @param check_service_provider_availability_input
    # [CheckServiceProviderAvailabilityInput] The
    # CheckServiceProviderAvailabilityInput
    # indicating customer location and service provider.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_service_provider_availability_with_http_info(check_service_provider_availability_input, custom_headers:nil)
      check_service_provider_availability_async(check_service_provider_availability_input, custom_headers:custom_headers).value!
    end

    #
    # Checks if the peering service provider is present within 1000 miles of
    # customer's location
    #
    # @param check_service_provider_availability_input
    # [CheckServiceProviderAvailabilityInput] The
    # CheckServiceProviderAvailabilityInput
    # indicating customer location and service provider.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_service_provider_availability_async(check_service_provider_availability_input, custom_headers:nil)
      fail ArgumentError, 'check_service_provider_availability_input is nil' if check_service_provider_availability_input.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Peering::Mgmt::V2019_08_01_preview::Models::CheckServiceProviderAvailabilityInput.mapper()
      request_content = self.serialize(request_mapper,  check_service_provider_availability_input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Peering/CheckServiceProviderAvailability'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:post, path_template, options)

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
            result.body = self.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_peering'
        sdk_information = "#{sdk_information}/0.17.1"
        add_user_agent_information(sdk_information)
    end
  end
end
