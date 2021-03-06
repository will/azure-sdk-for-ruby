# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_analysis_services'

module Azure::AnalysisServices::Profiles::Latest
  module Mgmt
    Servers = Azure::AnalysisServices::Mgmt::V2017_08_01::Servers
    Operations = Azure::AnalysisServices::Mgmt::V2017_08_01::Operations

    module Models
      AnalysisServicesServerUpdateParameters = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::AnalysisServicesServerUpdateParameters
      OperationDisplay = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::OperationDisplay
      GatewayListStatusLive = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::GatewayListStatusLive
      OperationListResult = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::OperationListResult
      GatewayError = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::GatewayError
      Resource = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::Resource
      GatewayListStatusError = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::GatewayListStatusError
      AnalysisServicesServers = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::AnalysisServicesServers
      CheckServerNameAvailabilityParameters = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::CheckServerNameAvailabilityParameters
      GatewayDetails = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::GatewayDetails
      CheckServerNameAvailabilityResult = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::CheckServerNameAvailabilityResult
      IPv4FirewallSettings = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::IPv4FirewallSettings
      ErrorResponse = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ErrorResponse
      ResourceSku = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ResourceSku
      OperationStatus = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::OperationStatus
      ServerAdministrators = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ServerAdministrators
      SkuEnumerationForNewResourceResult = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::SkuEnumerationForNewResourceResult
      Operation = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::Operation
      SkuDetailsForExistingResource = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::SkuDetailsForExistingResource
      IPv4FirewallRule = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::IPv4FirewallRule
      SkuEnumerationForExistingResourceResult = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::SkuEnumerationForExistingResourceResult
      AnalysisServicesServer = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::AnalysisServicesServer
      SkuTier = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::SkuTier
      State = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::State
      ProvisioningState = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ProvisioningState
      ConnectionMode = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ConnectionMode
      Status = Azure::AnalysisServices::Mgmt::V2017_08_01::Models::Status
    end

    #
    # AnalysisServicesManagementClass
    #
    class AnalysisServicesManagementClass
      attr_reader :servers, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::AnalysisServices::Mgmt::V2017_08_01::AnalysisServicesManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @servers = @client_0.servers
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/AnalysisServices/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def analysis_services_server_update_parameters
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::AnalysisServicesServerUpdateParameters
      end
      def operation_display
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::OperationDisplay
      end
      def gateway_list_status_live
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::GatewayListStatusLive
      end
      def operation_list_result
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::OperationListResult
      end
      def gateway_error
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::GatewayError
      end
      def resource
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::Resource
      end
      def gateway_list_status_error
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::GatewayListStatusError
      end
      def analysis_services_servers
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::AnalysisServicesServers
      end
      def check_server_name_availability_parameters
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::CheckServerNameAvailabilityParameters
      end
      def gateway_details
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::GatewayDetails
      end
      def check_server_name_availability_result
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::CheckServerNameAvailabilityResult
      end
      def ipv4_firewall_settings
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::IPv4FirewallSettings
      end
      def error_response
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ErrorResponse
      end
      def resource_sku
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ResourceSku
      end
      def operation_status
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::OperationStatus
      end
      def server_administrators
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ServerAdministrators
      end
      def sku_enumeration_for_new_resource_result
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::SkuEnumerationForNewResourceResult
      end
      def operation
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::Operation
      end
      def sku_details_for_existing_resource
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::SkuDetailsForExistingResource
      end
      def ipv4_firewall_rule
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::IPv4FirewallRule
      end
      def sku_enumeration_for_existing_resource_result
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::SkuEnumerationForExistingResourceResult
      end
      def analysis_services_server
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::AnalysisServicesServer
      end
      def sku_tier
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::SkuTier
      end
      def state
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::State
      end
      def provisioning_state
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ProvisioningState
      end
      def connection_mode
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::ConnectionMode
      end
      def status
        Azure::AnalysisServices::Mgmt::V2017_08_01::Models::Status
      end
    end
  end
end
