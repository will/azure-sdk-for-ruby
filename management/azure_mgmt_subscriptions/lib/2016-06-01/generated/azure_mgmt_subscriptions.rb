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
require '2016-06-01/generated/azure_mgmt_subscriptions/module_definition'
require 'ms_rest_azure'

module Azure::Subscriptions::Mgmt::V2016_06_01
  autoload :Operations,                                         '2016-06-01/generated/azure_mgmt_subscriptions/operations.rb'
  autoload :Subscriptions,                                      '2016-06-01/generated/azure_mgmt_subscriptions/subscriptions.rb'
  autoload :Tenants,                                            '2016-06-01/generated/azure_mgmt_subscriptions/tenants.rb'
  autoload :SubscriptionClient,                                 '2016-06-01/generated/azure_mgmt_subscriptions/subscription_client.rb'

  module Models
    autoload :TenantIdDescription,                                '2016-06-01/generated/azure_mgmt_subscriptions/models/tenant_id_description.rb'
    autoload :Location,                                           '2016-06-01/generated/azure_mgmt_subscriptions/models/location.rb'
    autoload :TenantListResult,                                   '2016-06-01/generated/azure_mgmt_subscriptions/models/tenant_list_result.rb'
    autoload :SubscriptionPolicies,                               '2016-06-01/generated/azure_mgmt_subscriptions/models/subscription_policies.rb'
    autoload :OperationDisplay,                                   '2016-06-01/generated/azure_mgmt_subscriptions/models/operation_display.rb'
    autoload :SubscriptionListResult,                             '2016-06-01/generated/azure_mgmt_subscriptions/models/subscription_list_result.rb'
    autoload :Operation,                                          '2016-06-01/generated/azure_mgmt_subscriptions/models/operation.rb'
    autoload :Subscription,                                       '2016-06-01/generated/azure_mgmt_subscriptions/models/subscription.rb'
    autoload :OperationListResult,                                '2016-06-01/generated/azure_mgmt_subscriptions/models/operation_list_result.rb'
    autoload :LocationListResult,                                 '2016-06-01/generated/azure_mgmt_subscriptions/models/location_list_result.rb'
    autoload :SubscriptionState,                                  '2016-06-01/generated/azure_mgmt_subscriptions/models/subscription_state.rb'
    autoload :SpendingLimit,                                      '2016-06-01/generated/azure_mgmt_subscriptions/models/spending_limit.rb'
  end
end
