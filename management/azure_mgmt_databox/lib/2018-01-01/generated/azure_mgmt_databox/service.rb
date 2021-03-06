# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  #
  # Service
  #
  class Service
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Service class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataBoxManagementClient] reference to the DataBoxManagementClient
    attr_reader :client

    #
    # This method provides the list of available skus for the given subscription
    # and location.
    #
    # @param location [String] The location of the resource
    # @param available_sku_request [AvailableSkuRequest] Filters for showing the
    # available skus.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<SkuInformation>] operation results.
    #
    def list_available_skus(location, available_sku_request, custom_headers:nil)
      first_page = list_available_skus_as_lazy(location, available_sku_request, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # This method provides the list of available skus for the given subscription
    # and location.
    #
    # @param location [String] The location of the resource
    # @param available_sku_request [AvailableSkuRequest] Filters for showing the
    # available skus.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_available_skus_with_http_info(location, available_sku_request, custom_headers:nil)
      list_available_skus_async(location, available_sku_request, custom_headers:custom_headers).value!
    end

    #
    # This method provides the list of available skus for the given subscription
    # and location.
    #
    # @param location [String] The location of the resource
    # @param available_sku_request [AvailableSkuRequest] Filters for showing the
    # available skus.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_available_skus_async(location, available_sku_request, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'available_sku_request is nil' if available_sku_request.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DataBox::Mgmt::V2018_01_01::Models::AvailableSkuRequest.mapper()
      request_content = @client.serialize(request_mapper,  available_sku_request)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.DataBox/locations/{location}/availableSkus'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'location' => location},
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
            result_mapper = Azure::DataBox::Mgmt::V2018_01_01::Models::AvailableSkusResult.mapper()
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
    # This method validates the customer shipping address and provide alternate
    # addresses if any.
    #
    # @param location [String] The location of the resource
    # @param validate_address [ValidateAddress] Shipping address of the customer.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AddressValidationOutput] operation results.
    #
    def validate_address_method(location, validate_address, custom_headers:nil)
      response = validate_address_method_async(location, validate_address, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # This method validates the customer shipping address and provide alternate
    # addresses if any.
    #
    # @param location [String] The location of the resource
    # @param validate_address [ValidateAddress] Shipping address of the customer.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def validate_address_method_with_http_info(location, validate_address, custom_headers:nil)
      validate_address_method_async(location, validate_address, custom_headers:custom_headers).value!
    end

    #
    # This method validates the customer shipping address and provide alternate
    # addresses if any.
    #
    # @param location [String] The location of the resource
    # @param validate_address [ValidateAddress] Shipping address of the customer.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def validate_address_method_async(location, validate_address, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'validate_address is nil' if validate_address.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DataBox::Mgmt::V2018_01_01::Models::ValidateAddress.mapper()
      request_content = @client.serialize(request_mapper,  validate_address)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.DataBox/locations/{location}/validateAddress'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'location' => location},
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
            result_mapper = Azure::DataBox::Mgmt::V2018_01_01::Models::AddressValidationOutput.mapper()
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
    # This method provides the list of available skus for the given subscription
    # and location.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailableSkusResult] operation results.
    #
    def list_available_skus_next(next_page_link, custom_headers:nil)
      response = list_available_skus_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # This method provides the list of available skus for the given subscription
    # and location.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_available_skus_next_with_http_info(next_page_link, custom_headers:nil)
      list_available_skus_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # This method provides the list of available skus for the given subscription
    # and location.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_available_skus_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::DataBox::Mgmt::V2018_01_01::Models::AvailableSkusResult.mapper()
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
    # This method provides the list of available skus for the given subscription
    # and location.
    #
    # @param location [String] The location of the resource
    # @param available_sku_request [AvailableSkuRequest] Filters for showing the
    # available skus.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailableSkusResult] which provide lazy access to pages of the
    # response.
    #
    def list_available_skus_as_lazy(location, available_sku_request, custom_headers:nil)
      response = list_available_skus_async(location, available_sku_request, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_available_skus_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
