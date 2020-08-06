# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  #
  # QueryOperations
  #
  class QueryOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the QueryOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CostManagementClient] reference to the CostManagementClient
    attr_reader :client

    #
    # Query the usage data for subscriptionId.
    #
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QueryResult] operation results.
    #
    def usage_by_subscription(parameters, custom_headers:nil)
      response = usage_by_subscription_async(parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Query the usage data for subscriptionId.
    #
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def usage_by_subscription_with_http_info(parameters, custom_headers:nil)
      usage_by_subscription_async(parameters, custom_headers:custom_headers).value!
    end

    #
    # Query the usage data for subscriptionId.
    #
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def usage_by_subscription_async(parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::ReportConfigDefinition.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.CostManagement/Query'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::QueryResult.mapper()
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
    # Query the usage data for subscriptionId and resource group.
    #
    # @param resource_group_name [String] Azure Resource Group Name.
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QueryResult] operation results.
    #
    def usage_by_resource_group(resource_group_name, parameters, custom_headers:nil)
      response = usage_by_resource_group_async(resource_group_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Query the usage data for subscriptionId and resource group.
    #
    # @param resource_group_name [String] Azure Resource Group Name.
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def usage_by_resource_group_with_http_info(resource_group_name, parameters, custom_headers:nil)
      usage_by_resource_group_async(resource_group_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Query the usage data for subscriptionId and resource group.
    #
    # @param resource_group_name [String] Azure Resource Group Name.
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def usage_by_resource_group_async(resource_group_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::ReportConfigDefinition.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.CostManagement/Query'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name},
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::QueryResult.mapper()
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
    # Query the usage data for billing account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QueryResult] operation results.
    #
    def usage_by_billing_account(billing_account_id, parameters, custom_headers:nil)
      response = usage_by_billing_account_async(billing_account_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Query the usage data for billing account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def usage_by_billing_account_with_http_info(billing_account_id, parameters, custom_headers:nil)
      usage_by_billing_account_async(billing_account_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Query the usage data for billing account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def usage_by_billing_account_async(billing_account_id, parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::ReportConfigDefinition.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/providers/Microsoft.CostManagement/Query'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id},
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::QueryResult.mapper()
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
    # Query the usage data for an enrollment account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param enrollment_account_id [String] Enrollment Account ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QueryResult] operation results.
    #
    def usage_by_enrollment_account(billing_account_id, enrollment_account_id, parameters, custom_headers:nil)
      response = usage_by_enrollment_account_async(billing_account_id, enrollment_account_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Query the usage data for an enrollment account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param enrollment_account_id [String] Enrollment Account ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def usage_by_enrollment_account_with_http_info(billing_account_id, enrollment_account_id, parameters, custom_headers:nil)
      usage_by_enrollment_account_async(billing_account_id, enrollment_account_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Query the usage data for an enrollment account.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param enrollment_account_id [String] Enrollment Account ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def usage_by_enrollment_account_async(billing_account_id, enrollment_account_id, parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?
      fail ArgumentError, 'enrollment_account_id is nil' if enrollment_account_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::ReportConfigDefinition.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}/providers/Microsoft.CostManagement/Query'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id,'enrollmentAccountId' => enrollment_account_id},
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::QueryResult.mapper()
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
    # Query the usage data for department.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param department_id [String] Department ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QueryResult] operation results.
    #
    def usage_by_department(billing_account_id, department_id, parameters, custom_headers:nil)
      response = usage_by_department_async(billing_account_id, department_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Query the usage data for department.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param department_id [String] Department ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def usage_by_department_with_http_info(billing_account_id, department_id, parameters, custom_headers:nil)
      usage_by_department_async(billing_account_id, department_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Query the usage data for department.
    #
    # @param billing_account_id [String] BillingAccount ID
    # @param department_id [String] Department ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def usage_by_department_async(billing_account_id, department_id, parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?
      fail ArgumentError, 'department_id is nil' if department_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::ReportConfigDefinition.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}/providers/Microsoft.CostManagement/Query'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id,'departmentId' => department_id},
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::QueryResult.mapper()
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
    # Lists the usage data for management group.
    #
    # @param management_group_id [String] ManagementGroup ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QueryResult] operation results.
    #
    def usage_by_management_group(management_group_id, parameters, custom_headers:nil)
      response = usage_by_management_group_async(management_group_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the usage data for management group.
    #
    # @param management_group_id [String] ManagementGroup ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def usage_by_management_group_with_http_info(management_group_id, parameters, custom_headers:nil)
      usage_by_management_group_async(management_group_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Lists the usage data for management group.
    #
    # @param management_group_id [String] ManagementGroup ID
    # @param parameters [ReportConfigDefinition] Parameters supplied to the
    # CreateOrUpdate Report Config operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def usage_by_management_group_async(management_group_id, parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'management_group_id is nil' if management_group_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::ReportConfigDefinition.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.CostManagement/Query'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'managementGroupId' => management_group_id},
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
            result_mapper = Azure::CostManagement::Mgmt::V2019_03_01_preview::Models::QueryResult.mapper()
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
