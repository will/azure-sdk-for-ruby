# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_traffic_manager'

module Azure::TrafficManager::Profiles::Latest
  module Mgmt
    Endpoints = Azure::TrafficManager::Mgmt::V2018_04_01::Endpoints
    Profiles = Azure::TrafficManager::Mgmt::V2018_04_01::Profiles
    GeographicHierarchies = Azure::TrafficManager::Mgmt::V2018_04_01::GeographicHierarchies
    HeatMap = Azure::TrafficManager::Mgmt::V2018_04_01::HeatMap
    TrafficManagerUserMetricsKeys = Azure::TrafficManager::Mgmt::V2018_04_01::TrafficManagerUserMetricsKeys

    module Models
      MonitorConfigCustomHeadersItem = Azure::TrafficManager::Mgmt::V2018_04_01::Models::MonitorConfigCustomHeadersItem
      MonitorConfigExpectedStatusCodeRangesItem = Azure::TrafficManager::Mgmt::V2018_04_01::Models::MonitorConfigExpectedStatusCodeRangesItem
      EndpointPropertiesSubnetsItem = Azure::TrafficManager::Mgmt::V2018_04_01::Models::EndpointPropertiesSubnetsItem
      MonitorConfig = Azure::TrafficManager::Mgmt::V2018_04_01::Models::MonitorConfig
      HeatMapEndpoint = Azure::TrafficManager::Mgmt::V2018_04_01::Models::HeatMapEndpoint
      EndpointPropertiesCustomHeadersItem = Azure::TrafficManager::Mgmt::V2018_04_01::Models::EndpointPropertiesCustomHeadersItem
      QueryExperience = Azure::TrafficManager::Mgmt::V2018_04_01::Models::QueryExperience
      DeleteOperationResult = Azure::TrafficManager::Mgmt::V2018_04_01::Models::DeleteOperationResult
      TrafficFlow = Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficFlow
      Region = Azure::TrafficManager::Mgmt::V2018_04_01::Models::Region
      DnsConfig = Azure::TrafficManager::Mgmt::V2018_04_01::Models::DnsConfig
      CheckTrafficManagerRelativeDnsNameAvailabilityParameters = Azure::TrafficManager::Mgmt::V2018_04_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
      ProfileListResult = Azure::TrafficManager::Mgmt::V2018_04_01::Models::ProfileListResult
      Resource = Azure::TrafficManager::Mgmt::V2018_04_01::Models::Resource
      TrafficManagerNameAvailability = Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficManagerNameAvailability
      HeatMapModel = Azure::TrafficManager::Mgmt::V2018_04_01::Models::HeatMapModel
      UserMetricsModel = Azure::TrafficManager::Mgmt::V2018_04_01::Models::UserMetricsModel
      Endpoint = Azure::TrafficManager::Mgmt::V2018_04_01::Models::Endpoint
      TrackedResource = Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrackedResource
      Profile = Azure::TrafficManager::Mgmt::V2018_04_01::Models::Profile
      ProxyResource = Azure::TrafficManager::Mgmt::V2018_04_01::Models::ProxyResource
      TrafficManagerGeographicHierarchy = Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficManagerGeographicHierarchy
      EndpointStatus = Azure::TrafficManager::Mgmt::V2018_04_01::Models::EndpointStatus
      EndpointMonitorStatus = Azure::TrafficManager::Mgmt::V2018_04_01::Models::EndpointMonitorStatus
      ProfileMonitorStatus = Azure::TrafficManager::Mgmt::V2018_04_01::Models::ProfileMonitorStatus
      MonitorProtocol = Azure::TrafficManager::Mgmt::V2018_04_01::Models::MonitorProtocol
      ProfileStatus = Azure::TrafficManager::Mgmt::V2018_04_01::Models::ProfileStatus
      TrafficRoutingMethod = Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficRoutingMethod
      TrafficViewEnrollmentStatus = Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficViewEnrollmentStatus
    end

    #
    # TrafficManagerManagementClass
    #
    class TrafficManagerManagementClass
      attr_reader :endpoints, :profiles, :geographic_hierarchies, :heat_map, :traffic_manager_user_metrics_keys, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::TrafficManager::Mgmt::V2018_04_01::TrafficManagerManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @endpoints = @client_0.endpoints
        @profiles = @client_0.profiles
        @geographic_hierarchies = @client_0.geographic_hierarchies
        @heat_map = @client_0.heat_map
        @traffic_manager_user_metrics_keys = @client_0.traffic_manager_user_metrics_keys

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/TrafficManager/Mgmt'
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
      def monitor_config_custom_headers_item
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::MonitorConfigCustomHeadersItem
      end
      def monitor_config_expected_status_code_ranges_item
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::MonitorConfigExpectedStatusCodeRangesItem
      end
      def endpoint_properties_subnets_item
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::EndpointPropertiesSubnetsItem
      end
      def monitor_config
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::MonitorConfig
      end
      def heat_map_endpoint
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::HeatMapEndpoint
      end
      def endpoint_properties_custom_headers_item
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::EndpointPropertiesCustomHeadersItem
      end
      def query_experience
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::QueryExperience
      end
      def delete_operation_result
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::DeleteOperationResult
      end
      def traffic_flow
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficFlow
      end
      def region
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::Region
      end
      def dns_config
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::DnsConfig
      end
      def check_traffic_manager_relative_dns_name_availability_parameters
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
      end
      def profile_list_result
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::ProfileListResult
      end
      def resource
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::Resource
      end
      def traffic_manager_name_availability
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficManagerNameAvailability
      end
      def heat_map_model
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::HeatMapModel
      end
      def user_metrics_model
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::UserMetricsModel
      end
      def endpoint
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::Endpoint
      end
      def tracked_resource
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrackedResource
      end
      def profile
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::Profile
      end
      def proxy_resource
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::ProxyResource
      end
      def traffic_manager_geographic_hierarchy
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficManagerGeographicHierarchy
      end
      def endpoint_status
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::EndpointStatus
      end
      def endpoint_monitor_status
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::EndpointMonitorStatus
      end
      def profile_monitor_status
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::ProfileMonitorStatus
      end
      def monitor_protocol
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::MonitorProtocol
      end
      def profile_status
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::ProfileStatus
      end
      def traffic_routing_method
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficRoutingMethod
      end
      def traffic_view_enrollment_status
        Azure::TrafficManager::Mgmt::V2018_04_01::Models::TrafficViewEnrollmentStatus
      end
    end
  end
end
