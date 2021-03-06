# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resource_health'

module Azure::ResourceHealth::Profiles::Latest
  module Mgmt
    AvailabilityStatuses = Azure::ResourceHealth::Mgmt::V2017_07_01::AvailabilityStatuses
    ChildAvailabilityStatuses = Azure::ResourceHealth::Mgmt::V2017_07_01::ChildAvailabilityStatuses
    ChildResources = Azure::ResourceHealth::Mgmt::V2017_07_01::ChildResources
    Operations = Azure::ResourceHealth::Mgmt::V2017_07_01::Operations

    module Models
      AvailabilityStatus = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStatus
      AvailabilityStatusPropertiesRecentlyResolvedState = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStatusPropertiesRecentlyResolvedState
      AvailabilityStatusListResult = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStatusListResult
      ServiceImpactingEventStatus = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ServiceImpactingEventStatus
      OperationDisplay = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::OperationDisplay
      ServiceImpactingEvent = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ServiceImpactingEvent
      Operation = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::Operation
      RecommendedAction = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::RecommendedAction
      OperationListResult = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::OperationListResult
      AvailabilityStatusProperties = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStatusProperties
      ErrorResponse = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ErrorResponse
      ServiceImpactingEventIncidentProperties = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ServiceImpactingEventIncidentProperties
      AvailabilityStateValues = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStateValues
      ReasonChronicityTypes = Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ReasonChronicityTypes
    end

    #
    # ResourceHealthManagementClass
    #
    class ResourceHealthManagementClass
      attr_reader :availability_statuses, :child_availability_statuses, :child_resources, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ResourceHealth::Mgmt::V2017_07_01::ResourceHealthClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @availability_statuses = @client_0.availability_statuses
        @child_availability_statuses = @client_0.child_availability_statuses
        @child_resources = @client_0.child_resources
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ResourceHealth/Mgmt'
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
      def availability_status
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStatus
      end
      def availability_status_properties_recently_resolved_state
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStatusPropertiesRecentlyResolvedState
      end
      def availability_status_list_result
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStatusListResult
      end
      def service_impacting_event_status
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ServiceImpactingEventStatus
      end
      def operation_display
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::OperationDisplay
      end
      def service_impacting_event
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ServiceImpactingEvent
      end
      def operation
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::Operation
      end
      def recommended_action
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::RecommendedAction
      end
      def operation_list_result
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::OperationListResult
      end
      def availability_status_properties
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStatusProperties
      end
      def error_response
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ErrorResponse
      end
      def service_impacting_event_incident_properties
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ServiceImpactingEventIncidentProperties
      end
      def availability_state_values
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::AvailabilityStateValues
      end
      def reason_chronicity_types
        Azure::ResourceHealth::Mgmt::V2017_07_01::Models::ReasonChronicityTypes
      end
    end
  end
end
