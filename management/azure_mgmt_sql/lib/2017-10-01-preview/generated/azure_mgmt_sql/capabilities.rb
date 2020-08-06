# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  #
  # The Azure SQL Database management API provides a RESTful set of web
  # services that interact with Azure SQL Database services to manage your
  # databases. The API enables you to create, retrieve, update, and delete
  # databases.
  #
  class Capabilities
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Capabilities class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SqlManagementClient] reference to the SqlManagementClient
    attr_reader :client

    #
    # Gets the subscription capabilities available for the specified location.
    #
    # @param location_name [String] The location name whose capabilities are
    # retrieved.
    # @param include [CapabilityGroup] If specified, restricts the response to only
    # include the selected item. Possible values include: 'supportedEditions',
    # 'supportedElasticPoolEditions', 'supportedManagedInstanceVersions'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LocationCapabilities] operation results.
    #
    def list_by_location(location_name, include:nil, custom_headers:nil)
      response = list_by_location_async(location_name, include:include, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the subscription capabilities available for the specified location.
    #
    # @param location_name [String] The location name whose capabilities are
    # retrieved.
    # @param include [CapabilityGroup] If specified, restricts the response to only
    # include the selected item. Possible values include: 'supportedEditions',
    # 'supportedElasticPoolEditions', 'supportedManagedInstanceVersions'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_location_with_http_info(location_name, include:nil, custom_headers:nil)
      list_by_location_async(location_name, include:include, custom_headers:custom_headers).value!
    end

    #
    # Gets the subscription capabilities available for the specified location.
    #
    # @param location_name [String] The location name whose capabilities are
    # retrieved.
    # @param include [CapabilityGroup] If specified, restricts the response to only
    # include the selected item. Possible values include: 'supportedEditions',
    # 'supportedElasticPoolEditions', 'supportedManagedInstanceVersions'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_location_async(location_name, include:nil, custom_headers:nil)
      fail ArgumentError, 'location_name is nil' if location_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationName}/capabilities'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'locationName' => location_name,'subscriptionId' => @client.subscription_id},
          query_params: {'include' => include,'api-version' => @client.api_version},
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
            result_mapper = Azure::SQL::Mgmt::V2017_10_01_preview::Models::LocationCapabilities.mapper()
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
