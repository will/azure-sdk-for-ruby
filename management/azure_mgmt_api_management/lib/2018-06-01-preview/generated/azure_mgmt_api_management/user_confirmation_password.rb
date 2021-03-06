# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  #
  # ApiManagement Client
  #
  class UserConfirmationPassword
    include MsRestAzure

    #
    # Creates and initializes a new instance of the UserConfirmationPassword class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Sends confirmation
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def send(resource_group_name, service_name, user_id, custom_headers:nil)
      response = send_async(resource_group_name, service_name, user_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Sends confirmation
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def send_with_http_info(resource_group_name, service_name, user_id, custom_headers:nil)
      send_async(resource_group_name, service_name, user_id, custom_headers:custom_headers).value!
    end

    #
    # Sends confirmation
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def send_async(resource_group_name, service_name, user_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'user_id is nil' if user_id.nil?
      fail ArgumentError, "'user_id' should satisfy the constraint - 'MaxLength': '80'" if !user_id.nil? && user_id.length > 80
      fail ArgumentError, "'user_id' should satisfy the constraint - 'MinLength': '1'" if !user_id.nil? && user_id.length < 1
      fail ArgumentError, "'user_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !user_id.nil? && user_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/users/{userId}/confirmations/password/send'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'userId' => user_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
