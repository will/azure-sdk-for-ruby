# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  #
  # Time Series Insights client
  #
  class Environments
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Environments class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [TimeSeriesInsightsClient] reference to the TimeSeriesInsightsClient
    attr_reader :client

    #
    # Create or update an environment in the specified subscription and resource
    # group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] Name of the environment
    # @param parameters [EnvironmentCreateOrUpdateParameters] Parameters for
    # creating an environment resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EnvironmentResource] operation results.
    #
    def create_or_update(resource_group_name, environment_name, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, environment_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] Name of the environment
    # @param parameters [EnvironmentCreateOrUpdateParameters] Parameters for
    # creating an environment resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, environment_name, parameters, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, environment_name, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResource.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param expand [String] Setting $expand=status will include the status of the
    # internal services of the environment in the Time Series Insights service.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EnvironmentResource] operation results.
    #
    def get(resource_group_name, environment_name, expand:nil, custom_headers:nil)
      response = get_async(resource_group_name, environment_name, expand:expand, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param expand [String] Setting $expand=status will include the status of the
    # internal services of the environment in the Time Series Insights service.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, environment_name, expand:nil, custom_headers:nil)
      get_async(resource_group_name, environment_name, expand:expand, custom_headers:custom_headers).value!
    end

    #
    # Gets the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param expand [String] Setting $expand=status will include the status of the
    # internal services of the environment in the Time Series Insights service.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, environment_name, expand:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name},
          query_params: {'$expand' => expand,'api-version' => @client.api_version},
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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResource.mapper()
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
    # Updates the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param standard_environment_update_parameters
    # [StandardEnvironmentUpdateParameters] Request object that contains the
    # updated information for the environment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EnvironmentResource] operation results.
    #
    def update(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:nil)
      response = update_async(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param standard_environment_update_parameters
    # [StandardEnvironmentUpdateParameters] Request object that contains the
    # updated information for the environment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:nil)
      # Send request
      promise = begin_update_async(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResource.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, environment_name, custom_headers:nil)
      response = delete_async(resource_group_name, environment_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, environment_name, custom_headers:nil)
      delete_async(resource_group_name, environment_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, environment_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name},
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
    # Lists all the available environments associated with the subscription and
    # within the specified resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EnvironmentListResponse] operation results.
    #
    def list_by_resource_group(resource_group_name, custom_headers:nil)
      response = list_by_resource_group_async(resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all the available environments associated with the subscription and
    # within the specified resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_resource_group_with_http_info(resource_group_name, custom_headers:nil)
      list_by_resource_group_async(resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Lists all the available environments associated with the subscription and
    # within the specified resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_resource_group_async(resource_group_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name},
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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentListResponse.mapper()
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
    # Lists all the available environments within a subscription, irrespective of
    # the resource groups.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EnvironmentListResponse] operation results.
    #
    def list_by_subscription(custom_headers:nil)
      response = list_by_subscription_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all the available environments within a subscription, irrespective of
    # the resource groups.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_subscription_with_http_info(custom_headers:nil)
      list_by_subscription_async(custom_headers:custom_headers).value!
    end

    #
    # Lists all the available environments within a subscription, irrespective of
    # the resource groups.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_subscription_async(custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.TimeSeriesInsights/environments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentListResponse.mapper()
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
    # Create or update an environment in the specified subscription and resource
    # group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] Name of the environment
    # @param parameters [EnvironmentCreateOrUpdateParameters] Parameters for
    # creating an environment resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EnvironmentResource] operation results.
    #
    def begin_create_or_update(resource_group_name, environment_name, parameters, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, environment_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update an environment in the specified subscription and resource
    # group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] Name of the environment
    # @param parameters [EnvironmentCreateOrUpdateParameters] Parameters for
    # creating an environment resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, environment_name, parameters, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, environment_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Create or update an environment in the specified subscription and resource
    # group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] Name of the environment
    # @param parameters [EnvironmentCreateOrUpdateParameters] Parameters for
    # creating an environment resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, environment_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, "'environment_name' should satisfy the constraint - 'MaxLength': '90'" if !environment_name.nil? && environment_name.length > 90
      fail ArgumentError, "'environment_name' should satisfy the constraint - 'MinLength': '1'" if !environment_name.nil? && environment_name.length < 1
      fail ArgumentError, "'environment_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !environment_name.nil? && environment_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentCreateOrUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name},
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
        unless status_code == 200 || status_code == 201 || status_code == 404
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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResource.mapper()
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
    # Updates the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param standard_environment_update_parameters
    # [StandardEnvironmentUpdateParameters] Request object that contains the
    # updated information for the environment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EnvironmentResource] operation results.
    #
    def begin_update(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:nil)
      response = begin_update_async(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param standard_environment_update_parameters
    # [StandardEnvironmentUpdateParameters] Request object that contains the
    # updated information for the environment.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:nil)
      begin_update_async(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:custom_headers).value!
    end

    #
    # Updates the environment with the specified name in the specified subscription
    # and resource group.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param environment_name [String] The name of the Time Series Insights
    # environment associated with the specified resource group.
    # @param standard_environment_update_parameters
    # [StandardEnvironmentUpdateParameters] Request object that contains the
    # updated information for the environment.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(resource_group_name, environment_name, standard_environment_update_parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'environment_name is nil' if environment_name.nil?
      fail ArgumentError, 'standard_environment_update_parameters is nil' if standard_environment_update_parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::StandardEnvironmentUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  standard_environment_update_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'environmentName' => environment_name},
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
            result_mapper = Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview::Models::EnvironmentResource.mapper()
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
