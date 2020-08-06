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
require '2018-12-01-preview/generated/azure_mgmt_iot_hub/module_definition'
require 'ms_rest_azure'

module Azure::IotHub::Mgmt::V2018_12_01_preview
  autoload :Operations,                                         '2018-12-01-preview/generated/azure_mgmt_iot_hub/operations.rb'
  autoload :IotHubResource,                                     '2018-12-01-preview/generated/azure_mgmt_iot_hub/iot_hub_resource.rb'
  autoload :ResourceProviderCommon,                             '2018-12-01-preview/generated/azure_mgmt_iot_hub/resource_provider_common.rb'
  autoload :Certificates,                                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/certificates.rb'
  autoload :IotHubClient,                                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/iot_hub_client.rb'

  module Models
    autoload :IotHubQuotaMetricInfo,                              '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info.rb'
    autoload :IotHubQuotaMetricInfoListResult,                    '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info_list_result.rb'
    autoload :CertificateProperties,                              '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/certificate_properties.rb'
    autoload :EndpointHealthData,                                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/endpoint_health_data.rb'
    autoload :CertificateListDescription,                         '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/certificate_list_description.rb'
    autoload :EndpointHealthDataListResult,                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/endpoint_health_data_list_result.rb'
    autoload :CertificatePropertiesWithNonce,                     '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/certificate_properties_with_nonce.rb'
    autoload :RegistryStatistics,                                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/registry_statistics.rb'
    autoload :SharedAccessSignatureAuthorizationRule,             '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule.rb'
    autoload :JobResponse,                                        '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/job_response.rb'
    autoload :EventHubProperties,                                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/event_hub_properties.rb'
    autoload :JobResponseListResult,                              '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/job_response_list_result.rb'
    autoload :RoutingServiceBusTopicEndpointProperties,           '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_service_bus_topic_endpoint_properties.rb'
    autoload :IotHubCapacity,                                     '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_capacity.rb'
    autoload :RoutingStorageContainerProperties,                  '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_storage_container_properties.rb'
    autoload :IotHubSkuDescription,                               '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku_description.rb'
    autoload :RouteProperties,                                    '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/route_properties.rb'
    autoload :TagsResource,                                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/tags_resource.rb'
    autoload :RoutingProperties,                                  '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_properties.rb'
    autoload :EventHubConsumerGroupInfo,                          '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/event_hub_consumer_group_info.rb'
    autoload :MessagingEndpointProperties,                        '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/messaging_endpoint_properties.rb'
    autoload :EventHubConsumerGroupsListResult,                   '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/event_hub_consumer_groups_list_result.rb'
    autoload :CloudToDeviceProperties,                            '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/cloud_to_device_properties.rb'
    autoload :IotHubSkuDescriptionListResult,                     '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku_description_list_result.rb'
    autoload :IotHubProperties,                                   '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_properties.rb'
    autoload :IotHubDescriptionListResult,                        '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_description_list_result.rb'
    autoload :Resource,                                           '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/resource.rb'
    autoload :OperationInputs,                                    '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/operation_inputs.rb'
    autoload :OperationDisplay,                                   '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/operation_display.rb'
    autoload :IotHubNameAvailabilityInfo,                         '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_name_availability_info.rb'
    autoload :OperationListResult,                                '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/operation_list_result.rb'
    autoload :Name,                                               '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/name.rb'
    autoload :CertificateVerificationDescription,                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/certificate_verification_description.rb'
    autoload :UserSubscriptionQuota,                              '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/user_subscription_quota.rb'
    autoload :CertificateBodyDescription,                         '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/certificate_body_description.rb'
    autoload :UserSubscriptionQuotaListResult,                    '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/user_subscription_quota_list_result.rb'
    autoload :IpFilterRule,                                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/ip_filter_rule.rb'
    autoload :RoutingMessage,                                     '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_message.rb'
    autoload :RoutingEventHubProperties,                          '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_event_hub_properties.rb'
    autoload :RoutingTwinProperties,                              '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_twin_properties.rb'
    autoload :FallbackRouteProperties,                            '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/fallback_route_properties.rb'
    autoload :RoutingTwin,                                        '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_twin.rb'
    autoload :FeedbackProperties,                                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/feedback_properties.rb'
    autoload :TestAllRoutesInput,                                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/test_all_routes_input.rb'
    autoload :IotHubSkuInfo,                                      '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku_info.rb'
    autoload :MatchedRoute,                                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/matched_route.rb'
    autoload :Operation,                                          '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/operation.rb'
    autoload :TestAllRoutesResult,                                '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/test_all_routes_result.rb'
    autoload :CertificateDescription,                             '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/certificate_description.rb'
    autoload :TestRouteInput,                                     '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/test_route_input.rb'
    autoload :RoutingServiceBusQueueEndpointProperties,           '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_service_bus_queue_endpoint_properties.rb'
    autoload :RouteErrorPosition,                                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/route_error_position.rb'
    autoload :StorageEndpointProperties,                          '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/storage_endpoint_properties.rb'
    autoload :RouteErrorRange,                                    '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/route_error_range.rb'
    autoload :SharedAccessSignatureAuthorizationRuleListResult,   '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule_list_result.rb'
    autoload :RouteCompilationError,                              '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/route_compilation_error.rb'
    autoload :CertificateWithNonceDescription,                    '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/certificate_with_nonce_description.rb'
    autoload :TestRouteResultDetails,                             '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/test_route_result_details.rb'
    autoload :IotHubPropertiesDeviceStreams,                      '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_properties_device_streams.rb'
    autoload :TestRouteResult,                                    '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/test_route_result.rb'
    autoload :RoutingEndpoints,                                   '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_endpoints.rb'
    autoload :ExportDevicesRequest,                               '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/export_devices_request.rb'
    autoload :ErrorDetails,                                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/error_details.rb'
    autoload :ImportDevicesRequest,                               '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/import_devices_request.rb'
    autoload :IotHubDescription,                                  '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_description.rb'
    autoload :AccessRights,                                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/access_rights.rb'
    autoload :IpFilterActionType,                                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/ip_filter_action_type.rb'
    autoload :RoutingSource,                                      '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/routing_source.rb'
    autoload :Capabilities,                                       '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/capabilities.rb'
    autoload :IotHubSku,                                          '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku.rb'
    autoload :IotHubSkuTier,                                      '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku_tier.rb'
    autoload :EndpointHealthStatus,                               '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/endpoint_health_status.rb'
    autoload :JobType,                                            '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/job_type.rb'
    autoload :JobStatus,                                          '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/job_status.rb'
    autoload :IotHubScaleType,                                    '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_scale_type.rb'
    autoload :IotHubNameUnavailabilityReason,                     '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/iot_hub_name_unavailability_reason.rb'
    autoload :TestResultStatus,                                   '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/test_result_status.rb'
    autoload :RouteErrorSeverity,                                 '2018-12-01-preview/generated/azure_mgmt_iot_hub/models/route_error_severity.rb'
  end
end
