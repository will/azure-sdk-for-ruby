# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  #
  # Compute Client
  #
  class VirtualMachineScaleSetRollingUpgrades
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VirtualMachineScaleSetRollingUpgrades class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ComputeManagementClient] reference to the ComputeManagementClient
    attr_reader :client

    #
    # Cancels the current virtual machine scale set rolling upgrade.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def cancel(resource_group_name, vm_scale_set_name, custom_headers:nil)
      response = cancel_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def cancel_async(resource_group_name, vm_scale_set_name, custom_headers:nil)
      # Send request
      promise = begin_cancel_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Starts a rolling upgrade to move all virtual machine scale set instances to
    # the latest available Platform Image OS version. Instances which are already
    # running the latest available OS version are not affected.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def start_osupgrade(resource_group_name, vm_scale_set_name, custom_headers:nil)
      response = start_osupgrade_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def start_osupgrade_async(resource_group_name, vm_scale_set_name, custom_headers:nil)
      # Send request
      promise = begin_start_osupgrade_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Starts a rolling upgrade to move all extensions for all virtual machine scale
    # set instances to the latest available extension version. Instances which are
    # already running the latest extension versions are not affected.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def start_extension_upgrade(resource_group_name, vm_scale_set_name, custom_headers:nil)
      response = start_extension_upgrade_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def start_extension_upgrade_async(resource_group_name, vm_scale_set_name, custom_headers:nil)
      # Send request
      promise = begin_start_extension_upgrade_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the status of the latest virtual machine scale set rolling upgrade.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RollingUpgradeStatusInfo] operation results.
    #
    def get_latest(resource_group_name, vm_scale_set_name, custom_headers:nil)
      response = get_latest_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the status of the latest virtual machine scale set rolling upgrade.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_latest_with_http_info(resource_group_name, vm_scale_set_name, custom_headers:nil)
      get_latest_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the status of the latest virtual machine scale set rolling upgrade.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_latest_async(resource_group_name, vm_scale_set_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vm_scale_set_name is nil' if vm_scale_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/rollingUpgrades/latest'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'vmScaleSetName' => vm_scale_set_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::Compute::Mgmt::V2019_03_01::Models::RollingUpgradeStatusInfo.mapper()
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
    # Cancels the current virtual machine scale set rolling upgrade.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_cancel(resource_group_name, vm_scale_set_name, custom_headers:nil)
      response = begin_cancel_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Cancels the current virtual machine scale set rolling upgrade.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_cancel_with_http_info(resource_group_name, vm_scale_set_name, custom_headers:nil)
      begin_cancel_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
    end

    #
    # Cancels the current virtual machine scale set rolling upgrade.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_cancel_async(resource_group_name, vm_scale_set_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vm_scale_set_name is nil' if vm_scale_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/rollingUpgrades/cancel'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'vmScaleSetName' => vm_scale_set_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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

        result
      end

      promise.execute
    end

    #
    # Starts a rolling upgrade to move all virtual machine scale set instances to
    # the latest available Platform Image OS version. Instances which are already
    # running the latest available OS version are not affected.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_start_osupgrade(resource_group_name, vm_scale_set_name, custom_headers:nil)
      response = begin_start_osupgrade_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Starts a rolling upgrade to move all virtual machine scale set instances to
    # the latest available Platform Image OS version. Instances which are already
    # running the latest available OS version are not affected.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_start_osupgrade_with_http_info(resource_group_name, vm_scale_set_name, custom_headers:nil)
      begin_start_osupgrade_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
    end

    #
    # Starts a rolling upgrade to move all virtual machine scale set instances to
    # the latest available Platform Image OS version. Instances which are already
    # running the latest available OS version are not affected.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_start_osupgrade_async(resource_group_name, vm_scale_set_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vm_scale_set_name is nil' if vm_scale_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/osRollingUpgrade'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'vmScaleSetName' => vm_scale_set_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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

        result
      end

      promise.execute
    end

    #
    # Starts a rolling upgrade to move all extensions for all virtual machine scale
    # set instances to the latest available extension version. Instances which are
    # already running the latest extension versions are not affected.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_start_extension_upgrade(resource_group_name, vm_scale_set_name, custom_headers:nil)
      response = begin_start_extension_upgrade_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Starts a rolling upgrade to move all extensions for all virtual machine scale
    # set instances to the latest available extension version. Instances which are
    # already running the latest extension versions are not affected.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_start_extension_upgrade_with_http_info(resource_group_name, vm_scale_set_name, custom_headers:nil)
      begin_start_extension_upgrade_async(resource_group_name, vm_scale_set_name, custom_headers:custom_headers).value!
    end

    #
    # Starts a rolling upgrade to move all extensions for all virtual machine scale
    # set instances to the latest available extension version. Instances which are
    # already running the latest extension versions are not affected.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_scale_set_name [String] The name of the VM scale set.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_start_extension_upgrade_async(resource_group_name, vm_scale_set_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vm_scale_set_name is nil' if vm_scale_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensionRollingUpgrade'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'vmScaleSetName' => vm_scale_set_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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

        result
      end

      promise.execute
    end

  end
end
