# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_01_01_preview
  #
  # The Azure Management Groups API enables consolidation of multiple
  # subscriptions/resources into an organizational hierarchy and centrally
  # manage access control, policies, alerting and reporting for those
  # resources.
  #
  #
  class ManagementGroupSubscriptions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ManagementGroupSubscriptions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ManagementGroupsAPI] reference to the ManagementGroupsAPI
    attr_reader :client

    #
    # Associates existing subscription with the management group.
    #
    #
    # @param group_id [String] Management Group ID.
    # @param subscription_id [String] Subscription ID.
    # @param cache_control [String] Indicates that the request shouldn't utilize
    # any caches.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def create(group_id, subscription_id, cache_control:'no-cache', custom_headers:nil)
      response = create_async(group_id, subscription_id, cache_control:cache_control, custom_headers:custom_headers).value!
      nil
    end

    #
    # Associates existing subscription with the management group.
    #
    #
    # @param group_id [String] Management Group ID.
    # @param subscription_id [String] Subscription ID.
    # @param cache_control [String] Indicates that the request shouldn't utilize
    # any caches.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(group_id, subscription_id, cache_control:'no-cache', custom_headers:nil)
      create_async(group_id, subscription_id, cache_control:cache_control, custom_headers:custom_headers).value!
    end

    #
    # Associates existing subscription with the management group.
    #
    #
    # @param group_id [String] Management Group ID.
    # @param subscription_id [String] Subscription ID.
    # @param cache_control [String] Indicates that the request shouldn't utilize
    # any caches.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(group_id, subscription_id, cache_control:'no-cache', custom_headers:nil)
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Cache-Control'] = cache_control unless cache_control.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Management/managementGroups/{groupId}/subscriptions/{subscriptionId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'groupId' => group_id,'subscriptionId' => subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # De-associates subscription from the management group.
    #
    #
    # @param group_id [String] Management Group ID.
    # @param subscription_id [String] Subscription ID.
    # @param cache_control [String] Indicates that the request shouldn't utilize
    # any caches.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(group_id, subscription_id, cache_control:'no-cache', custom_headers:nil)
      response = delete_async(group_id, subscription_id, cache_control:cache_control, custom_headers:custom_headers).value!
      nil
    end

    #
    # De-associates subscription from the management group.
    #
    #
    # @param group_id [String] Management Group ID.
    # @param subscription_id [String] Subscription ID.
    # @param cache_control [String] Indicates that the request shouldn't utilize
    # any caches.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(group_id, subscription_id, cache_control:'no-cache', custom_headers:nil)
      delete_async(group_id, subscription_id, cache_control:cache_control, custom_headers:custom_headers).value!
    end

    #
    # De-associates subscription from the management group.
    #
    #
    # @param group_id [String] Management Group ID.
    # @param subscription_id [String] Subscription ID.
    # @param cache_control [String] Indicates that the request shouldn't utilize
    # any caches.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(group_id, subscription_id, cache_control:'no-cache', custom_headers:nil)
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Cache-Control'] = cache_control unless cache_control.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Management/managementGroups/{groupId}/subscriptions/{subscriptionId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'groupId' => group_id,'subscriptionId' => subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
