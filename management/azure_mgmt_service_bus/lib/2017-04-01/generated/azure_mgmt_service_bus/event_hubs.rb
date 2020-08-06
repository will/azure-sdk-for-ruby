# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2017_04_01
  #
  # Azure Service Bus client
  #
  class EventHubs
    include MsRestAzure

    #
    # Creates and initializes a new instance of the EventHubs class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceBusManagementClient] reference to the ServiceBusManagementClient
    attr_reader :client

    #
    # Gets all the Event Hubs in a service bus Namespace.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Eventhub>] operation results.
    #
    def list_by_namespace(resource_group_name, namespace_name, custom_headers:nil)
      first_page = list_by_namespace_as_lazy(resource_group_name, namespace_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all the Event Hubs in a service bus Namespace.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_namespace_with_http_info(resource_group_name, namespace_name, custom_headers:nil)
      list_by_namespace_async(resource_group_name, namespace_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all the Event Hubs in a service bus Namespace.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_namespace_async(resource_group_name, namespace_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/eventhubs'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'subscriptionId' => @client.subscription_id},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EventHubListResult.mapper()
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
    # Gets all the Event Hubs in a service bus Namespace.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EventHubListResult] operation results.
    #
    def list_by_namespace_next(next_page_link, custom_headers:nil)
      response = list_by_namespace_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the Event Hubs in a service bus Namespace.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_namespace_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_namespace_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all the Event Hubs in a service bus Namespace.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_namespace_next_async(next_page_link, custom_headers:nil)
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EventHubListResult.mapper()
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
    # Gets all the Event Hubs in a service bus Namespace.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EventHubListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_namespace_as_lazy(resource_group_name, namespace_name, custom_headers:nil)
      response = list_by_namespace_async(resource_group_name, namespace_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_namespace_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
