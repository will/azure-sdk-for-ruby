# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  #
  # The Azure Data Factory V2 management API provides a RESTful set of web
  # services that interact with Azure Data Factory V2 services.
  #
  class Datasets
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Datasets class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataFactoryManagementClient] reference to the DataFactoryManagementClient
    attr_reader :client

    #
    # Lists datasets.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<DatasetResource>] operation results.
    #
    def list_by_factory(resource_group_name, factory_name, custom_headers:nil)
      first_page = list_by_factory_as_lazy(resource_group_name, factory_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists datasets.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_factory_with_http_info(resource_group_name, factory_name, custom_headers:nil)
      list_by_factory_async(resource_group_name, factory_name, custom_headers:custom_headers).value!
    end

    #
    # Lists datasets.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_factory_async(resource_group_name, factory_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'factory_name is nil' if factory_name.nil?
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MaxLength': '63'" if !factory_name.nil? && factory_name.length > 63
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MinLength': '3'" if !factory_name.nil? && factory_name.length < 3
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$'" if !factory_name.nil? && factory_name.match(Regexp.new('^^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/datasets'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'factoryName' => factory_name},
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
            result_mapper = Azure::DataFactory::Mgmt::V2017_09_01_preview::Models::DatasetListResponse.mapper()
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
    # Creates or updates a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param dataset [DatasetResource] Dataset resource definition.
    # @param if_match [String] ETag of the dataset entity.  Should only be
    # specified for update, for which it should match existing entity or can be *
    # for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatasetResource] operation results.
    #
    def create_or_update(resource_group_name, factory_name, dataset_name, dataset, if_match:nil, custom_headers:nil)
      response = create_or_update_async(resource_group_name, factory_name, dataset_name, dataset, if_match:if_match, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param dataset [DatasetResource] Dataset resource definition.
    # @param if_match [String] ETag of the dataset entity.  Should only be
    # specified for update, for which it should match existing entity or can be *
    # for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, factory_name, dataset_name, dataset, if_match:nil, custom_headers:nil)
      create_or_update_async(resource_group_name, factory_name, dataset_name, dataset, if_match:if_match, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param dataset [DatasetResource] Dataset resource definition.
    # @param if_match [String] ETag of the dataset entity.  Should only be
    # specified for update, for which it should match existing entity or can be *
    # for unconditional update.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, factory_name, dataset_name, dataset, if_match:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'factory_name is nil' if factory_name.nil?
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MaxLength': '63'" if !factory_name.nil? && factory_name.length > 63
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MinLength': '3'" if !factory_name.nil? && factory_name.length < 3
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$'" if !factory_name.nil? && factory_name.match(Regexp.new('^^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$$')).nil?
      fail ArgumentError, 'dataset_name is nil' if dataset_name.nil?
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'MaxLength': '260'" if !dataset_name.nil? && dataset_name.length > 260
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'MinLength': '1'" if !dataset_name.nil? && dataset_name.length < 1
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$'" if !dataset_name.nil? && dataset_name.match(Regexp.new('^^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'dataset is nil' if dataset.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DataFactory::Mgmt::V2017_09_01_preview::Models::DatasetResource.mapper()
      request_content = @client.serialize(request_mapper,  dataset)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/datasets/{datasetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'factoryName' => factory_name,'datasetName' => dataset_name},
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
            result_mapper = Azure::DataFactory::Mgmt::V2017_09_01_preview::Models::DatasetResource.mapper()
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
    # Gets a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatasetResource] operation results.
    #
    def get(resource_group_name, factory_name, dataset_name, custom_headers:nil)
      response = get_async(resource_group_name, factory_name, dataset_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, factory_name, dataset_name, custom_headers:nil)
      get_async(resource_group_name, factory_name, dataset_name, custom_headers:custom_headers).value!
    end

    #
    # Gets a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, factory_name, dataset_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'factory_name is nil' if factory_name.nil?
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MaxLength': '63'" if !factory_name.nil? && factory_name.length > 63
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MinLength': '3'" if !factory_name.nil? && factory_name.length < 3
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$'" if !factory_name.nil? && factory_name.match(Regexp.new('^^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$$')).nil?
      fail ArgumentError, 'dataset_name is nil' if dataset_name.nil?
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'MaxLength': '260'" if !dataset_name.nil? && dataset_name.length > 260
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'MinLength': '1'" if !dataset_name.nil? && dataset_name.length < 1
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$'" if !dataset_name.nil? && dataset_name.match(Regexp.new('^^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/datasets/{datasetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'factoryName' => factory_name,'datasetName' => dataset_name},
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
            result_mapper = Azure::DataFactory::Mgmt::V2017_09_01_preview::Models::DatasetResource.mapper()
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
    # Deletes a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, factory_name, dataset_name, custom_headers:nil)
      response = delete_async(resource_group_name, factory_name, dataset_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, factory_name, dataset_name, custom_headers:nil)
      delete_async(resource_group_name, factory_name, dataset_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes a dataset.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param dataset_name [String] The dataset name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, factory_name, dataset_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'factory_name is nil' if factory_name.nil?
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MaxLength': '63'" if !factory_name.nil? && factory_name.length > 63
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'MinLength': '3'" if !factory_name.nil? && factory_name.length < 3
      fail ArgumentError, "'factory_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$'" if !factory_name.nil? && factory_name.match(Regexp.new('^^[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*$$')).nil?
      fail ArgumentError, 'dataset_name is nil' if dataset_name.nil?
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'MaxLength': '260'" if !dataset_name.nil? && dataset_name.length > 260
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'MinLength': '1'" if !dataset_name.nil? && dataset_name.length < 1
      fail ArgumentError, "'dataset_name' should satisfy the constraint - 'Pattern': '^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$'" if !dataset_name.nil? && dataset_name.match(Regexp.new('^^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/datasets/{datasetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'factoryName' => factory_name,'datasetName' => dataset_name},
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
    # Lists datasets.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatasetListResponse] operation results.
    #
    def list_by_factory_next(next_page_link, custom_headers:nil)
      response = list_by_factory_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists datasets.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_factory_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_factory_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists datasets.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_factory_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::DataFactory::Mgmt::V2017_09_01_preview::Models::DatasetListResponse.mapper()
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
    # Lists datasets.
    #
    # @param resource_group_name [String] The resource group name.
    # @param factory_name [String] The factory name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatasetListResponse] which provide lazy access to pages of the
    # response.
    #
    def list_by_factory_as_lazy(resource_group_name, factory_name, custom_headers:nil)
      response = list_by_factory_async(resource_group_name, factory_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_factory_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
