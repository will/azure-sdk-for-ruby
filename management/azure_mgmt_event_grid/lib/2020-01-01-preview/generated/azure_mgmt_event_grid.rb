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
require '2020-01-01-preview/generated/azure_mgmt_event_grid/module_definition'
require 'ms_rest_azure'

module Azure::EventGrid::Mgmt::V2020_01_01_preview
  autoload :Domains,                                            '2020-01-01-preview/generated/azure_mgmt_event_grid/domains.rb'
  autoload :DomainTopics,                                       '2020-01-01-preview/generated/azure_mgmt_event_grid/domain_topics.rb'
  autoload :EventSubscriptions,                                 '2020-01-01-preview/generated/azure_mgmt_event_grid/event_subscriptions.rb'
  autoload :Operations,                                         '2020-01-01-preview/generated/azure_mgmt_event_grid/operations.rb'
  autoload :Topics,                                             '2020-01-01-preview/generated/azure_mgmt_event_grid/topics.rb'
  autoload :TopicTypes,                                         '2020-01-01-preview/generated/azure_mgmt_event_grid/topic_types.rb'
  autoload :EventGridManagementClient,                          '2020-01-01-preview/generated/azure_mgmt_event_grid/event_grid_management_client.rb'

  module Models
    autoload :EventSubscriptionFilter,                            '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_filter.rb'
    autoload :RetryPolicy,                                        '2020-01-01-preview/generated/azure_mgmt_event_grid/models/retry_policy.rb'
    autoload :Resource,                                           '2020-01-01-preview/generated/azure_mgmt_event_grid/models/resource.rb'
    autoload :DeadLetterDestination,                              '2020-01-01-preview/generated/azure_mgmt_event_grid/models/dead_letter_destination.rb'
    autoload :JsonFieldWithDefault,                               '2020-01-01-preview/generated/azure_mgmt_event_grid/models/json_field_with_default.rb'
    autoload :InputSchemaMapping,                                 '2020-01-01-preview/generated/azure_mgmt_event_grid/models/input_schema_mapping.rb'
    autoload :JsonField,                                          '2020-01-01-preview/generated/azure_mgmt_event_grid/models/json_field.rb'
    autoload :EventTypesListResult,                               '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_types_list_result.rb'
    autoload :DomainsListResult,                                  '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domains_list_result.rb'
    autoload :TopicSharedAccessKeys,                              '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topic_shared_access_keys.rb'
    autoload :DomainRegenerateKeyRequest,                         '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domain_regenerate_key_request.rb'
    autoload :EventSubscriptionUpdateParameters,                  '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_update_parameters.rb'
    autoload :DomainTopicsListResult,                             '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domain_topics_list_result.rb'
    autoload :EventSubscriptionFullUrl,                           '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_full_url.rb'
    autoload :AdvancedFilter,                                     '2020-01-01-preview/generated/azure_mgmt_event_grid/models/advanced_filter.rb'
    autoload :EventSubscriptionsListResult,                       '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_subscriptions_list_result.rb'
    autoload :DomainUpdateParameters,                             '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domain_update_parameters.rb'
    autoload :OperationInfo,                                      '2020-01-01-preview/generated/azure_mgmt_event_grid/models/operation_info.rb'
    autoload :TopicTypesListResult,                               '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topic_types_list_result.rb'
    autoload :Operation,                                          '2020-01-01-preview/generated/azure_mgmt_event_grid/models/operation.rb'
    autoload :TopicRegenerateKeyRequest,                          '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topic_regenerate_key_request.rb'
    autoload :OperationsListResult,                               '2020-01-01-preview/generated/azure_mgmt_event_grid/models/operations_list_result.rb'
    autoload :EventSubscriptionDestination,                       '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_destination.rb'
    autoload :TopicUpdateParameters,                              '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topic_update_parameters.rb'
    autoload :DomainSharedAccessKeys,                             '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domain_shared_access_keys.rb'
    autoload :TopicsListResult,                                   '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topics_list_result.rb'
    autoload :JsonInputSchemaMapping,                             '2020-01-01-preview/generated/azure_mgmt_event_grid/models/json_input_schema_mapping.rb'
    autoload :TrackedResource,                                    '2020-01-01-preview/generated/azure_mgmt_event_grid/models/tracked_resource.rb'
    autoload :Domain,                                             '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domain.rb'
    autoload :DomainTopic,                                        '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domain_topic.rb'
    autoload :NumberInAdvancedFilter,                             '2020-01-01-preview/generated/azure_mgmt_event_grid/models/number_in_advanced_filter.rb'
    autoload :StorageBlobDeadLetterDestination,                   '2020-01-01-preview/generated/azure_mgmt_event_grid/models/storage_blob_dead_letter_destination.rb'
    autoload :NumberNotInAdvancedFilter,                          '2020-01-01-preview/generated/azure_mgmt_event_grid/models/number_not_in_advanced_filter.rb'
    autoload :NumberLessThanAdvancedFilter,                       '2020-01-01-preview/generated/azure_mgmt_event_grid/models/number_less_than_advanced_filter.rb'
    autoload :NumberGreaterThanAdvancedFilter,                    '2020-01-01-preview/generated/azure_mgmt_event_grid/models/number_greater_than_advanced_filter.rb'
    autoload :NumberLessThanOrEqualsAdvancedFilter,               '2020-01-01-preview/generated/azure_mgmt_event_grid/models/number_less_than_or_equals_advanced_filter.rb'
    autoload :NumberGreaterThanOrEqualsAdvancedFilter,            '2020-01-01-preview/generated/azure_mgmt_event_grid/models/number_greater_than_or_equals_advanced_filter.rb'
    autoload :BoolEqualsAdvancedFilter,                           '2020-01-01-preview/generated/azure_mgmt_event_grid/models/bool_equals_advanced_filter.rb'
    autoload :StringInAdvancedFilter,                             '2020-01-01-preview/generated/azure_mgmt_event_grid/models/string_in_advanced_filter.rb'
    autoload :StringNotInAdvancedFilter,                          '2020-01-01-preview/generated/azure_mgmt_event_grid/models/string_not_in_advanced_filter.rb'
    autoload :StringBeginsWithAdvancedFilter,                     '2020-01-01-preview/generated/azure_mgmt_event_grid/models/string_begins_with_advanced_filter.rb'
    autoload :StringEndsWithAdvancedFilter,                       '2020-01-01-preview/generated/azure_mgmt_event_grid/models/string_ends_with_advanced_filter.rb'
    autoload :StringContainsAdvancedFilter,                       '2020-01-01-preview/generated/azure_mgmt_event_grid/models/string_contains_advanced_filter.rb'
    autoload :WebHookEventSubscriptionDestination,                '2020-01-01-preview/generated/azure_mgmt_event_grid/models/web_hook_event_subscription_destination.rb'
    autoload :EventHubEventSubscriptionDestination,               '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_hub_event_subscription_destination.rb'
    autoload :StorageQueueEventSubscriptionDestination,           '2020-01-01-preview/generated/azure_mgmt_event_grid/models/storage_queue_event_subscription_destination.rb'
    autoload :HybridConnectionEventSubscriptionDestination,       '2020-01-01-preview/generated/azure_mgmt_event_grid/models/hybrid_connection_event_subscription_destination.rb'
    autoload :ServiceBusQueueEventSubscriptionDestination,        '2020-01-01-preview/generated/azure_mgmt_event_grid/models/service_bus_queue_event_subscription_destination.rb'
    autoload :ServiceBusTopicEventSubscriptionDestination,        '2020-01-01-preview/generated/azure_mgmt_event_grid/models/service_bus_topic_event_subscription_destination.rb'
    autoload :AzureFunctionEventSubscriptionDestination,          '2020-01-01-preview/generated/azure_mgmt_event_grid/models/azure_function_event_subscription_destination.rb'
    autoload :EventSubscription,                                  '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_subscription.rb'
    autoload :Topic,                                              '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topic.rb'
    autoload :EventType,                                          '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_type.rb'
    autoload :TopicTypeInfo,                                      '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topic_type_info.rb'
    autoload :DomainProvisioningState,                            '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domain_provisioning_state.rb'
    autoload :InputSchema,                                        '2020-01-01-preview/generated/azure_mgmt_event_grid/models/input_schema.rb'
    autoload :DomainTopicProvisioningState,                       '2020-01-01-preview/generated/azure_mgmt_event_grid/models/domain_topic_provisioning_state.rb'
    autoload :EventSubscriptionProvisioningState,                 '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_subscription_provisioning_state.rb'
    autoload :EventDeliverySchema,                                '2020-01-01-preview/generated/azure_mgmt_event_grid/models/event_delivery_schema.rb'
    autoload :TopicProvisioningState,                             '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topic_provisioning_state.rb'
    autoload :ResourceRegionType,                                 '2020-01-01-preview/generated/azure_mgmt_event_grid/models/resource_region_type.rb'
    autoload :TopicTypeProvisioningState,                         '2020-01-01-preview/generated/azure_mgmt_event_grid/models/topic_type_provisioning_state.rb'
  end
end
