# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  #
  # The Azure Customer Insights management API provides a RESTful set of web
  # services that interact with Azure Customer Insights service to manage your
  # resources. The API has entities that capture the relationship between an
  # end user and the Azure Customer Insights service.
  #
  class RoleAssignments
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RoleAssignments class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CustomerInsightsManagementClient] reference to the CustomerInsightsManagementClient
    attr_reader :client

    #
    # Gets all the role assignments for the specified hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<RoleAssignmentResourceFormat>] operation results.
    #
    def list_by_hub(resource_group_name, hub_name, custom_headers:nil)
      first_page = list_by_hub_as_lazy(resource_group_name, hub_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all the role assignments for the specified hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_hub_with_http_info(resource_group_name, hub_name, custom_headers:nil)
      list_by_hub_async(resource_group_name, hub_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all the role assignments for the specified hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_hub_async(resource_group_name, hub_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/roleAssignments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'subscriptionId' => @client.subscription_id},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::RoleAssignmentListResult.mapper()
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
    # Creates or updates a role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The assignment name
    # @param parameters [RoleAssignmentResourceFormat] Parameters supplied to the
    # CreateOrUpdate RoleAssignment operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleAssignmentResourceFormat] operation results.
    #
    def create_or_update(resource_group_name, hub_name, assignment_name, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, hub_name, assignment_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The assignment name
    # @param parameters [RoleAssignmentResourceFormat] Parameters supplied to the
    # CreateOrUpdate RoleAssignment operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, hub_name, assignment_name, parameters, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, hub_name, assignment_name, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::RoleAssignmentResourceFormat.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The name of the role assignment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleAssignmentResourceFormat] operation results.
    #
    def get(resource_group_name, hub_name, assignment_name, custom_headers:nil)
      response = get_async(resource_group_name, hub_name, assignment_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The name of the role assignment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, hub_name, assignment_name, custom_headers:nil)
      get_async(resource_group_name, hub_name, assignment_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The name of the role assignment.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, hub_name, assignment_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'assignment_name is nil' if assignment_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/roleAssignments/{assignmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'assignmentName' => assignment_name,'subscriptionId' => @client.subscription_id},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::RoleAssignmentResourceFormat.mapper()
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
    # Deletes the role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The name of the role assignment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, hub_name, assignment_name, custom_headers:nil)
      response = delete_async(resource_group_name, hub_name, assignment_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The name of the role assignment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, hub_name, assignment_name, custom_headers:nil)
      delete_async(resource_group_name, hub_name, assignment_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The name of the role assignment.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, hub_name, assignment_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'assignment_name is nil' if assignment_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/roleAssignments/{assignmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'assignmentName' => assignment_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Creates or updates a role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The assignment name
    # @param parameters [RoleAssignmentResourceFormat] Parameters supplied to the
    # CreateOrUpdate RoleAssignment operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleAssignmentResourceFormat] operation results.
    #
    def begin_create_or_update(resource_group_name, hub_name, assignment_name, parameters, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, hub_name, assignment_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The assignment name
    # @param parameters [RoleAssignmentResourceFormat] Parameters supplied to the
    # CreateOrUpdate RoleAssignment operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, hub_name, assignment_name, parameters, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, hub_name, assignment_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a role assignment in the hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param assignment_name [String] The assignment name
    # @param parameters [RoleAssignmentResourceFormat] Parameters supplied to the
    # CreateOrUpdate RoleAssignment operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, hub_name, assignment_name, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'hub_name is nil' if hub_name.nil?
      fail ArgumentError, 'assignment_name is nil' if assignment_name.nil?
      fail ArgumentError, "'assignment_name' should satisfy the constraint - 'MaxLength': '128'" if !assignment_name.nil? && assignment_name.length > 128
      fail ArgumentError, "'assignment_name' should satisfy the constraint - 'MinLength': '1'" if !assignment_name.nil? && assignment_name.length < 1
      fail ArgumentError, "'assignment_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z][a-zA-Z0-9_]+$'" if !assignment_name.nil? && assignment_name.match(Regexp.new('^^[a-zA-Z][a-zA-Z0-9_]+$$')).nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::RoleAssignmentResourceFormat.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/roleAssignments/{assignmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'hubName' => hub_name,'assignmentName' => assignment_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::RoleAssignmentResourceFormat.mapper()
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
    # Gets all the role assignments for the specified hub.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleAssignmentListResult] operation results.
    #
    def list_by_hub_next(next_page_link, custom_headers:nil)
      response = list_by_hub_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the role assignments for the specified hub.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_hub_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_hub_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all the role assignments for the specified hub.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_hub_next_async(next_page_link, custom_headers:nil)
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CustomerInsights::Mgmt::V2017_01_01::Models::RoleAssignmentListResult.mapper()
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
    # Gets all the role assignments for the specified hub.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param hub_name [String] The name of the hub.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RoleAssignmentListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_hub_as_lazy(resource_group_name, hub_name, custom_headers:nil)
      response = list_by_hub_async(resource_group_name, hub_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_hub_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
