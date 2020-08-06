# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  #
  # Stream Analytics Client
  #
  class Transformations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Transformations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StreamAnalyticsManagementClient] reference to the StreamAnalyticsManagementClient
    attr_reader :client

    #
    # Creates a transformation or replaces an already existing transformation under
    # an existing streaming job.
    #
    # @param transformation [Transformation] The definition of the transformation
    # that will be used to create a new transformation or replace the existing one
    # under the streaming job.
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param if_match [String] The ETag of the transformation. Omit this value to
    # always overwrite the current transformation. Specify the last-seen ETag value
    # to prevent accidentally overwritting concurrent changes.
    # @param if_none_match [String] Set to '*' to allow a new transformation to be
    # created, but to prevent updating an existing transformation. Other values
    # will result in a 412 Pre-condition Failed response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Transformation] operation results.
    #
    def create_or_replace(transformation, resource_group_name, job_name, transformation_name, if_match:nil, if_none_match:nil, custom_headers:nil)
      response = create_or_replace_async(transformation, resource_group_name, job_name, transformation_name, if_match:if_match, if_none_match:if_none_match, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a transformation or replaces an already existing transformation under
    # an existing streaming job.
    #
    # @param transformation [Transformation] The definition of the transformation
    # that will be used to create a new transformation or replace the existing one
    # under the streaming job.
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param if_match [String] The ETag of the transformation. Omit this value to
    # always overwrite the current transformation. Specify the last-seen ETag value
    # to prevent accidentally overwritting concurrent changes.
    # @param if_none_match [String] Set to '*' to allow a new transformation to be
    # created, but to prevent updating an existing transformation. Other values
    # will result in a 412 Pre-condition Failed response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_replace_with_http_info(transformation, resource_group_name, job_name, transformation_name, if_match:nil, if_none_match:nil, custom_headers:nil)
      create_or_replace_async(transformation, resource_group_name, job_name, transformation_name, if_match:if_match, if_none_match:if_none_match, custom_headers:custom_headers).value!
    end

    #
    # Creates a transformation or replaces an already existing transformation under
    # an existing streaming job.
    #
    # @param transformation [Transformation] The definition of the transformation
    # that will be used to create a new transformation or replace the existing one
    # under the streaming job.
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param if_match [String] The ETag of the transformation. Omit this value to
    # always overwrite the current transformation. Specify the last-seen ETag value
    # to prevent accidentally overwritting concurrent changes.
    # @param if_none_match [String] Set to '*' to allow a new transformation to be
    # created, but to prevent updating an existing transformation. Other values
    # will result in a 412 Pre-condition Failed response.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_replace_async(transformation, resource_group_name, job_name, transformation_name, if_match:nil, if_none_match:nil, custom_headers:nil)
      fail ArgumentError, 'transformation is nil' if transformation.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, 'transformation_name is nil' if transformation_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['If-None-Match'] = if_none_match unless if_none_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation.mapper()
      request_content = @client.serialize(request_mapper,  transformation)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/streamingjobs/{jobName}/transformations/{transformationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'jobName' => job_name,'transformationName' => transformation_name},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation.mapper()
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
    # Updates an existing transformation under an existing streaming job. This can
    # be used to partially update (ie. update one or two properties) a
    # transformation without affecting the rest the job or transformation
    # definition.
    #
    # @param transformation [Transformation] A Transformation object. The
    # properties specified here will overwrite the corresponding properties in the
    # existing transformation (ie. Those properties will be updated). Any
    # properties that are set to null here will mean that the corresponding
    # property in the existing transformation will remain the same and not change
    # as a result of this PATCH operation.
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param if_match [String] The ETag of the transformation. Omit this value to
    # always overwrite the current transformation. Specify the last-seen ETag value
    # to prevent accidentally overwritting concurrent changes.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Transformation] operation results.
    #
    def update(transformation, resource_group_name, job_name, transformation_name, if_match:nil, custom_headers:nil)
      response = update_async(transformation, resource_group_name, job_name, transformation_name, if_match:if_match, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates an existing transformation under an existing streaming job. This can
    # be used to partially update (ie. update one or two properties) a
    # transformation without affecting the rest the job or transformation
    # definition.
    #
    # @param transformation [Transformation] A Transformation object. The
    # properties specified here will overwrite the corresponding properties in the
    # existing transformation (ie. Those properties will be updated). Any
    # properties that are set to null here will mean that the corresponding
    # property in the existing transformation will remain the same and not change
    # as a result of this PATCH operation.
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param if_match [String] The ETag of the transformation. Omit this value to
    # always overwrite the current transformation. Specify the last-seen ETag value
    # to prevent accidentally overwritting concurrent changes.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(transformation, resource_group_name, job_name, transformation_name, if_match:nil, custom_headers:nil)
      update_async(transformation, resource_group_name, job_name, transformation_name, if_match:if_match, custom_headers:custom_headers).value!
    end

    #
    # Updates an existing transformation under an existing streaming job. This can
    # be used to partially update (ie. update one or two properties) a
    # transformation without affecting the rest the job or transformation
    # definition.
    #
    # @param transformation [Transformation] A Transformation object. The
    # properties specified here will overwrite the corresponding properties in the
    # existing transformation (ie. Those properties will be updated). Any
    # properties that are set to null here will mean that the corresponding
    # property in the existing transformation will remain the same and not change
    # as a result of this PATCH operation.
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param if_match [String] The ETag of the transformation. Omit this value to
    # always overwrite the current transformation. Specify the last-seen ETag value
    # to prevent accidentally overwritting concurrent changes.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(transformation, resource_group_name, job_name, transformation_name, if_match:nil, custom_headers:nil)
      fail ArgumentError, 'transformation is nil' if transformation.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, 'transformation_name is nil' if transformation_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation.mapper()
      request_content = @client.serialize(request_mapper,  transformation)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/streamingjobs/{jobName}/transformations/{transformationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'jobName' => job_name,'transformationName' => transformation_name},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation.mapper()
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
    # Gets details about the specified transformation.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Transformation] operation results.
    #
    def get(resource_group_name, job_name, transformation_name, custom_headers:nil)
      response = get_async(resource_group_name, job_name, transformation_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets details about the specified transformation.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, job_name, transformation_name, custom_headers:nil)
      get_async(resource_group_name, job_name, transformation_name, custom_headers:custom_headers).value!
    end

    #
    # Gets details about the specified transformation.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param job_name [String] The name of the streaming job.
    # @param transformation_name [String] The name of the transformation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, job_name, transformation_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, 'transformation_name is nil' if transformation_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/streamingjobs/{jobName}/transformations/{transformationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'jobName' => job_name,'transformationName' => transformation_name},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation.mapper()
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
