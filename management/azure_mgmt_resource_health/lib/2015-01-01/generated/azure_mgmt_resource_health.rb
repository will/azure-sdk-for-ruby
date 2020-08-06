# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2015-01-01/generated/azure_mgmt_resource_health/module_definition'
require 'ms_rest_azure'

module Azure::ResourceHealth::Mgmt::V2015_01_01
  autoload :AvailabilityStatuses,                               '2015-01-01/generated/azure_mgmt_resource_health/availability_statuses.rb'
  autoload :ChildAvailabilityStatuses,                          '2015-01-01/generated/azure_mgmt_resource_health/child_availability_statuses.rb'
  autoload :ChildResources,                                     '2015-01-01/generated/azure_mgmt_resource_health/child_resources.rb'
  autoload :Operations,                                         '2015-01-01/generated/azure_mgmt_resource_health/operations.rb'
  autoload :ResourceHealthClient,                               '2015-01-01/generated/azure_mgmt_resource_health/resource_health_client.rb'

  module Models
    autoload :AvailabilityStatus,                                 '2015-01-01/generated/azure_mgmt_resource_health/models/availability_status.rb'
    autoload :AvailabilityStatusPropertiesRecentlyResolvedState,  '2015-01-01/generated/azure_mgmt_resource_health/models/availability_status_properties_recently_resolved_state.rb'
    autoload :AvailabilityStatusListResult,                       '2015-01-01/generated/azure_mgmt_resource_health/models/availability_status_list_result.rb'
    autoload :ServiceImpactingEventStatus,                        '2015-01-01/generated/azure_mgmt_resource_health/models/service_impacting_event_status.rb'
    autoload :OperationDisplay,                                   '2015-01-01/generated/azure_mgmt_resource_health/models/operation_display.rb'
    autoload :ServiceImpactingEvent,                              '2015-01-01/generated/azure_mgmt_resource_health/models/service_impacting_event.rb'
    autoload :Operation,                                          '2015-01-01/generated/azure_mgmt_resource_health/models/operation.rb'
    autoload :RecommendedAction,                                  '2015-01-01/generated/azure_mgmt_resource_health/models/recommended_action.rb'
    autoload :OperationListResult,                                '2015-01-01/generated/azure_mgmt_resource_health/models/operation_list_result.rb'
    autoload :AvailabilityStatusProperties,                       '2015-01-01/generated/azure_mgmt_resource_health/models/availability_status_properties.rb'
    autoload :ErrorResponse,                                      '2015-01-01/generated/azure_mgmt_resource_health/models/error_response.rb'
    autoload :ServiceImpactingEventIncidentProperties,            '2015-01-01/generated/azure_mgmt_resource_health/models/service_impacting_event_incident_properties.rb'
    autoload :AvailabilityStateValues,                            '2015-01-01/generated/azure_mgmt_resource_health/models/availability_state_values.rb'
    autoload :ReasonChronicityTypes,                              '2015-01-01/generated/azure_mgmt_resource_health/models/reason_chronicity_types.rb'
  end
end
