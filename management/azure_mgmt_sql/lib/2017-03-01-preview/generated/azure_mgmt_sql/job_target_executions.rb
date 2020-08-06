# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  #
  # The Azure SQL Database management API provides a RESTful set of web
  # services that interact with Azure SQL Database services to manage your
  # databases. The API enables you to create, retrieve, update, and delete
  # databases.
  #
  class JobTargetExecutions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the JobTargetExecutions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SqlManagementClient] reference to the SqlManagementClient
    attr_reader :client

    #
    # Lists target executions for all steps of a job execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The id of the job execution
    # @param create_time_min [DateTime] If specified, only job executions created
    # at or after the specified time are included.
    # @param create_time_max [DateTime] If specified, only job executions created
    # before the specified time are included.
    # @param end_time_min [DateTime] If specified, only job executions completed at
    # or after the specified time are included.
    # @param end_time_max [DateTime] If specified, only job executions completed
    # before the specified time are included.
    # @param is_active [Boolean] If specified, only active or only completed job
    # executions are included.
    # @param skip [Integer] The number of elements in the collection to skip.
    # @param top [Integer] The number of elements to return from the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<JobExecution>] operation results.
    #
    def list_by_job_execution(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, create_time_min:nil, create_time_max:nil, end_time_min:nil, end_time_max:nil, is_active:nil, skip:nil, top:nil, custom_headers:nil)
      first_page = list_by_job_execution_as_lazy(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, create_time_min:create_time_min, create_time_max:create_time_max, end_time_min:end_time_min, end_time_max:end_time_max, is_active:is_active, skip:skip, top:top, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists target executions for all steps of a job execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The id of the job execution
    # @param create_time_min [DateTime] If specified, only job executions created
    # at or after the specified time are included.
    # @param create_time_max [DateTime] If specified, only job executions created
    # before the specified time are included.
    # @param end_time_min [DateTime] If specified, only job executions completed at
    # or after the specified time are included.
    # @param end_time_max [DateTime] If specified, only job executions completed
    # before the specified time are included.
    # @param is_active [Boolean] If specified, only active or only completed job
    # executions are included.
    # @param skip [Integer] The number of elements in the collection to skip.
    # @param top [Integer] The number of elements to return from the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_job_execution_with_http_info(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, create_time_min:nil, create_time_max:nil, end_time_min:nil, end_time_max:nil, is_active:nil, skip:nil, top:nil, custom_headers:nil)
      list_by_job_execution_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, create_time_min:create_time_min, create_time_max:create_time_max, end_time_min:end_time_min, end_time_max:end_time_max, is_active:is_active, skip:skip, top:top, custom_headers:custom_headers).value!
    end

    #
    # Lists target executions for all steps of a job execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The id of the job execution
    # @param create_time_min [DateTime] If specified, only job executions created
    # at or after the specified time are included.
    # @param create_time_max [DateTime] If specified, only job executions created
    # before the specified time are included.
    # @param end_time_min [DateTime] If specified, only job executions completed at
    # or after the specified time are included.
    # @param end_time_max [DateTime] If specified, only job executions completed
    # before the specified time are included.
    # @param is_active [Boolean] If specified, only active or only completed job
    # executions are included.
    # @param skip [Integer] The number of elements in the collection to skip.
    # @param top [Integer] The number of elements to return from the collection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_job_execution_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, create_time_min:nil, create_time_max:nil, end_time_min:nil, end_time_max:nil, is_active:nil, skip:nil, top:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'job_agent_name is nil' if job_agent_name.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, 'job_execution_id is nil' if job_execution_id.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}/jobs/{jobName}/executions/{jobExecutionId}/targets'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'jobAgentName' => job_agent_name,'jobName' => job_name,'jobExecutionId' => job_execution_id,'subscriptionId' => @client.subscription_id},
          query_params: {'createTimeMin' => create_time_min,'createTimeMax' => create_time_max,'endTimeMin' => end_time_min,'endTimeMax' => end_time_max,'isActive' => is_active,'$skip' => skip,'$top' => top,'api-version' => @client.api_version},
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
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionListResult.mapper()
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
    # Lists the target executions of a job step execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The id of the job execution
    # @param step_name [String] The name of the step.
    # @param create_time_min [DateTime] If specified, only job executions created
    # at or after the specified time are included.
    # @param create_time_max [DateTime] If specified, only job executions created
    # before the specified time are included.
    # @param end_time_min [DateTime] If specified, only job executions completed at
    # or after the specified time are included.
    # @param end_time_max [DateTime] If specified, only job executions completed
    # before the specified time are included.
    # @param is_active [Boolean] If specified, only active or only completed job
    # executions are included.
    # @param skip [Integer] The number of elements in the collection to skip.
    # @param top [Integer] The number of elements to return from the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<JobExecution>] operation results.
    #
    def list_by_step(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, create_time_min:nil, create_time_max:nil, end_time_min:nil, end_time_max:nil, is_active:nil, skip:nil, top:nil, custom_headers:nil)
      first_page = list_by_step_as_lazy(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, create_time_min:create_time_min, create_time_max:create_time_max, end_time_min:end_time_min, end_time_max:end_time_max, is_active:is_active, skip:skip, top:top, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the target executions of a job step execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The id of the job execution
    # @param step_name [String] The name of the step.
    # @param create_time_min [DateTime] If specified, only job executions created
    # at or after the specified time are included.
    # @param create_time_max [DateTime] If specified, only job executions created
    # before the specified time are included.
    # @param end_time_min [DateTime] If specified, only job executions completed at
    # or after the specified time are included.
    # @param end_time_max [DateTime] If specified, only job executions completed
    # before the specified time are included.
    # @param is_active [Boolean] If specified, only active or only completed job
    # executions are included.
    # @param skip [Integer] The number of elements in the collection to skip.
    # @param top [Integer] The number of elements to return from the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_step_with_http_info(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, create_time_min:nil, create_time_max:nil, end_time_min:nil, end_time_max:nil, is_active:nil, skip:nil, top:nil, custom_headers:nil)
      list_by_step_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, create_time_min:create_time_min, create_time_max:create_time_max, end_time_min:end_time_min, end_time_max:end_time_max, is_active:is_active, skip:skip, top:top, custom_headers:custom_headers).value!
    end

    #
    # Lists the target executions of a job step execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The id of the job execution
    # @param step_name [String] The name of the step.
    # @param create_time_min [DateTime] If specified, only job executions created
    # at or after the specified time are included.
    # @param create_time_max [DateTime] If specified, only job executions created
    # before the specified time are included.
    # @param end_time_min [DateTime] If specified, only job executions completed at
    # or after the specified time are included.
    # @param end_time_max [DateTime] If specified, only job executions completed
    # before the specified time are included.
    # @param is_active [Boolean] If specified, only active or only completed job
    # executions are included.
    # @param skip [Integer] The number of elements in the collection to skip.
    # @param top [Integer] The number of elements to return from the collection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_step_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, create_time_min:nil, create_time_max:nil, end_time_min:nil, end_time_max:nil, is_active:nil, skip:nil, top:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'job_agent_name is nil' if job_agent_name.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, 'job_execution_id is nil' if job_execution_id.nil?
      fail ArgumentError, 'step_name is nil' if step_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}/jobs/{jobName}/executions/{jobExecutionId}/steps/{stepName}/targets'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'jobAgentName' => job_agent_name,'jobName' => job_name,'jobExecutionId' => job_execution_id,'stepName' => step_name,'subscriptionId' => @client.subscription_id},
          query_params: {'createTimeMin' => create_time_min,'createTimeMax' => create_time_max,'endTimeMin' => end_time_min,'endTimeMax' => end_time_max,'isActive' => is_active,'$skip' => skip,'$top' => top,'api-version' => @client.api_version},
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
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionListResult.mapper()
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
    # Gets a target execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The unique id of the job execution
    # @param step_name [String] The name of the step.
    # @param target_id The target id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobExecution] operation results.
    #
    def get(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, target_id, custom_headers:nil)
      response = get_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, target_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a target execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The unique id of the job execution
    # @param step_name [String] The name of the step.
    # @param target_id The target id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, target_id, custom_headers:nil)
      get_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, target_id, custom_headers:custom_headers).value!
    end

    #
    # Gets a target execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The unique id of the job execution
    # @param step_name [String] The name of the step.
    # @param target_id The target id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, target_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'job_agent_name is nil' if job_agent_name.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, 'job_execution_id is nil' if job_execution_id.nil?
      fail ArgumentError, 'step_name is nil' if step_name.nil?
      fail ArgumentError, 'target_id is nil' if target_id.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/jobAgents/{jobAgentName}/jobs/{jobName}/executions/{jobExecutionId}/steps/{stepName}/targets/{targetId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'jobAgentName' => job_agent_name,'jobName' => job_name,'jobExecutionId' => job_execution_id,'stepName' => step_name,'targetId' => target_id,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecution.mapper()
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
    # Lists target executions for all steps of a job execution.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobExecutionListResult] operation results.
    #
    def list_by_job_execution_next(next_page_link, custom_headers:nil)
      response = list_by_job_execution_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists target executions for all steps of a job execution.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_job_execution_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_job_execution_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists target executions for all steps of a job execution.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_job_execution_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionListResult.mapper()
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
    # Lists the target executions of a job step execution.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobExecutionListResult] operation results.
    #
    def list_by_step_next(next_page_link, custom_headers:nil)
      response = list_by_step_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the target executions of a job step execution.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_step_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_step_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the target executions of a job step execution.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_step_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionListResult.mapper()
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
    # Lists target executions for all steps of a job execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The id of the job execution
    # @param create_time_min [DateTime] If specified, only job executions created
    # at or after the specified time are included.
    # @param create_time_max [DateTime] If specified, only job executions created
    # before the specified time are included.
    # @param end_time_min [DateTime] If specified, only job executions completed at
    # or after the specified time are included.
    # @param end_time_max [DateTime] If specified, only job executions completed
    # before the specified time are included.
    # @param is_active [Boolean] If specified, only active or only completed job
    # executions are included.
    # @param skip [Integer] The number of elements in the collection to skip.
    # @param top [Integer] The number of elements to return from the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobExecutionListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_job_execution_as_lazy(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, create_time_min:nil, create_time_max:nil, end_time_min:nil, end_time_max:nil, is_active:nil, skip:nil, top:nil, custom_headers:nil)
      response = list_by_job_execution_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, create_time_min:create_time_min, create_time_max:create_time_max, end_time_min:end_time_min, end_time_max:end_time_max, is_active:is_active, skip:skip, top:top, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_job_execution_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Lists the target executions of a job step execution.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param job_agent_name [String] The name of the job agent.
    # @param job_name [String] The name of the job to get.
    # @param job_execution_id The id of the job execution
    # @param step_name [String] The name of the step.
    # @param create_time_min [DateTime] If specified, only job executions created
    # at or after the specified time are included.
    # @param create_time_max [DateTime] If specified, only job executions created
    # before the specified time are included.
    # @param end_time_min [DateTime] If specified, only job executions completed at
    # or after the specified time are included.
    # @param end_time_max [DateTime] If specified, only job executions completed
    # before the specified time are included.
    # @param is_active [Boolean] If specified, only active or only completed job
    # executions are included.
    # @param skip [Integer] The number of elements in the collection to skip.
    # @param top [Integer] The number of elements to return from the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobExecutionListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_step_as_lazy(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, create_time_min:nil, create_time_max:nil, end_time_min:nil, end_time_max:nil, is_active:nil, skip:nil, top:nil, custom_headers:nil)
      response = list_by_step_async(resource_group_name, server_name, job_agent_name, job_name, job_execution_id, step_name, create_time_min:create_time_min, create_time_max:create_time_max, end_time_min:end_time_min, end_time_max:end_time_max, is_active:is_active, skip:skip, top:top, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_step_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
