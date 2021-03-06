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
require '2019-01-21/generated/azure_mgmt_kusto/module_definition'
require 'ms_rest_azure'

module Azure::Kusto::Mgmt::V2019_01_21
  autoload :Clusters,                                           '2019-01-21/generated/azure_mgmt_kusto/clusters.rb'
  autoload :Databases,                                          '2019-01-21/generated/azure_mgmt_kusto/databases.rb'
  autoload :DataConnections,                                    '2019-01-21/generated/azure_mgmt_kusto/data_connections.rb'
  autoload :Operations,                                         '2019-01-21/generated/azure_mgmt_kusto/operations.rb'
  autoload :KustoManagementClient,                              '2019-01-21/generated/azure_mgmt_kusto/kusto_management_client.rb'

  module Models
    autoload :DatabasePrincipalListRequest,                       '2019-01-21/generated/azure_mgmt_kusto/models/database_principal_list_request.rb'
    autoload :TrustedExternalTenant,                              '2019-01-21/generated/azure_mgmt_kusto/models/trusted_external_tenant.rb'
    autoload :DataConnectionValidation,                           '2019-01-21/generated/azure_mgmt_kusto/models/data_connection_validation.rb'
    autoload :AzureCapacity,                                      '2019-01-21/generated/azure_mgmt_kusto/models/azure_capacity.rb'
    autoload :Resource,                                           '2019-01-21/generated/azure_mgmt_kusto/models/resource.rb'
    autoload :DatabaseStatistics,                                 '2019-01-21/generated/azure_mgmt_kusto/models/database_statistics.rb'
    autoload :OperationListResult,                                '2019-01-21/generated/azure_mgmt_kusto/models/operation_list_result.rb'
    autoload :AzureResourceSku,                                   '2019-01-21/generated/azure_mgmt_kusto/models/azure_resource_sku.rb'
    autoload :Operation,                                          '2019-01-21/generated/azure_mgmt_kusto/models/operation.rb'
    autoload :CheckNameResult,                                    '2019-01-21/generated/azure_mgmt_kusto/models/check_name_result.rb'
    autoload :DatabasePrincipal,                                  '2019-01-21/generated/azure_mgmt_kusto/models/database_principal.rb'
    autoload :ListResourceSkusResult,                             '2019-01-21/generated/azure_mgmt_kusto/models/list_resource_skus_result.rb'
    autoload :DatabaseListResult,                                 '2019-01-21/generated/azure_mgmt_kusto/models/database_list_result.rb'
    autoload :DataConnectionValidationListResult,                 '2019-01-21/generated/azure_mgmt_kusto/models/data_connection_validation_list_result.rb'
    autoload :ListSkusResult,                                     '2019-01-21/generated/azure_mgmt_kusto/models/list_skus_result.rb'
    autoload :DataConnectionListResult,                           '2019-01-21/generated/azure_mgmt_kusto/models/data_connection_list_result.rb'
    autoload :AzureSku,                                           '2019-01-21/generated/azure_mgmt_kusto/models/azure_sku.rb'
    autoload :ClusterListResult,                                  '2019-01-21/generated/azure_mgmt_kusto/models/cluster_list_result.rb'
    autoload :DataConnectionValidationResult,                     '2019-01-21/generated/azure_mgmt_kusto/models/data_connection_validation_result.rb'
    autoload :ClusterCheckNameRequest,                            '2019-01-21/generated/azure_mgmt_kusto/models/cluster_check_name_request.rb'
    autoload :DatabasePrincipalListResult,                        '2019-01-21/generated/azure_mgmt_kusto/models/database_principal_list_result.rb'
    autoload :DatabaseCheckNameRequest,                           '2019-01-21/generated/azure_mgmt_kusto/models/database_check_name_request.rb'
    autoload :OperationDisplay,                                   '2019-01-21/generated/azure_mgmt_kusto/models/operation_display.rb'
    autoload :DataConnectionCheckNameRequest,                     '2019-01-21/generated/azure_mgmt_kusto/models/data_connection_check_name_request.rb'
    autoload :Cluster,                                            '2019-01-21/generated/azure_mgmt_kusto/models/cluster.rb'
    autoload :ClusterUpdate,                                      '2019-01-21/generated/azure_mgmt_kusto/models/cluster_update.rb'
    autoload :Database,                                           '2019-01-21/generated/azure_mgmt_kusto/models/database.rb'
    autoload :DatabaseUpdate,                                     '2019-01-21/generated/azure_mgmt_kusto/models/database_update.rb'
    autoload :DataConnection,                                     '2019-01-21/generated/azure_mgmt_kusto/models/data_connection.rb'
    autoload :EventHubDataConnection,                             '2019-01-21/generated/azure_mgmt_kusto/models/event_hub_data_connection.rb'
    autoload :EventGridDataConnection,                            '2019-01-21/generated/azure_mgmt_kusto/models/event_grid_data_connection.rb'
    autoload :TrackedResource,                                    '2019-01-21/generated/azure_mgmt_kusto/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2019-01-21/generated/azure_mgmt_kusto/models/azure_entity_resource.rb'
    autoload :ProxyResource,                                      '2019-01-21/generated/azure_mgmt_kusto/models/proxy_resource.rb'
    autoload :State,                                              '2019-01-21/generated/azure_mgmt_kusto/models/state.rb'
    autoload :ProvisioningState,                                  '2019-01-21/generated/azure_mgmt_kusto/models/provisioning_state.rb'
    autoload :AzureSkuName,                                       '2019-01-21/generated/azure_mgmt_kusto/models/azure_sku_name.rb'
    autoload :AzureSkuTier,                                       '2019-01-21/generated/azure_mgmt_kusto/models/azure_sku_tier.rb'
    autoload :AzureScaleType,                                     '2019-01-21/generated/azure_mgmt_kusto/models/azure_scale_type.rb'
    autoload :DataFormat,                                         '2019-01-21/generated/azure_mgmt_kusto/models/data_format.rb'
    autoload :DatabasePrincipalRole,                              '2019-01-21/generated/azure_mgmt_kusto/models/database_principal_role.rb'
    autoload :DatabasePrincipalType,                              '2019-01-21/generated/azure_mgmt_kusto/models/database_principal_type.rb'
    autoload :Reason,                                             '2019-01-21/generated/azure_mgmt_kusto/models/reason.rb'
  end
end
