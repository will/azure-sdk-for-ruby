# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  #
  # The DevTest Labs Client.
  #
  class NotificationChannels
    include MsRestAzure

    #
    # Creates and initializes a new instance of the NotificationChannels class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DevTestLabsClient] reference to the DevTestLabsClient
    attr_reader :client

    #
    # List notification channels in a given lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=webHookUrl)'
    # @param filter [String] The filter to apply to the operation. Example:
    # '$filter=contains(name,'myName')
    # @param top [Integer] The maximum number of resources to return from the
    # operation. Example: '$top=10'
    # @param orderby [String] The ordering expression for the results, using OData
    # notation. Example: '$orderby=name desc'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<NotificationChannel>] operation results.
    #
    def list(resource_group_name, lab_name, expand:nil, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, lab_name, expand:expand, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List notification channels in a given lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=webHookUrl)'
    # @param filter [String] The filter to apply to the operation. Example:
    # '$filter=contains(name,'myName')
    # @param top [Integer] The maximum number of resources to return from the
    # operation. Example: '$top=10'
    # @param orderby [String] The ordering expression for the results, using OData
    # notation. Example: '$orderby=name desc'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, lab_name, expand:nil, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      list_async(resource_group_name, lab_name, expand:expand, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers).value!
    end

    #
    # List notification channels in a given lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=webHookUrl)'
    # @param filter [String] The filter to apply to the operation. Example:
    # '$filter=contains(name,'myName')
    # @param top [Integer] The maximum number of resources to return from the
    # operation. Example: '$top=10'
    # @param orderby [String] The ordering expression for the results, using OData
    # notation. Example: '$orderby=name desc'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, lab_name, expand:nil, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/notificationchannels'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name},
          query_params: {'$expand' => expand,'$filter' => filter,'$top' => top,'$orderby' => orderby,'api-version' => @client.api_version},
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
            result_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelList.mapper()
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
    # Get notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=webHookUrl)'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NotificationChannel] operation results.
    #
    def get(resource_group_name, lab_name, name, expand:nil, custom_headers:nil)
      response = get_async(resource_group_name, lab_name, name, expand:expand, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=webHookUrl)'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, lab_name, name, expand:nil, custom_headers:nil)
      get_async(resource_group_name, lab_name, name, expand:expand, custom_headers:custom_headers).value!
    end

    #
    # Get notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=webHookUrl)'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, lab_name, name, expand:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/notificationchannels/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name,'name' => name},
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
            result_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannel.mapper()
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
    # Create or replace an existing notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notification_channel [NotificationChannel] A notification.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NotificationChannel] operation results.
    #
    def create_or_update(resource_group_name, lab_name, name, notification_channel, custom_headers:nil)
      response = create_or_update_async(resource_group_name, lab_name, name, notification_channel, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or replace an existing notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notification_channel [NotificationChannel] A notification.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, lab_name, name, notification_channel, custom_headers:nil)
      create_or_update_async(resource_group_name, lab_name, name, notification_channel, custom_headers:custom_headers).value!
    end

    #
    # Create or replace an existing notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notification_channel [NotificationChannel] A notification.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, lab_name, name, notification_channel, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'notification_channel is nil' if notification_channel.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannel.mapper()
      request_content = @client.serialize(request_mapper,  notification_channel)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/notificationchannels/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name,'name' => name},
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
            result_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannel.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannel.mapper()
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
    # Delete notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, lab_name, name, custom_headers:nil)
      response = delete_async(resource_group_name, lab_name, name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, lab_name, name, custom_headers:nil)
      delete_async(resource_group_name, lab_name, name, custom_headers:custom_headers).value!
    end

    #
    # Delete notification channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, lab_name, name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/notificationchannels/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name,'name' => name},
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
    # Allows modifying tags of notification channels. All other properties will be
    # ignored.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notification_channel [NotificationChannelFragment] A notification.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NotificationChannel] operation results.
    #
    def update(resource_group_name, lab_name, name, notification_channel, custom_headers:nil)
      response = update_async(resource_group_name, lab_name, name, notification_channel, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Allows modifying tags of notification channels. All other properties will be
    # ignored.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notification_channel [NotificationChannelFragment] A notification.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, lab_name, name, notification_channel, custom_headers:nil)
      update_async(resource_group_name, lab_name, name, notification_channel, custom_headers:custom_headers).value!
    end

    #
    # Allows modifying tags of notification channels. All other properties will be
    # ignored.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notification_channel [NotificationChannelFragment] A notification.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, lab_name, name, notification_channel, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'notification_channel is nil' if notification_channel.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelFragment.mapper()
      request_content = @client.serialize(request_mapper,  notification_channel)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/notificationchannels/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name,'name' => name},
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
            result_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannel.mapper()
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
    # Send notification to provided channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notify_parameters [NotifyParameters] Properties for generating a
    # Notification.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def notify(resource_group_name, lab_name, name, notify_parameters, custom_headers:nil)
      response = notify_async(resource_group_name, lab_name, name, notify_parameters, custom_headers:custom_headers).value!
      nil
    end

    #
    # Send notification to provided channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notify_parameters [NotifyParameters] Properties for generating a
    # Notification.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def notify_with_http_info(resource_group_name, lab_name, name, notify_parameters, custom_headers:nil)
      notify_async(resource_group_name, lab_name, name, notify_parameters, custom_headers:custom_headers).value!
    end

    #
    # Send notification to provided channel.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the notification channel.
    # @param notify_parameters [NotifyParameters] Properties for generating a
    # Notification.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def notify_async(resource_group_name, lab_name, name, notify_parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'notify_parameters is nil' if notify_parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotifyParameters.mapper()
      request_content = @client.serialize(request_mapper,  notify_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/notificationchannels/{name}/notify'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name,'name' => name},
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
    # List notification channels in a given lab.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NotificationChannelList] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List notification channels in a given lab.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # List notification channels in a given lab.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelList.mapper()
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
    # List notification channels in a given lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=webHookUrl)'
    # @param filter [String] The filter to apply to the operation. Example:
    # '$filter=contains(name,'myName')
    # @param top [Integer] The maximum number of resources to return from the
    # operation. Example: '$top=10'
    # @param orderby [String] The ordering expression for the results, using OData
    # notation. Example: '$orderby=name desc'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NotificationChannelList] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(resource_group_name, lab_name, expand:nil, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      response = list_async(resource_group_name, lab_name, expand:expand, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
