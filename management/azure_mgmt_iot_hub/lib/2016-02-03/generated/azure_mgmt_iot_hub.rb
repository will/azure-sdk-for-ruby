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
require '2016-02-03/generated/azure_mgmt_iot_hub/module_definition'
require 'ms_rest_azure'

module Azure::IotHub::Mgmt::V2016_02_03
  autoload :IotHubResource,                                     '2016-02-03/generated/azure_mgmt_iot_hub/iot_hub_resource.rb'
  autoload :IotHubClient,                                       '2016-02-03/generated/azure_mgmt_iot_hub/iot_hub_client.rb'

  module Models
    autoload :IotHubQuotaMetricInfo,                              '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info.rb'
    autoload :IotHubQuotaMetricInfoListResult,                    '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info_list_result.rb'
    autoload :IpFilterRule,                                       '2016-02-03/generated/azure_mgmt_iot_hub/models/ip_filter_rule.rb'
    autoload :RegistryStatistics,                                 '2016-02-03/generated/azure_mgmt_iot_hub/models/registry_statistics.rb'
    autoload :StorageEndpointProperties,                          '2016-02-03/generated/azure_mgmt_iot_hub/models/storage_endpoint_properties.rb'
    autoload :JobResponse,                                        '2016-02-03/generated/azure_mgmt_iot_hub/models/job_response.rb'
    autoload :FeedbackProperties,                                 '2016-02-03/generated/azure_mgmt_iot_hub/models/feedback_properties.rb'
    autoload :JobResponseListResult,                              '2016-02-03/generated/azure_mgmt_iot_hub/models/job_response_list_result.rb'
    autoload :OperationsMonitoringProperties,                     '2016-02-03/generated/azure_mgmt_iot_hub/models/operations_monitoring_properties.rb'
    autoload :IotHubCapacity,                                     '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_capacity.rb'
    autoload :IotHubSkuInfo,                                      '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_sku_info.rb'
    autoload :IotHubSkuDescription,                               '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_sku_description.rb'
    autoload :Resource,                                           '2016-02-03/generated/azure_mgmt_iot_hub/models/resource.rb'
    autoload :EventHubConsumerGroupsListResult,                   '2016-02-03/generated/azure_mgmt_iot_hub/models/event_hub_consumer_groups_list_result.rb'
    autoload :ErrorDetails,                                       '2016-02-03/generated/azure_mgmt_iot_hub/models/error_details.rb'
    autoload :EventHubConsumerGroupInfo,                          '2016-02-03/generated/azure_mgmt_iot_hub/models/event_hub_consumer_group_info.rb'
    autoload :EventHubProperties,                                 '2016-02-03/generated/azure_mgmt_iot_hub/models/event_hub_properties.rb'
    autoload :IotHubSkuDescriptionListResult,                     '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_sku_description_list_result.rb'
    autoload :CloudToDeviceProperties,                            '2016-02-03/generated/azure_mgmt_iot_hub/models/cloud_to_device_properties.rb'
    autoload :IotHubDescriptionListResult,                        '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_description_list_result.rb'
    autoload :SharedAccessSignatureAuthorizationRuleListResult,   '2016-02-03/generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule_list_result.rb'
    autoload :OperationInputs,                                    '2016-02-03/generated/azure_mgmt_iot_hub/models/operation_inputs.rb'
    autoload :MessagingEndpointProperties,                        '2016-02-03/generated/azure_mgmt_iot_hub/models/messaging_endpoint_properties.rb'
    autoload :IotHubNameAvailabilityInfo,                         '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_name_availability_info.rb'
    autoload :SharedAccessSignatureAuthorizationRule,             '2016-02-03/generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule.rb'
    autoload :ExportDevicesRequest,                               '2016-02-03/generated/azure_mgmt_iot_hub/models/export_devices_request.rb'
    autoload :IotHubProperties,                                   '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_properties.rb'
    autoload :ImportDevicesRequest,                               '2016-02-03/generated/azure_mgmt_iot_hub/models/import_devices_request.rb'
    autoload :IotHubDescription,                                  '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_description.rb'
    autoload :AccessRights,                                       '2016-02-03/generated/azure_mgmt_iot_hub/models/access_rights.rb'
    autoload :IpFilterActionType,                                 '2016-02-03/generated/azure_mgmt_iot_hub/models/ip_filter_action_type.rb'
    autoload :OperationMonitoringLevel,                           '2016-02-03/generated/azure_mgmt_iot_hub/models/operation_monitoring_level.rb'
    autoload :Capabilities,                                       '2016-02-03/generated/azure_mgmt_iot_hub/models/capabilities.rb'
    autoload :IotHubSku,                                          '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_sku.rb'
    autoload :IotHubSkuTier,                                      '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_sku_tier.rb'
    autoload :JobType,                                            '2016-02-03/generated/azure_mgmt_iot_hub/models/job_type.rb'
    autoload :JobStatus,                                          '2016-02-03/generated/azure_mgmt_iot_hub/models/job_status.rb'
    autoload :IotHubScaleType,                                    '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_scale_type.rb'
    autoload :IotHubNameUnavailabilityReason,                     '2016-02-03/generated/azure_mgmt_iot_hub/models/iot_hub_name_unavailability_reason.rb'
  end
end
