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
require '2018-05-01-preview/generated/azure_mgmt_event_grid/module_definition'
require 'ms_rest_azure'

module Azure::EventGrid::Mgmt::V2018_05_01_preview
  autoload :EventSubscriptions,                                 '2018-05-01-preview/generated/azure_mgmt_event_grid/event_subscriptions.rb'
  autoload :Operations,                                         '2018-05-01-preview/generated/azure_mgmt_event_grid/operations.rb'
  autoload :Topics,                                             '2018-05-01-preview/generated/azure_mgmt_event_grid/topics.rb'
  autoload :TopicTypes,                                         '2018-05-01-preview/generated/azure_mgmt_event_grid/topic_types.rb'
  autoload :EventGridManagementClient,                          '2018-05-01-preview/generated/azure_mgmt_event_grid/event_grid_management_client.rb'

  module Models
    autoload :Operation,                                          '2018-05-01-preview/generated/azure_mgmt_event_grid/models/operation.rb'
    autoload :OperationsListResult,                               '2018-05-01-preview/generated/azure_mgmt_event_grid/models/operations_list_result.rb'
    autoload :EventSubscriptionFilter,                            '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_filter.rb'
    autoload :InputSchemaMapping,                                 '2018-05-01-preview/generated/azure_mgmt_event_grid/models/input_schema_mapping.rb'
    autoload :DeadLetterDestination,                              '2018-05-01-preview/generated/azure_mgmt_event_grid/models/dead_letter_destination.rb'
    autoload :JsonField,                                          '2018-05-01-preview/generated/azure_mgmt_event_grid/models/json_field.rb'
    autoload :EventSubscriptionsListResult,                       '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_subscriptions_list_result.rb'
    autoload :OperationInfo,                                      '2018-05-01-preview/generated/azure_mgmt_event_grid/models/operation_info.rb'
    autoload :EventTypesListResult,                               '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_types_list_result.rb'
    autoload :EventSubscriptionDestination,                       '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_destination.rb'
    autoload :TopicSharedAccessKeys,                              '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topic_shared_access_keys.rb'
    autoload :RetryPolicy,                                        '2018-05-01-preview/generated/azure_mgmt_event_grid/models/retry_policy.rb'
    autoload :EventSubscriptionFullUrl,                           '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_full_url.rb'
    autoload :Resource,                                           '2018-05-01-preview/generated/azure_mgmt_event_grid/models/resource.rb'
    autoload :TopicRegenerateKeyRequest,                          '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topic_regenerate_key_request.rb'
    autoload :TopicsListResult,                                   '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topics_list_result.rb'
    autoload :TopicTypesListResult,                               '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topic_types_list_result.rb'
    autoload :JsonFieldWithDefault,                               '2018-05-01-preview/generated/azure_mgmt_event_grid/models/json_field_with_default.rb'
    autoload :EventSubscriptionUpdateParameters,                  '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_update_parameters.rb'
    autoload :TopicUpdateParameters,                              '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topic_update_parameters.rb'
    autoload :StorageBlobDeadLetterDestination,                   '2018-05-01-preview/generated/azure_mgmt_event_grid/models/storage_blob_dead_letter_destination.rb'
    autoload :WebHookEventSubscriptionDestination,                '2018-05-01-preview/generated/azure_mgmt_event_grid/models/web_hook_event_subscription_destination.rb'
    autoload :EventHubEventSubscriptionDestination,               '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_hub_event_subscription_destination.rb'
    autoload :StorageQueueEventSubscriptionDestination,           '2018-05-01-preview/generated/azure_mgmt_event_grid/models/storage_queue_event_subscription_destination.rb'
    autoload :HybridConnectionEventSubscriptionDestination,       '2018-05-01-preview/generated/azure_mgmt_event_grid/models/hybrid_connection_event_subscription_destination.rb'
    autoload :EventSubscription,                                  '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_subscription.rb'
    autoload :JsonInputSchemaMapping,                             '2018-05-01-preview/generated/azure_mgmt_event_grid/models/json_input_schema_mapping.rb'
    autoload :TrackedResource,                                    '2018-05-01-preview/generated/azure_mgmt_event_grid/models/tracked_resource.rb'
    autoload :Topic,                                              '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topic.rb'
    autoload :EventType,                                          '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_type.rb'
    autoload :TopicTypeInfo,                                      '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topic_type_info.rb'
    autoload :EventSubscriptionProvisioningState,                 '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_provisioning_state.rb'
    autoload :EventDeliverySchema,                                '2018-05-01-preview/generated/azure_mgmt_event_grid/models/event_delivery_schema.rb'
    autoload :TopicProvisioningState,                             '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topic_provisioning_state.rb'
    autoload :InputSchema,                                        '2018-05-01-preview/generated/azure_mgmt_event_grid/models/input_schema.rb'
    autoload :ResourceRegionType,                                 '2018-05-01-preview/generated/azure_mgmt_event_grid/models/resource_region_type.rb'
    autoload :TopicTypeProvisioningState,                         '2018-05-01-preview/generated/azure_mgmt_event_grid/models/topic_type_provisioning_state.rb'
  end
end
