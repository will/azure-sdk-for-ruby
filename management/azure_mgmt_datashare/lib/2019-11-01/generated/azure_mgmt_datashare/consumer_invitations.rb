# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2019_11_01
  #
  # Creates a Microsoft.DataShare management client.
  #
  class ConsumerInvitations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ConsumerInvitations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataShareManagementClient] reference to the DataShareManagementClient
    attr_reader :client

    #
    # Rejects the invitation identified by invitationId
    #
    # Reject an invitation
    #
    # @param location [String] Location of the invitation
    # @param invitation [ConsumerInvitation] An invitation payload
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConsumerInvitation] operation results.
    #
    def reject_invitation(location, invitation, custom_headers:nil)
      response = reject_invitation_async(location, invitation, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Rejects the invitation identified by invitationId
    #
    # Reject an invitation
    #
    # @param location [String] Location of the invitation
    # @param invitation [ConsumerInvitation] An invitation payload
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def reject_invitation_with_http_info(location, invitation, custom_headers:nil)
      reject_invitation_async(location, invitation, custom_headers:custom_headers).value!
    end

    #
    # Rejects the invitation identified by invitationId
    #
    # Reject an invitation
    #
    # @param location [String] Location of the invitation
    # @param invitation [ConsumerInvitation] An invitation payload
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def reject_invitation_async(location, invitation, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'invitation is nil' if invitation.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitation.mapper()
      request_content = @client.serialize(request_mapper,  invitation)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'providers/Microsoft.DataShare/locations/{location}/RejectInvitation'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location},
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
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitation.mapper()
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
    # Gets the invitation identified by invitationId
    #
    # Get an invitation
    #
    # @param location [String] Location of the invitation
    # @param invitation_id [String] An invitation id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConsumerInvitation] operation results.
    #
    def get(location, invitation_id, custom_headers:nil)
      response = get_async(location, invitation_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the invitation identified by invitationId
    #
    # Get an invitation
    #
    # @param location [String] Location of the invitation
    # @param invitation_id [String] An invitation id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(location, invitation_id, custom_headers:nil)
      get_async(location, invitation_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the invitation identified by invitationId
    #
    # Get an invitation
    #
    # @param location [String] Location of the invitation
    # @param invitation_id [String] An invitation id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(location, invitation_id, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'invitation_id is nil' if invitation_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.DataShare/locations/{location}/consumerInvitations/{invitationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'invitationId' => invitation_id},
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
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitation.mapper()
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
    # List the invitations
    #
    # Lists invitations
    #
    # @param skip_token [String] The continuation token
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ConsumerInvitation>] operation results.
    #
    def list_invitations(skip_token:nil, custom_headers:nil)
      first_page = list_invitations_as_lazy(skip_token:skip_token, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List the invitations
    #
    # Lists invitations
    #
    # @param skip_token [String] The continuation token
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_invitations_with_http_info(skip_token:nil, custom_headers:nil)
      list_invitations_async(skip_token:skip_token, custom_headers:custom_headers).value!
    end

    #
    # List the invitations
    #
    # Lists invitations
    #
    # @param skip_token [String] The continuation token
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_invitations_async(skip_token:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.DataShare/ListInvitations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'api-version' => @client.api_version,'$skipToken' => skip_token},
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
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitationList.mapper()
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
    # List the invitations
    #
    # Lists invitations
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConsumerInvitationList] operation results.
    #
    def list_invitations_next(next_page_link, custom_headers:nil)
      response = list_invitations_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List the invitations
    #
    # Lists invitations
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_invitations_next_with_http_info(next_page_link, custom_headers:nil)
      list_invitations_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # List the invitations
    #
    # Lists invitations
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_invitations_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::ConsumerInvitationList.mapper()
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
    # List the invitations
    #
    # Lists invitations
    #
    # @param skip_token [String] The continuation token
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConsumerInvitationList] which provide lazy access to pages of the
    # response.
    #
    def list_invitations_as_lazy(skip_token:nil, custom_headers:nil)
      response = list_invitations_async(skip_token:skip_token, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_invitations_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
