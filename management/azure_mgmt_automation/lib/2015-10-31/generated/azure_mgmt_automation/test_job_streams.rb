# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  #
  # Automation Client
  #
  class TestJobStreams
    include MsRestAzure

    #
    # Creates and initializes a new instance of the TestJobStreams class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AutomationClient] reference to the AutomationClient
    attr_reader :client

    #
    # Retrieve a test job stream of the test job identified by runbook name and
    # stream id.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param job_stream_id [String] The job stream id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobStream] operation results.
    #
    def get(resource_group_name, automation_account_name, runbook_name, job_stream_id, custom_headers:nil)
      response = get_async(resource_group_name, automation_account_name, runbook_name, job_stream_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve a test job stream of the test job identified by runbook name and
    # stream id.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param job_stream_id [String] The job stream id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, automation_account_name, runbook_name, job_stream_id, custom_headers:nil)
      get_async(resource_group_name, automation_account_name, runbook_name, job_stream_id, custom_headers:custom_headers).value!
    end

    #
    # Retrieve a test job stream of the test job identified by runbook name and
    # stream id.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param job_stream_id [String] The job stream id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, automation_account_name, runbook_name, job_stream_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'runbook_name is nil' if runbook_name.nil?
      fail ArgumentError, 'job_stream_id is nil' if job_stream_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}/draft/testJob/streams/{jobStreamId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'runbookName' => runbook_name,'jobStreamId' => job_stream_id},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::JobStream.mapper()
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
    # Retrieve a list of test job streams identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<JobStream>] operation results.
    #
    def list_by_test_job(resource_group_name, automation_account_name, runbook_name, filter:nil, custom_headers:nil)
      first_page = list_by_test_job_as_lazy(resource_group_name, automation_account_name, runbook_name, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Retrieve a list of test job streams identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_test_job_with_http_info(resource_group_name, automation_account_name, runbook_name, filter:nil, custom_headers:nil)
      list_by_test_job_async(resource_group_name, automation_account_name, runbook_name, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Retrieve a list of test job streams identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param filter [String] The filter to apply on the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_test_job_async(resource_group_name, automation_account_name, runbook_name, filter:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'runbook_name is nil' if runbook_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}/draft/testJob/streams'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'runbookName' => runbook_name},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamListResult.mapper()
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
    # Retrieve a list of test job streams identified by runbook name.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobStreamListResult] operation results.
    #
    def list_by_test_job_next(next_page_link, custom_headers:nil)
      response = list_by_test_job_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve a list of test job streams identified by runbook name.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_test_job_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_test_job_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Retrieve a list of test job streams identified by runbook name.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_test_job_next_async(next_page_link, custom_headers:nil)
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamListResult.mapper()
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
    # Retrieve a list of test job streams identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobStreamListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_test_job_as_lazy(resource_group_name, automation_account_name, runbook_name, filter:nil, custom_headers:nil)
      response = list_by_test_job_async(resource_group_name, automation_account_name, runbook_name, filter:filter, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_test_job_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
