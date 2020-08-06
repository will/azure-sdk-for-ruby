# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview
  #
  # Time Series Insights client
  #
  class AccessPolicies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AccessPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [TimeSeriesInsightsClient] reference to the TimeSeriesInsightsClient
    attr_reader :client

    #
    # Create or update an access policy in the specified environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] Name of the access policy.
    # @param parameters [AccessPolicyCreateOrUpdateParameters] Parameters for
    # creating an access policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AccessPolicyResource] operation results.
    #
    def create_or_update(resource_group_name, environment_name, access_policy_name, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, environment_name, access_policy_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update an access policy in the specified environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] Name of the access policy.
    # @param parameters [AccessPolicyCreateOrUpdateParameters] Parameters for
    # creating an access policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, environment_name, access_policy_name, parameters, custom_headers:nil)
      create_or_update_async(resource_group_name, environment_name, access_policy_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Create or update an access policy in the specified environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] Name of the access policy.
    # @param parameters [AccessPolicyCreateOrUpdateParameters] Parameters for
    # creating an access policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, environment_name, access_policy_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, 'access_policy_name is nil' if access_policy_name.nil?
      fail ArgumentError, "'access_policy_name' should satisfy the constraint - 'MaxLength': '90'" if !access_policy_name.nil? && access_policy_name.length > 90
      fail ArgumentError, "'access_policy_name' should satisfy the constraint - 'MinLength': '1'" if !access_policy_name.nil? && access_policy_name.length < 1
      fail ArgumentError, "'access_policy_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !access_policy_name.nil? && access_policy_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview::Models::AccessPolicyCreateOrUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/accessPolicies/{accessPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name,'accessPolicyName' => access_policy_name},
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
        unless status_code == 200 || status_code == 201
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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview::Models::AccessPolicyResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview::Models::AccessPolicyResource.mapper()
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
    # Gets the access policy with the specified name in the specified environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AccessPolicyResource] operation results.
    #
    def get(resource_group_name, environment_name, access_policy_name, custom_headers:nil)
      response = get_async(resource_group_name, environment_name, access_policy_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the access policy with the specified name in the specified environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, environment_name, access_policy_name, custom_headers:nil)
      get_async(resource_group_name, environment_name, access_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the access policy with the specified name in the specified environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, environment_name, access_policy_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, 'access_policy_name is nil' if access_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/accessPolicies/{accessPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name,'accessPolicyName' => access_policy_name},
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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview::Models::AccessPolicyResource.mapper()
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
    # Updates the access policy with the specified name in the specified
    # subscription, resource group, and environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param access_policy_update_parameters [AccessPolicyUpdateParameters] Request
    # object that contains the updated information for the access policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AccessPolicyResource] operation results.
    #
    def update(resource_group_name, environment_name, access_policy_name, access_policy_update_parameters, custom_headers:nil)
      response = update_async(resource_group_name, environment_name, access_policy_name, access_policy_update_parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates the access policy with the specified name in the specified
    # subscription, resource group, and environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param access_policy_update_parameters [AccessPolicyUpdateParameters] Request
    # object that contains the updated information for the access policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, environment_name, access_policy_name, access_policy_update_parameters, custom_headers:nil)
      update_async(resource_group_name, environment_name, access_policy_name, access_policy_update_parameters, custom_headers:custom_headers).value!
    end

    #
    # Updates the access policy with the specified name in the specified
    # subscription, resource group, and environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param access_policy_update_parameters [AccessPolicyUpdateParameters] Request
    # object that contains the updated information for the access policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, environment_name, access_policy_name, access_policy_update_parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, 'access_policy_name is nil' if access_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'access_policy_update_parameters is nil' if access_policy_update_parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview::Models::AccessPolicyUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  access_policy_update_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/accessPolicies/{accessPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name,'accessPolicyName' => access_policy_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview::Models::AccessPolicyResource.mapper()
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
    # Deletes the access policy with the specified name in the specified
    # subscription, resource group, and environment
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, environment_name, access_policy_name, custom_headers:nil)
      response = delete_async(resource_group_name, environment_name, access_policy_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the access policy with the specified name in the specified
    # subscription, resource group, and environment
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, environment_name, access_policy_name, custom_headers:nil)
      delete_async(resource_group_name, environment_name, access_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the access policy with the specified name in the specified
    # subscription, resource group, and environment
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param access_policy_name [String] The name of the Time Series Insights
    # access policy associated with the specified environment.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, environment_name, access_policy_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, 'access_policy_name is nil' if access_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/accessPolicies/{accessPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name,'accessPolicyName' => access_policy_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
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
    # Lists all the available access policies associated with the environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AccessPolicyListResponse] operation results.
    #
    def list_by_environment(resource_group_name, environment_name, custom_headers:nil)
      response = list_by_environment_async(resource_group_name, environment_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all the available access policies associated with the environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_environment_with_http_info(resource_group_name, environment_name, custom_headers:nil)
      list_by_environment_async(resource_group_name, environment_name, custom_headers:custom_headers).value!
    end

    #
    # Lists all the available access policies associated with the environment.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_environment_async(resource_group_name, environment_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/accessPolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name},
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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview::Models::AccessPolicyListResponse.mapper()
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
