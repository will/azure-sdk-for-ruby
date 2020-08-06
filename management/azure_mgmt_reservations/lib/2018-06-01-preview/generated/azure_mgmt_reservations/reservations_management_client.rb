# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2018_06_01_preview
  #
  # A service client - single point of access to the REST API.
  #
  class ReservationsManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] Supported version.
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

    # @return [ReservationOrder] reservation_order
    attr_reader :reservation_order

    # @return [Reservation] reservation
    attr_reader :reservation

    # @return [Operation] operation
    attr_reader :operation

    #
    # Creates initializes a new instance of the ReservationsManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @reservation_order = ReservationOrder.new(self)
      @reservation = Reservation.new(self)
      @operation = Operation.new(self)
      @api_version = '2018-06-01'
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
    # Get the regions and skus that are available for RI purchase for the specified
    # Azure subscription.
    #
    # @param subscription_id [String] Id of the subscription
    # @param reserved_resource_type [String] The type of the resource for which the
    # skus should be provided.
    # @param location [String] Filters the skus based on the location specified in
    # this parameter. This can be an azure region or global
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def get_catalog(subscription_id, reserved_resource_type, location:nil, custom_headers:nil)
      response = get_catalog_async(subscription_id, reserved_resource_type, location:location, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the regions and skus that are available for RI purchase for the specified
    # Azure subscription.
    #
    # @param subscription_id [String] Id of the subscription
    # @param reserved_resource_type [String] The type of the resource for which the
    # skus should be provided.
    # @param location [String] Filters the skus based on the location specified in
    # this parameter. This can be an azure region or global
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_catalog_with_http_info(subscription_id, reserved_resource_type, location:nil, custom_headers:nil)
      get_catalog_async(subscription_id, reserved_resource_type, location:location, custom_headers:custom_headers).value!
    end

    #
    # Get the regions and skus that are available for RI purchase for the specified
    # Azure subscription.
    #
    # @param subscription_id [String] Id of the subscription
    # @param reserved_resource_type [String] The type of the resource for which the
    # skus should be provided.
    # @param location [String] Filters the skus based on the location specified in
    # this parameter. This can be an azure region or global
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_catalog_async(subscription_id, reserved_resource_type, location:nil, custom_headers:nil)
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'reserved_resource_type is nil' if reserved_resource_type.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Capacity/catalogs'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id},
          query_params: {'api-version' => api_version,'reservedResourceType' => reserved_resource_type,'location' => location},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:get, path_template, options)

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
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'CatalogElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'Catalog'
                    }
                }
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

    #
    # Get list of applicable `Reservation`s.
    #
    # Get applicable `Reservation`s that are applied to this subscription.
    #
    # @param subscription_id [String] Id of the subscription
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AppliedReservations] operation results.
    #
    def get_applied_reservation_list(subscription_id, custom_headers:nil)
      response = get_applied_reservation_list_async(subscription_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get list of applicable `Reservation`s.
    #
    # Get applicable `Reservation`s that are applied to this subscription.
    #
    # @param subscription_id [String] Id of the subscription
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_applied_reservation_list_with_http_info(subscription_id, custom_headers:nil)
      get_applied_reservation_list_async(subscription_id, custom_headers:custom_headers).value!
    end

    #
    # Get list of applicable `Reservation`s.
    #
    # Get applicable `Reservation`s that are applied to this subscription.
    #
    # @param subscription_id [String] Id of the subscription
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_applied_reservation_list_async(subscription_id, custom_headers:nil)
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Capacity/appliedReservations'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:get, path_template, options)

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
            result_mapper = Azure::Reservations::Mgmt::V2018_06_01_preview::Models::AppliedReservations.mapper()
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
        sdk_information = 'azure_mgmt_reservations'
        sdk_information = "#{sdk_information}/0.20.0"
        add_user_agent_information(sdk_information)
    end
  end
end
