# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2017_12_01_preview
  #
  # The Microsoft Azure management API provides create, read, update, and
  # delete functionality for Azure MySQL resources including servers,
  # databases, firewall rules, VNET rules, log files and configurations with
  # new business model.
  #
  class ServerSecurityAlertPolicies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ServerSecurityAlertPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MySQLManagementClient] reference to the MySQLManagementClient
    attr_reader :client

    #
    # Get a server's security alert policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServerSecurityAlertPolicy] operation results.
    #
    def get(resource_group_name, server_name, custom_headers:nil)
      response = get_async(resource_group_name, server_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a server's security alert policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, server_name, custom_headers:nil)
      get_async(resource_group_name, server_name, custom_headers:custom_headers).value!
    end

    #
    # Get a server's security alert policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, server_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      security_alert_policy_name = 'Default'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/servers/{serverName}/securityAlertPolicies/{securityAlertPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'securityAlertPolicyName' => security_alert_policy_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicy.mapper()
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
    # Creates or updates a threat detection policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param parameters [ServerSecurityAlertPolicy] The server security alert
    # policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServerSecurityAlertPolicy] operation results.
    #
    def create_or_update(resource_group_name, server_name, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, server_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param parameters [ServerSecurityAlertPolicy] The server security alert
    # policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, server_name, parameters, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, server_name, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicy.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Creates or updates a threat detection policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param parameters [ServerSecurityAlertPolicy] The server security alert
    # policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServerSecurityAlertPolicy] operation results.
    #
    def begin_create_or_update(resource_group_name, server_name, parameters, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, server_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a threat detection policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param parameters [ServerSecurityAlertPolicy] The server security alert
    # policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, server_name, parameters, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, server_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a threat detection policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param parameters [ServerSecurityAlertPolicy] The server security alert
    # policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, server_name, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      security_alert_policy_name = 'Default'
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicy.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/servers/{serverName}/securityAlertPolicies/{securityAlertPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'securityAlertPolicyName' => security_alert_policy_name,'subscriptionId' => @client.subscription_id},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicy.mapper()
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
