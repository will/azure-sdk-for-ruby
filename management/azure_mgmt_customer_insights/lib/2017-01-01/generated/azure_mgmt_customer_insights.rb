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
require '2017-01-01/generated/azure_mgmt_customer_insights/module_definition'
require 'ms_rest_azure'

module Azure::CustomerInsights::Mgmt::V2017_01_01
  autoload :Operations,                                         '2017-01-01/generated/azure_mgmt_customer_insights/operations.rb'
  autoload :Hubs,                                               '2017-01-01/generated/azure_mgmt_customer_insights/hubs.rb'
  autoload :Profiles,                                           '2017-01-01/generated/azure_mgmt_customer_insights/profiles.rb'
  autoload :Interactions,                                       '2017-01-01/generated/azure_mgmt_customer_insights/interactions.rb'
  autoload :Relationships,                                      '2017-01-01/generated/azure_mgmt_customer_insights/relationships.rb'
  autoload :RelationshipLinks,                                  '2017-01-01/generated/azure_mgmt_customer_insights/relationship_links.rb'
  autoload :AuthorizationPolicies,                              '2017-01-01/generated/azure_mgmt_customer_insights/authorization_policies.rb'
  autoload :Connectors,                                         '2017-01-01/generated/azure_mgmt_customer_insights/connectors.rb'
  autoload :ConnectorMappings,                                  '2017-01-01/generated/azure_mgmt_customer_insights/connector_mappings.rb'
  autoload :Kpi,                                                '2017-01-01/generated/azure_mgmt_customer_insights/kpi.rb'
  autoload :WidgetTypes,                                        '2017-01-01/generated/azure_mgmt_customer_insights/widget_types.rb'
  autoload :Views,                                              '2017-01-01/generated/azure_mgmt_customer_insights/views.rb'
  autoload :Links,                                              '2017-01-01/generated/azure_mgmt_customer_insights/links.rb'
  autoload :Roles,                                              '2017-01-01/generated/azure_mgmt_customer_insights/roles.rb'
  autoload :RoleAssignments,                                    '2017-01-01/generated/azure_mgmt_customer_insights/role_assignments.rb'
  autoload :Images,                                             '2017-01-01/generated/azure_mgmt_customer_insights/images.rb'
  autoload :CustomerInsightsManagementClient,                   '2017-01-01/generated/azure_mgmt_customer_insights/customer_insights_management_client.rb'

  module Models
    autoload :TypePropertiesMapping,                              '2017-01-01/generated/azure_mgmt_customer_insights/models/type_properties_mapping.rb'
    autoload :HubBillingInfoFormat,                               '2017-01-01/generated/azure_mgmt_customer_insights/models/hub_billing_info_format.rb'
    autoload :ParticipantPropertyReference,                       '2017-01-01/generated/azure_mgmt_customer_insights/models/participant_property_reference.rb'
    autoload :HubListResult,                                      '2017-01-01/generated/azure_mgmt_customer_insights/models/hub_list_result.rb'
    autoload :RelationshipTypeFieldMapping,                       '2017-01-01/generated/azure_mgmt_customer_insights/models/relationship_type_field_mapping.rb'
    autoload :ProfileEnumValidValuesFormat,                       '2017-01-01/generated/azure_mgmt_customer_insights/models/profile_enum_valid_values_format.rb'
    autoload :RelationshipTypeMapping,                            '2017-01-01/generated/azure_mgmt_customer_insights/models/relationship_type_mapping.rb'
    autoload :PropertyDefinition,                                 '2017-01-01/generated/azure_mgmt_customer_insights/models/property_definition.rb'
    autoload :RelationshipLinkFieldMapping,                       '2017-01-01/generated/azure_mgmt_customer_insights/models/relationship_link_field_mapping.rb'
    autoload :AuthorizationPolicy,                                '2017-01-01/generated/azure_mgmt_customer_insights/models/authorization_policy.rb'
    autoload :Participant,                                        '2017-01-01/generated/azure_mgmt_customer_insights/models/participant.rb'
    autoload :SalesforceTable,                                    '2017-01-01/generated/azure_mgmt_customer_insights/models/salesforce_table.rb'
    autoload :StrongId,                                           '2017-01-01/generated/azure_mgmt_customer_insights/models/strong_id.rb'
    autoload :AzureBlobConnectorProperties,                       '2017-01-01/generated/azure_mgmt_customer_insights/models/azure_blob_connector_properties.rb'
    autoload :CrmConnectorProperties,                             '2017-01-01/generated/azure_mgmt_customer_insights/models/crm_connector_properties.rb'
    autoload :ProfileListResult,                                  '2017-01-01/generated/azure_mgmt_customer_insights/models/profile_list_result.rb'
    autoload :ConnectorMappingFormat,                             '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_format.rb'
    autoload :OperationListResult,                                '2017-01-01/generated/azure_mgmt_customer_insights/models/operation_list_result.rb'
    autoload :ConnectorMappingStructure,                          '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_structure.rb'
    autoload :InteractionListResult,                              '2017-01-01/generated/azure_mgmt_customer_insights/models/interaction_list_result.rb'
    autoload :ConnectorMappingProperties,                         '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_properties.rb'
    autoload :Operation,                                          '2017-01-01/generated/azure_mgmt_customer_insights/models/operation.rb'
    autoload :KpiGroupByMetadata,                                 '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_group_by_metadata.rb'
    autoload :KpiListResult,                                      '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_list_result.rb'
    autoload :KpiAlias,                                           '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_alias.rb'
    autoload :OperationDisplay,                                   '2017-01-01/generated/azure_mgmt_customer_insights/models/operation_display.rb'
    autoload :KpiDefinition,                                      '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_definition.rb'
    autoload :SuggestRelationshipLinksResponse,                   '2017-01-01/generated/azure_mgmt_customer_insights/models/suggest_relationship_links_response.rb'
    autoload :ProxyResource,                                      '2017-01-01/generated/azure_mgmt_customer_insights/models/proxy_resource.rb'
    autoload :ConnectorListResult,                                '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_list_result.rb'
    autoload :MetadataDefinitionBase,                             '2017-01-01/generated/azure_mgmt_customer_insights/models/metadata_definition_base.rb'
    autoload :RelationshipsLookup,                                '2017-01-01/generated/azure_mgmt_customer_insights/models/relationships_lookup.rb'
    autoload :WidgetTypeListResult,                               '2017-01-01/generated/azure_mgmt_customer_insights/models/widget_type_list_result.rb'
    autoload :SalesforceDiscoverSetting,                          '2017-01-01/generated/azure_mgmt_customer_insights/models/salesforce_discover_setting.rb'
    autoload :ConnectorMappingListResult,                         '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_list_result.rb'
    autoload :CrmConnectorEntities,                               '2017-01-01/generated/azure_mgmt_customer_insights/models/crm_connector_entities.rb'
    autoload :ImageDefinition,                                    '2017-01-01/generated/azure_mgmt_customer_insights/models/image_definition.rb'
    autoload :ConnectorMappingAvailability,                       '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_availability.rb'
    autoload :AuthorizationPolicyListResult,                      '2017-01-01/generated/azure_mgmt_customer_insights/models/authorization_policy_list_result.rb'
    autoload :KpiThresholds,                                      '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_thresholds.rb'
    autoload :GetImageUploadUrlInput,                             '2017-01-01/generated/azure_mgmt_customer_insights/models/get_image_upload_url_input.rb'
    autoload :KpiExtract,                                         '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_extract.rb'
    autoload :LinkListResult,                                     '2017-01-01/generated/azure_mgmt_customer_insights/models/link_list_result.rb'
    autoload :AssignmentPrincipal,                                '2017-01-01/generated/azure_mgmt_customer_insights/models/assignment_principal.rb'
    autoload :DataSourcePrecedence,                               '2017-01-01/generated/azure_mgmt_customer_insights/models/data_source_precedence.rb'
    autoload :RoleListResult,                                     '2017-01-01/generated/azure_mgmt_customer_insights/models/role_list_result.rb'
    autoload :ConnectorMappingErrorManagement,                    '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_error_management.rb'
    autoload :RelationshipListResult,                             '2017-01-01/generated/azure_mgmt_customer_insights/models/relationship_list_result.rb'
    autoload :KpiParticipantProfilesMetadata,                     '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_participant_profiles_metadata.rb'
    autoload :RoleAssignmentListResult,                           '2017-01-01/generated/azure_mgmt_customer_insights/models/role_assignment_list_result.rb'
    autoload :SalesforceConnectorProperties,                      '2017-01-01/generated/azure_mgmt_customer_insights/models/salesforce_connector_properties.rb'
    autoload :RelationshipLinkListResult,                         '2017-01-01/generated/azure_mgmt_customer_insights/models/relationship_link_list_result.rb'
    autoload :Resource,                                           '2017-01-01/generated/azure_mgmt_customer_insights/models/resource.rb'
    autoload :ResourceSetDescription,                             '2017-01-01/generated/azure_mgmt_customer_insights/models/resource_set_description.rb'
    autoload :ConnectorMappingCompleteOperation,                  '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_complete_operation.rb'
    autoload :ViewListResult,                                     '2017-01-01/generated/azure_mgmt_customer_insights/models/view_list_result.rb'
    autoload :Hub,                                                '2017-01-01/generated/azure_mgmt_customer_insights/models/hub.rb'
    autoload :EntityTypeDefinition,                               '2017-01-01/generated/azure_mgmt_customer_insights/models/entity_type_definition.rb'
    autoload :ProfileResourceFormat,                              '2017-01-01/generated/azure_mgmt_customer_insights/models/profile_resource_format.rb'
    autoload :InteractionResourceFormat,                          '2017-01-01/generated/azure_mgmt_customer_insights/models/interaction_resource_format.rb'
    autoload :KpiResourceFormat,                                  '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_resource_format.rb'
    autoload :EnrichingKpi,                                       '2017-01-01/generated/azure_mgmt_customer_insights/models/enriching_kpi.rb'
    autoload :ConnectorResourceFormat,                            '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_resource_format.rb'
    autoload :ConnectorMappingResourceFormat,                     '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_resource_format.rb'
    autoload :AuthorizationPolicyResourceFormat,                  '2017-01-01/generated/azure_mgmt_customer_insights/models/authorization_policy_resource_format.rb'
    autoload :LinkResourceFormat,                                 '2017-01-01/generated/azure_mgmt_customer_insights/models/link_resource_format.rb'
    autoload :RelationshipResourceFormat,                         '2017-01-01/generated/azure_mgmt_customer_insights/models/relationship_resource_format.rb'
    autoload :RelationshipLinkResourceFormat,                     '2017-01-01/generated/azure_mgmt_customer_insights/models/relationship_link_resource_format.rb'
    autoload :ViewResourceFormat,                                 '2017-01-01/generated/azure_mgmt_customer_insights/models/view_resource_format.rb'
    autoload :WidgetTypeResourceFormat,                           '2017-01-01/generated/azure_mgmt_customer_insights/models/widget_type_resource_format.rb'
    autoload :RoleAssignmentResourceFormat,                       '2017-01-01/generated/azure_mgmt_customer_insights/models/role_assignment_resource_format.rb'
    autoload :RoleResourceFormat,                                 '2017-01-01/generated/azure_mgmt_customer_insights/models/role_resource_format.rb'
    autoload :EntityTypes,                                        '2017-01-01/generated/azure_mgmt_customer_insights/models/entity_types.rb'
    autoload :DataSourceType,                                     '2017-01-01/generated/azure_mgmt_customer_insights/models/data_source_type.rb'
    autoload :Status,                                             '2017-01-01/generated/azure_mgmt_customer_insights/models/status.rb'
    autoload :ProvisioningStates,                                 '2017-01-01/generated/azure_mgmt_customer_insights/models/provisioning_states.rb'
    autoload :PermissionTypes,                                    '2017-01-01/generated/azure_mgmt_customer_insights/models/permission_types.rb'
    autoload :ConnectorTypes,                                     '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_types.rb'
    autoload :ConnectorStates,                                    '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_states.rb'
    autoload :ErrorManagementTypes,                               '2017-01-01/generated/azure_mgmt_customer_insights/models/error_management_types.rb'
    autoload :FrequencyTypes,                                     '2017-01-01/generated/azure_mgmt_customer_insights/models/frequency_types.rb'
    autoload :CompletionOperationTypes,                           '2017-01-01/generated/azure_mgmt_customer_insights/models/completion_operation_types.rb'
    autoload :ConnectorMappingStates,                             '2017-01-01/generated/azure_mgmt_customer_insights/models/connector_mapping_states.rb'
    autoload :CalculationWindowTypes,                             '2017-01-01/generated/azure_mgmt_customer_insights/models/calculation_window_types.rb'
    autoload :KpiFunctions,                                       '2017-01-01/generated/azure_mgmt_customer_insights/models/kpi_functions.rb'
    autoload :LinkTypes,                                          '2017-01-01/generated/azure_mgmt_customer_insights/models/link_types.rb'
    autoload :InstanceOperationType,                              '2017-01-01/generated/azure_mgmt_customer_insights/models/instance_operation_type.rb'
    autoload :CardinalityTypes,                                   '2017-01-01/generated/azure_mgmt_customer_insights/models/cardinality_types.rb'
    autoload :RoleTypes,                                          '2017-01-01/generated/azure_mgmt_customer_insights/models/role_types.rb'
  end
end
