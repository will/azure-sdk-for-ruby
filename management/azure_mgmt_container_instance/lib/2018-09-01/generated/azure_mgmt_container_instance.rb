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
require '2018-09-01/generated/azure_mgmt_container_instance/module_definition'
require 'ms_rest_azure'

module Azure::ContainerInstance::Mgmt::V2018_09_01
  autoload :ContainerGroups,                                    '2018-09-01/generated/azure_mgmt_container_instance/container_groups.rb'
  autoload :Operations,                                         '2018-09-01/generated/azure_mgmt_container_instance/operations.rb'
  autoload :ContainerGroupUsage,                                '2018-09-01/generated/azure_mgmt_container_instance/container_group_usage.rb'
  autoload :ContainerOperations,                                '2018-09-01/generated/azure_mgmt_container_instance/container_operations.rb'
  autoload :ContainerInstanceManagementClient,                  '2018-09-01/generated/azure_mgmt_container_instance/container_instance_management_client.rb'

  module Models
    autoload :IpAddress,                                          '2018-09-01/generated/azure_mgmt_container_instance/models/ip_address.rb'
    autoload :ContainerPort,                                      '2018-09-01/generated/azure_mgmt_container_instance/models/container_port.rb'
    autoload :ContainerGroupPropertiesInstanceView,               '2018-09-01/generated/azure_mgmt_container_instance/models/container_group_properties_instance_view.rb'
    autoload :ContainerState,                                     '2018-09-01/generated/azure_mgmt_container_instance/models/container_state.rb'
    autoload :LogAnalytics,                                       '2018-09-01/generated/azure_mgmt_container_instance/models/log_analytics.rb'
    autoload :ContainerPropertiesInstanceView,                    '2018-09-01/generated/azure_mgmt_container_instance/models/container_properties_instance_view.rb'
    autoload :ContainerGroupDiagnostics,                          '2018-09-01/generated/azure_mgmt_container_instance/models/container_group_diagnostics.rb'
    autoload :ResourceLimits,                                     '2018-09-01/generated/azure_mgmt_container_instance/models/resource_limits.rb'
    autoload :ContainerGroupNetworkProfile,                       '2018-09-01/generated/azure_mgmt_container_instance/models/container_group_network_profile.rb'
    autoload :VolumeMount,                                        '2018-09-01/generated/azure_mgmt_container_instance/models/volume_mount.rb'
    autoload :ContainerExec,                                      '2018-09-01/generated/azure_mgmt_container_instance/models/container_exec.rb'
    autoload :ContainerProbe,                                     '2018-09-01/generated/azure_mgmt_container_instance/models/container_probe.rb'
    autoload :OperationDisplay,                                   '2018-09-01/generated/azure_mgmt_container_instance/models/operation_display.rb'
    autoload :AzureFileVolume,                                    '2018-09-01/generated/azure_mgmt_container_instance/models/azure_file_volume.rb'
    autoload :Operation,                                          '2018-09-01/generated/azure_mgmt_container_instance/models/operation.rb'
    autoload :Volume,                                             '2018-09-01/generated/azure_mgmt_container_instance/models/volume.rb'
    autoload :OperationListResult,                                '2018-09-01/generated/azure_mgmt_container_instance/models/operation_list_result.rb'
    autoload :Port,                                               '2018-09-01/generated/azure_mgmt_container_instance/models/port.rb'
    autoload :UsageName,                                          '2018-09-01/generated/azure_mgmt_container_instance/models/usage_name.rb'
    autoload :Event,                                              '2018-09-01/generated/azure_mgmt_container_instance/models/event.rb'
    autoload :Usage,                                              '2018-09-01/generated/azure_mgmt_container_instance/models/usage.rb'
    autoload :ResourceRequirements,                               '2018-09-01/generated/azure_mgmt_container_instance/models/resource_requirements.rb'
    autoload :UsageListResult,                                    '2018-09-01/generated/azure_mgmt_container_instance/models/usage_list_result.rb'
    autoload :Container,                                          '2018-09-01/generated/azure_mgmt_container_instance/models/container.rb'
    autoload :ContainerGroupListResult,                           '2018-09-01/generated/azure_mgmt_container_instance/models/container_group_list_result.rb'
    autoload :ImageRegistryCredential,                            '2018-09-01/generated/azure_mgmt_container_instance/models/image_registry_credential.rb'
    autoload :Logs,                                               '2018-09-01/generated/azure_mgmt_container_instance/models/logs.rb'
    autoload :ResourceRequests,                                   '2018-09-01/generated/azure_mgmt_container_instance/models/resource_requests.rb'
    autoload :ContainerExecRequestTerminalSize,                   '2018-09-01/generated/azure_mgmt_container_instance/models/container_exec_request_terminal_size.rb'
    autoload :GitRepoVolume,                                      '2018-09-01/generated/azure_mgmt_container_instance/models/git_repo_volume.rb'
    autoload :ContainerExecRequest,                               '2018-09-01/generated/azure_mgmt_container_instance/models/container_exec_request.rb'
    autoload :ContainerHttpGet,                                   '2018-09-01/generated/azure_mgmt_container_instance/models/container_http_get.rb'
    autoload :ContainerExecResponse,                              '2018-09-01/generated/azure_mgmt_container_instance/models/container_exec_response.rb'
    autoload :EnvironmentVariable,                                '2018-09-01/generated/azure_mgmt_container_instance/models/environment_variable.rb'
    autoload :Resource,                                           '2018-09-01/generated/azure_mgmt_container_instance/models/resource.rb'
    autoload :ContainerGroup,                                     '2018-09-01/generated/azure_mgmt_container_instance/models/container_group.rb'
    autoload :ContainerNetworkProtocol,                           '2018-09-01/generated/azure_mgmt_container_instance/models/container_network_protocol.rb'
    autoload :ContainerGroupRestartPolicy,                        '2018-09-01/generated/azure_mgmt_container_instance/models/container_group_restart_policy.rb'
    autoload :ContainerGroupNetworkProtocol,                      '2018-09-01/generated/azure_mgmt_container_instance/models/container_group_network_protocol.rb'
    autoload :ContainerGroupIpAddressType,                        '2018-09-01/generated/azure_mgmt_container_instance/models/container_group_ip_address_type.rb'
    autoload :OperatingSystemTypes,                               '2018-09-01/generated/azure_mgmt_container_instance/models/operating_system_types.rb'
    autoload :LogAnalyticsLogType,                                '2018-09-01/generated/azure_mgmt_container_instance/models/log_analytics_log_type.rb'
    autoload :ContainerInstanceOperationsOrigin,                  '2018-09-01/generated/azure_mgmt_container_instance/models/container_instance_operations_origin.rb'
  end
end
