# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2019_11_01
  #
  # Creates a Microsoft.DataShare management client.
  #
  class Invitations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Invitations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataShareManagementClient] reference to the DataShareManagementClient
    attr_reader :client

    #
    # Get Invitation in a share.
    #
    # Get an invitation in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param invitation_name [String] The name of the invitation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Invitation] operation results.
    #
    def get(resource_group_name, account_name, share_name, invitation_name, custom_headers:nil)
      response = get_async(resource_group_name, account_name, share_name, invitation_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get Invitation in a share.
    #
    # Get an invitation in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param invitation_name [String] The name of the invitation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, account_name, share_name, invitation_name, custom_headers:nil)
      get_async(resource_group_name, account_name, share_name, invitation_name, custom_headers:custom_headers).value!
    end

    #
    # Get Invitation in a share.
    #
    # Get an invitation in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param invitation_name [String] The name of the invitation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, account_name, share_name, invitation_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'share_name is nil' if share_name.nil?
      fail ArgumentError, 'invitation_name is nil' if invitation_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/invitations/{invitationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'shareName' => share_name,'invitationName' => invitation_name},
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
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::Invitation.mapper()
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
    # Sends a new invitation to a recipient to access a share.
    #
    # Create an invitation
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share to send the invitation for.
    # @param invitation_name [String] The name of the invitation.
    # @param invitation [Invitation] Invitation details.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Invitation] operation results.
    #
    def create(resource_group_name, account_name, share_name, invitation_name, invitation, custom_headers:nil)
      response = create_async(resource_group_name, account_name, share_name, invitation_name, invitation, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Sends a new invitation to a recipient to access a share.
    #
    # Create an invitation
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share to send the invitation for.
    # @param invitation_name [String] The name of the invitation.
    # @param invitation [Invitation] Invitation details.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_group_name, account_name, share_name, invitation_name, invitation, custom_headers:nil)
      create_async(resource_group_name, account_name, share_name, invitation_name, invitation, custom_headers:custom_headers).value!
    end

    #
    # Sends a new invitation to a recipient to access a share.
    #
    # Create an invitation
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share to send the invitation for.
    # @param invitation_name [String] The name of the invitation.
    # @param invitation [Invitation] Invitation details.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_group_name, account_name, share_name, invitation_name, invitation, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'share_name is nil' if share_name.nil?
      fail ArgumentError, 'invitation_name is nil' if invitation_name.nil?
      fail ArgumentError, 'invitation is nil' if invitation.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::Invitation.mapper()
      request_content = @client.serialize(request_mapper,  invitation)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/invitations/{invitationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'shareName' => share_name,'invitationName' => invitation_name},
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
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::Invitation.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::Invitation.mapper()
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
    # Delete Invitation in a share.
    #
    # Delete an invitation in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param invitation_name [String] The name of the invitation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, account_name, share_name, invitation_name, custom_headers:nil)
      response = delete_async(resource_group_name, account_name, share_name, invitation_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete Invitation in a share.
    #
    # Delete an invitation in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param invitation_name [String] The name of the invitation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, account_name, share_name, invitation_name, custom_headers:nil)
      delete_async(resource_group_name, account_name, share_name, invitation_name, custom_headers:custom_headers).value!
    end

    #
    # Delete Invitation in a share.
    #
    # Delete an invitation in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param invitation_name [String] The name of the invitation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, account_name, share_name, invitation_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'share_name is nil' if share_name.nil?
      fail ArgumentError, 'invitation_name is nil' if invitation_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/invitations/{invitationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'shareName' => share_name,'invitationName' => invitation_name},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # List all Invitations in a share.
    #
    # List invitations in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param skip_token [String] The continuation token
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Invitation>] operation results.
    #
    def list_by_share(resource_group_name, account_name, share_name, skip_token:nil, custom_headers:nil)
      first_page = list_by_share_as_lazy(resource_group_name, account_name, share_name, skip_token:skip_token, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List all Invitations in a share.
    #
    # List invitations in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param skip_token [String] The continuation token
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_share_with_http_info(resource_group_name, account_name, share_name, skip_token:nil, custom_headers:nil)
      list_by_share_async(resource_group_name, account_name, share_name, skip_token:skip_token, custom_headers:custom_headers).value!
    end

    #
    # List all Invitations in a share.
    #
    # List invitations in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param skip_token [String] The continuation token
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_share_async(resource_group_name, account_name, share_name, skip_token:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'share_name is nil' if share_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/invitations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'shareName' => share_name},
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
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::InvitationList.mapper()
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
    # List all Invitations in a share.
    #
    # List invitations in a share
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [InvitationList] operation results.
    #
    def list_by_share_next(next_page_link, custom_headers:nil)
      response = list_by_share_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List all Invitations in a share.
    #
    # List invitations in a share
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_share_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_share_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # List all Invitations in a share.
    #
    # List invitations in a share
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_share_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::DataShare::Mgmt::V2019_11_01::Models::InvitationList.mapper()
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
    # List all Invitations in a share.
    #
    # List invitations in a share
    #
    # @param resource_group_name [String] The resource group name.
    # @param account_name [String] The name of the share account.
    # @param share_name [String] The name of the share.
    # @param skip_token [String] The continuation token
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [InvitationList] which provide lazy access to pages of the response.
    #
    def list_by_share_as_lazy(resource_group_name, account_name, share_name, skip_token:nil, custom_headers:nil)
      response = list_by_share_async(resource_group_name, account_name, share_name, skip_token:skip_token, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_share_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
