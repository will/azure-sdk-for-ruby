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
require '2019-04-01/generated/azure_mgmt_container_service/module_definition'
require 'ms_rest_azure'

module Azure::ContainerService::Mgmt::V2019_04_01
  autoload :ContainerServices,                                  '2019-04-01/generated/azure_mgmt_container_service/container_services.rb'
  autoload :Operations,                                         '2019-04-01/generated/azure_mgmt_container_service/operations.rb'
  autoload :ManagedClusters,                                    '2019-04-01/generated/azure_mgmt_container_service/managed_clusters.rb'
  autoload :AgentPools,                                         '2019-04-01/generated/azure_mgmt_container_service/agent_pools.rb'
  autoload :ContainerServiceClient,                             '2019-04-01/generated/azure_mgmt_container_service/container_service_client.rb'

  module Models
    autoload :ContainerServiceSshConfiguration,                   '2019-04-01/generated/azure_mgmt_container_service/models/container_service_ssh_configuration.rb'
    autoload :ContainerServiceLinuxProfile,                       '2019-04-01/generated/azure_mgmt_container_service/models/container_service_linux_profile.rb'
    autoload :OrchestratorVersionProfile,                         '2019-04-01/generated/azure_mgmt_container_service/models/orchestrator_version_profile.rb'
    autoload :ContainerServiceNetworkProfile,                     '2019-04-01/generated/azure_mgmt_container_service/models/container_service_network_profile.rb'
    autoload :OperationValue,                                     '2019-04-01/generated/azure_mgmt_container_service/models/operation_value.rb'
    autoload :ContainerServiceVMDiagnostics,                      '2019-04-01/generated/azure_mgmt_container_service/models/container_service_vmdiagnostics.rb'
    autoload :Resource,                                           '2019-04-01/generated/azure_mgmt_container_service/models/resource.rb'
    autoload :ContainerServiceDiagnosticsProfile,                 '2019-04-01/generated/azure_mgmt_container_service/models/container_service_diagnostics_profile.rb'
    autoload :TagsObject,                                         '2019-04-01/generated/azure_mgmt_container_service/models/tags_object.rb'
    autoload :ManagedClusterAddonProfile,                         '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_addon_profile.rb'
    autoload :ContainerServiceMasterProfile,                      '2019-04-01/generated/azure_mgmt_container_service/models/container_service_master_profile.rb'
    autoload :ManagedClusterAADProfile,                           '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_aadprofile.rb'
    autoload :ManagedClusterServicePrincipalProfile,              '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_service_principal_profile.rb'
    autoload :ManagedClusterAgentPoolProfileProperties,           '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_agent_pool_profile_properties.rb'
    autoload :AgentPoolListResult,                                '2019-04-01/generated/azure_mgmt_container_service/models/agent_pool_list_result.rb'
    autoload :ContainerServiceSshPublicKey,                       '2019-04-01/generated/azure_mgmt_container_service/models/container_service_ssh_public_key.rb'
    autoload :ManagedClusterIdentity,                             '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_identity.rb'
    autoload :OrchestratorVersionProfileListResult,               '2019-04-01/generated/azure_mgmt_container_service/models/orchestrator_version_profile_list_result.rb'
    autoload :CredentialResults,                                  '2019-04-01/generated/azure_mgmt_container_service/models/credential_results.rb'
    autoload :SubResource,                                        '2019-04-01/generated/azure_mgmt_container_service/models/sub_resource.rb'
    autoload :ManagedClusterListResult,                           '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_list_result.rb'
    autoload :ManagedClusterWindowsProfile,                       '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_windows_profile.rb'
    autoload :CredentialResult,                                   '2019-04-01/generated/azure_mgmt_container_service/models/credential_result.rb'
    autoload :OperationListResult,                                '2019-04-01/generated/azure_mgmt_container_service/models/operation_list_result.rb'
    autoload :ManagedClusterPoolUpgradeProfileUpgradesItem,       '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_pool_upgrade_profile_upgrades_item.rb'
    autoload :OrchestratorProfile,                                '2019-04-01/generated/azure_mgmt_container_service/models/orchestrator_profile.rb'
    autoload :ManagedClusterPoolUpgradeProfile,                   '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_pool_upgrade_profile.rb'
    autoload :ManagedClusterUpgradeProfile,                       '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_upgrade_profile.rb'
    autoload :ManagedClusterAgentPoolProfile,                     '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_agent_pool_profile.rb'
    autoload :AgentPool,                                          '2019-04-01/generated/azure_mgmt_container_service/models/agent_pool.rb'
    autoload :ManagedCluster,                                     '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster.rb'
    autoload :ManagedClusterAccessProfile,                        '2019-04-01/generated/azure_mgmt_container_service/models/managed_cluster_access_profile.rb'
    autoload :ContainerServiceStorageProfileTypes,                '2019-04-01/generated/azure_mgmt_container_service/models/container_service_storage_profile_types.rb'
    autoload :ContainerServiceVMSizeTypes,                        '2019-04-01/generated/azure_mgmt_container_service/models/container_service_vmsize_types.rb'
    autoload :OSType,                                             '2019-04-01/generated/azure_mgmt_container_service/models/ostype.rb'
    autoload :AgentPoolType,                                      '2019-04-01/generated/azure_mgmt_container_service/models/agent_pool_type.rb'
    autoload :NetworkPlugin,                                      '2019-04-01/generated/azure_mgmt_container_service/models/network_plugin.rb'
    autoload :NetworkPolicy,                                      '2019-04-01/generated/azure_mgmt_container_service/models/network_policy.rb'
    autoload :LoadBalancerSku,                                    '2019-04-01/generated/azure_mgmt_container_service/models/load_balancer_sku.rb'
    autoload :ResourceIdentityType,                               '2019-04-01/generated/azure_mgmt_container_service/models/resource_identity_type.rb'
  end
end
