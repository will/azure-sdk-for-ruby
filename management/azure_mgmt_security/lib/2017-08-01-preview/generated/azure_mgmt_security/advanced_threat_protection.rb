# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01_preview
  #
  # API spec for Microsoft.Security (Azure Security Center) resource provider
  #
  class AdvancedThreatProtection
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AdvancedThreatProtection class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SecurityCenter] reference to the SecurityCenter
    attr_reader :client

    #
    # Gets the Advanced Threat Protection settings for the specified resource.
    #
    # @param resource_id [String] The identifier of the resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AdvancedThreatProtectionSetting] operation results.
    #
    def get(resource_id, custom_headers:nil)
      response = get_async(resource_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the Advanced Threat Protection settings for the specified resource.
    #
    # @param resource_id [String] The identifier of the resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_id, custom_headers:nil)
      get_async(resource_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the Advanced Threat Protection settings for the specified resource.
    #
    # @param resource_id [String] The identifier of the resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_id, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_id is nil' if resource_id.nil?
      setting_name = 'current'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceId}/providers/Microsoft.Security/advancedThreatProtectionSettings/{settingName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceId' => resource_id,'settingName' => setting_name},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Security::Mgmt::V2017_08_01_preview::Models::AdvancedThreatProtectionSetting.mapper()
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
    # Creates or updates the Advanced Threat Protection settings on a specified
    # resource.
    #
    # @param resource_id [String] The identifier of the resource.
    # @param advanced_threat_protection_setting [AdvancedThreatProtectionSetting]
    # Advanced Threat Protection Settings
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AdvancedThreatProtectionSetting] operation results.
    #
    def create(resource_id, advanced_threat_protection_setting, custom_headers:nil)
      response = create_async(resource_id, advanced_threat_protection_setting, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates the Advanced Threat Protection settings on a specified
    # resource.
    #
    # @param resource_id [String] The identifier of the resource.
    # @param advanced_threat_protection_setting [AdvancedThreatProtectionSetting]
    # Advanced Threat Protection Settings
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_id, advanced_threat_protection_setting, custom_headers:nil)
      create_async(resource_id, advanced_threat_protection_setting, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates the Advanced Threat Protection settings on a specified
    # resource.
    #
    # @param resource_id [String] The identifier of the resource.
    # @param advanced_threat_protection_setting [AdvancedThreatProtectionSetting]
    # Advanced Threat Protection Settings
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_id, advanced_threat_protection_setting, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_id is nil' if resource_id.nil?
      setting_name = 'current'
      fail ArgumentError, 'advanced_threat_protection_setting is nil' if advanced_threat_protection_setting.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Security::Mgmt::V2017_08_01_preview::Models::AdvancedThreatProtectionSetting.mapper()
      request_content = @client.serialize(request_mapper,  advanced_threat_protection_setting)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '{resourceId}/providers/Microsoft.Security/advancedThreatProtectionSettings/{settingName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceId' => resource_id,'settingName' => setting_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

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
            result_mapper = Azure::Security::Mgmt::V2017_08_01_preview::Models::AdvancedThreatProtectionSetting.mapper()
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
