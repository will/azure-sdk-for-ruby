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
require '2019-06-01/generated/azure_mgmt_subscriptions/module_definition'
require 'ms_rest_azure'

module Azure::Subscriptions::Mgmt::V2019_06_01
  autoload :Operations,                                         '2019-06-01/generated/azure_mgmt_subscriptions/operations.rb'
  autoload :Subscriptions,                                      '2019-06-01/generated/azure_mgmt_subscriptions/subscriptions.rb'
  autoload :Tenants,                                            '2019-06-01/generated/azure_mgmt_subscriptions/tenants.rb'
  autoload :SubscriptionClient,                                 '2019-06-01/generated/azure_mgmt_subscriptions/subscription_client.rb'

  module Models
    autoload :SubscriptionListResult,                             '2019-06-01/generated/azure_mgmt_subscriptions/models/subscription_list_result.rb'
    autoload :TenantIdDescription,                                '2019-06-01/generated/azure_mgmt_subscriptions/models/tenant_id_description.rb'
    autoload :LocationListResult,                                 '2019-06-01/generated/azure_mgmt_subscriptions/models/location_list_result.rb'
    autoload :TenantListResult,                                   '2019-06-01/generated/azure_mgmt_subscriptions/models/tenant_list_result.rb'
    autoload :ManagedByTenant,                                    '2019-06-01/generated/azure_mgmt_subscriptions/models/managed_by_tenant.rb'
    autoload :OperationDisplay,                                   '2019-06-01/generated/azure_mgmt_subscriptions/models/operation_display.rb'
    autoload :Location,                                           '2019-06-01/generated/azure_mgmt_subscriptions/models/location.rb'
    autoload :Operation,                                          '2019-06-01/generated/azure_mgmt_subscriptions/models/operation.rb'
    autoload :Subscription,                                       '2019-06-01/generated/azure_mgmt_subscriptions/models/subscription.rb'
    autoload :OperationListResult,                                '2019-06-01/generated/azure_mgmt_subscriptions/models/operation_list_result.rb'
    autoload :SubscriptionPolicies,                               '2019-06-01/generated/azure_mgmt_subscriptions/models/subscription_policies.rb'
    autoload :SubscriptionState,                                  '2019-06-01/generated/azure_mgmt_subscriptions/models/subscription_state.rb'
    autoload :SpendingLimit,                                      '2019-06-01/generated/azure_mgmt_subscriptions/models/spending_limit.rb'
  end
end
