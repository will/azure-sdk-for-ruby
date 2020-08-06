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
require '2018-01-01-preview/generated/azure_mgmt_service_bus/module_definition'
require 'ms_rest_azure'

module Azure::ServiceBus::Mgmt::V2018_01_01_preview
  autoload :Operations,                                         '2018-01-01-preview/generated/azure_mgmt_service_bus/operations.rb'
  autoload :Namespaces,                                         '2018-01-01-preview/generated/azure_mgmt_service_bus/namespaces.rb'
  autoload :ServiceBusManagementClient,                         '2018-01-01-preview/generated/azure_mgmt_service_bus/service_bus_management_client.rb'

  module Models
    autoload :OperationListResult,                                '2018-01-01-preview/generated/azure_mgmt_service_bus/models/operation_list_result.rb'
    autoload :ErrorResponse,                                      '2018-01-01-preview/generated/azure_mgmt_service_bus/models/error_response.rb'
    autoload :Resource,                                           '2018-01-01-preview/generated/azure_mgmt_service_bus/models/resource.rb'
    autoload :OperationDisplay,                                   '2018-01-01-preview/generated/azure_mgmt_service_bus/models/operation_display.rb'
    autoload :Operation,                                          '2018-01-01-preview/generated/azure_mgmt_service_bus/models/operation.rb'
    autoload :NWRuleSetIpRules,                                   '2018-01-01-preview/generated/azure_mgmt_service_bus/models/nwrule_set_ip_rules.rb'
    autoload :VirtualNetworkRuleListResult,                       '2018-01-01-preview/generated/azure_mgmt_service_bus/models/virtual_network_rule_list_result.rb'
    autoload :Subnet,                                             '2018-01-01-preview/generated/azure_mgmt_service_bus/models/subnet.rb'
    autoload :NWRuleSetVirtualNetworkRules,                       '2018-01-01-preview/generated/azure_mgmt_service_bus/models/nwrule_set_virtual_network_rules.rb'
    autoload :SBNamespaceListResult,                              '2018-01-01-preview/generated/azure_mgmt_service_bus/models/sbnamespace_list_result.rb'
    autoload :SBSku,                                              '2018-01-01-preview/generated/azure_mgmt_service_bus/models/sbsku.rb'
    autoload :IpFilterRuleListResult,                             '2018-01-01-preview/generated/azure_mgmt_service_bus/models/ip_filter_rule_list_result.rb'
    autoload :TrackedResource,                                    '2018-01-01-preview/generated/azure_mgmt_service_bus/models/tracked_resource.rb'
    autoload :ResourceNamespacePatch,                             '2018-01-01-preview/generated/azure_mgmt_service_bus/models/resource_namespace_patch.rb'
    autoload :SBNamespace,                                        '2018-01-01-preview/generated/azure_mgmt_service_bus/models/sbnamespace.rb'
    autoload :SBNamespaceUpdateParameters,                        '2018-01-01-preview/generated/azure_mgmt_service_bus/models/sbnamespace_update_parameters.rb'
    autoload :IpFilterRule,                                       '2018-01-01-preview/generated/azure_mgmt_service_bus/models/ip_filter_rule.rb'
    autoload :VirtualNetworkRule,                                 '2018-01-01-preview/generated/azure_mgmt_service_bus/models/virtual_network_rule.rb'
    autoload :NetworkRuleSet,                                     '2018-01-01-preview/generated/azure_mgmt_service_bus/models/network_rule_set.rb'
    autoload :SkuName,                                            '2018-01-01-preview/generated/azure_mgmt_service_bus/models/sku_name.rb'
    autoload :SkuTier,                                            '2018-01-01-preview/generated/azure_mgmt_service_bus/models/sku_tier.rb'
    autoload :IPAction,                                           '2018-01-01-preview/generated/azure_mgmt_service_bus/models/ipaction.rb'
    autoload :NetworkRuleIPAction,                                '2018-01-01-preview/generated/azure_mgmt_service_bus/models/network_rule_ipaction.rb'
    autoload :DefaultAction,                                      '2018-01-01-preview/generated/azure_mgmt_service_bus/models/default_action.rb'
  end
end
