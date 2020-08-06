# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ImportExport::Mgmt::V2016_11_01
  #
  # The Storage Import/Export Resource Provider API.
  #
  class Locations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Locations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorageImportExport] reference to the StorageImportExport
    attr_reader :client

    #
    # Returns a list of locations to which you can ship the disks associated with
    # an import or export job. A location is a Microsoft data center region.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LocationsResponse] operation results.
    #
    def list(custom_headers:nil)
      response = list_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns a list of locations to which you can ship the disks associated with
    # an import or export job. A location is a Microsoft data center region.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(custom_headers:nil)
      list_async(custom_headers:custom_headers).value!
    end

    #
    # Returns a list of locations to which you can ship the disks associated with
    # an import or export job. A location is a Microsoft data center region.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(custom_headers:nil)
      @client.api_version = '2016-11-01'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.ImportExport/locations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
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
            result_mapper = Azure::ImportExport::Mgmt::V2016_11_01::Models::LocationsResponse.mapper()
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
    # Returns the details about a location to which you can ship the disks
    # associated with an import or export job. A location is an Azure region.
    #
    # @param location_name [String] The name of the location. For example, West US
    # or westus.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Location] operation results.
    #
    def get(location_name, custom_headers:nil)
      response = get_async(location_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns the details about a location to which you can ship the disks
    # associated with an import or export job. A location is an Azure region.
    #
    # @param location_name [String] The name of the location. For example, West US
    # or westus.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(location_name, custom_headers:nil)
      get_async(location_name, custom_headers:custom_headers).value!
    end

    #
    # Returns the details about a location to which you can ship the disks
    # associated with an import or export job. A location is an Azure region.
    #
    # @param location_name [String] The name of the location. For example, West US
    # or westus.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(location_name, custom_headers:nil)
      fail ArgumentError, 'location_name is nil' if location_name.nil?
      @client.api_version = '2016-11-01'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.ImportExport/locations/{locationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'locationName' => location_name},
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
            result_mapper = Azure::ImportExport::Mgmt::V2016_11_01::Models::Location.mapper()
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
