# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_05_01
  #
  # ApplicationPackageOperations
  #
  class ApplicationPackageOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ApplicationPackageOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [BatchManagementClient] reference to the BatchManagementClient
    attr_reader :client

    #
    # Activates the specified application package.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application to activate.
    # @param parameters [ActivateApplicationPackageParameters] The parameters for
    # the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def activate(resource_group_name, account_name, application_id, version, parameters, custom_headers:nil)
      response = activate_async(resource_group_name, account_name, application_id, version, parameters, custom_headers:custom_headers).value!
      nil
    end

    #
    # Activates the specified application package.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application to activate.
    # @param parameters [ActivateApplicationPackageParameters] The parameters for
    # the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def activate_with_http_info(resource_group_name, account_name, application_id, version, parameters, custom_headers:nil)
      activate_async(resource_group_name, account_name, application_id, version, parameters, custom_headers:custom_headers).value!
    end

    #
    # Activates the specified application package.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application to activate.
    # @param parameters [ActivateApplicationPackageParameters] The parameters for
    # the request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def activate_async(resource_group_name, account_name, application_id, version, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'application_id is nil' if application_id.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Batch::Mgmt::V2017_05_01::Models::ActivateApplicationPackageParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}/versions/{version}/activate'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'applicationId' => application_id,'version' => version,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Creates an application package record.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ApplicationPackage] operation results.
    #
    def create(resource_group_name, account_name, application_id, version, custom_headers:nil)
      response = create_async(resource_group_name, account_name, application_id, version, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates an application package record.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_group_name, account_name, application_id, version, custom_headers:nil)
      create_async(resource_group_name, account_name, application_id, version, custom_headers:custom_headers).value!
    end

    #
    # Creates an application package record.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_group_name, account_name, application_id, version, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'application_id is nil' if application_id.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}/versions/{version}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'applicationId' => application_id,'version' => version,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Batch::Mgmt::V2017_05_01::Models::ApplicationPackage.mapper()
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
    # Deletes an application package record and its associated binary file.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application to delete.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, account_name, application_id, version, custom_headers:nil)
      response = delete_async(resource_group_name, account_name, application_id, version, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes an application package record and its associated binary file.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application to delete.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, account_name, application_id, version, custom_headers:nil)
      delete_async(resource_group_name, account_name, application_id, version, custom_headers:custom_headers).value!
    end

    #
    # Deletes an application package record and its associated binary file.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application to delete.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, account_name, application_id, version, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'application_id is nil' if application_id.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}/versions/{version}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'applicationId' => application_id,'version' => version,'subscriptionId' => @client.subscription_id},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets information about the specified application package.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ApplicationPackage] operation results.
    #
    def get(resource_group_name, account_name, application_id, version, custom_headers:nil)
      response = get_async(resource_group_name, account_name, application_id, version, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets information about the specified application package.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, account_name, application_id, version, custom_headers:nil)
      get_async(resource_group_name, account_name, application_id, version, custom_headers:custom_headers).value!
    end

    #
    # Gets information about the specified application package.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param version [String] The version of the application.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, account_name, application_id, version, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'application_id is nil' if application_id.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}/versions/{version}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'applicationId' => application_id,'version' => version,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Batch::Mgmt::V2017_05_01::Models::ApplicationPackage.mapper()
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
