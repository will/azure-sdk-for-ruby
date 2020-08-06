# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  #
  # ApiManagement Client
  #
  class Issue
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Issue class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Lists a collection of issues in the specified service instance.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions               |
    # |-------------|------------------------|-----------------------------------|
    #
    # |name | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith|
    # |apiId | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |title | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |description | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |authorName | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |state | eq |    |
    #
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<IssueContract>] operation results.
    #
    def list_by_service(resource_group_name, service_name, filter:nil, top:nil, skip:nil, custom_headers:nil)
      first_page = list_by_service_as_lazy(resource_group_name, service_name, filter:filter, top:top, skip:skip, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists a collection of issues in the specified service instance.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions               |
    # |-------------|------------------------|-----------------------------------|
    #
    # |name | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith|
    # |apiId | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |title | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |description | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |authorName | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |state | eq |    |
    #
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_service_with_http_info(resource_group_name, service_name, filter:nil, top:nil, skip:nil, custom_headers:nil)
      list_by_service_async(resource_group_name, service_name, filter:filter, top:top, skip:skip, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of issues in the specified service instance.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions               |
    # |-------------|------------------------|-----------------------------------|
    #
    # |name | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith|
    # |apiId | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |title | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |description | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |authorName | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |state | eq |    |
    #
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_service_async(resource_group_name, service_name, filter:nil, top:nil, skip:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, "'skip' should satisfy the constraint - 'InclusiveMinimum': '0'" if !skip.nil? && skip < 0
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/issues'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'$top' => top,'$skip' => skip,'api-version' => @client.api_version},
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
            result_mapper = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueCollection.mapper()
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
    # Gets API Management issue details
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IssueContract] operation results.
    #
    def get(resource_group_name, service_name, issue_id, custom_headers:nil)
      response = get_async(resource_group_name, service_name, issue_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets API Management issue details
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, service_name, issue_id, custom_headers:nil)
      get_async(resource_group_name, service_name, issue_id, custom_headers:custom_headers).value!
    end

    #
    # Gets API Management issue details
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param issue_id [String] Issue identifier. Must be unique in the current API
    # Management service instance.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, service_name, issue_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'issue_id is nil' if issue_id.nil?
      fail ArgumentError, "'issue_id' should satisfy the constraint - 'MaxLength': '256'" if !issue_id.nil? && issue_id.length > 256
      fail ArgumentError, "'issue_id' should satisfy the constraint - 'MinLength': '1'" if !issue_id.nil? && issue_id.length < 1
      fail ArgumentError, "'issue_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !issue_id.nil? && issue_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/issues/{issueId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'issueId' => issue_id,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueContract.mapper()
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
    # Lists a collection of issues in the specified service instance.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IssueCollection] operation results.
    #
    def list_by_service_next(next_page_link, custom_headers:nil)
      response = list_by_service_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists a collection of issues in the specified service instance.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_service_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_service_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of issues in the specified service instance.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_service_next_async(next_page_link, custom_headers:nil)
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueCollection.mapper()
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
    # Lists a collection of issues in the specified service instance.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions               |
    # |-------------|------------------------|-----------------------------------|
    #
    # |name | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith|
    # |apiId | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |title | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |description | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |authorName | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith|
    # |state | eq |    |
    #
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IssueCollection] which provide lazy access to pages of the response.
    #
    def list_by_service_as_lazy(resource_group_name, service_name, filter:nil, top:nil, skip:nil, custom_headers:nil)
      response = list_by_service_async(resource_group_name, service_name, filter:filter, top:top, skip:skip, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_service_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
