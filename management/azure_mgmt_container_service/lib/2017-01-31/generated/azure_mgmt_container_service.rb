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
require '2017-01-31/generated/azure_mgmt_container_service/module_definition'
require 'ms_rest_azure'

module Azure::ContainerService::Mgmt::V2017_01_31
  autoload :ContainerServices,                                  '2017-01-31/generated/azure_mgmt_container_service/container_services.rb'
  autoload :ContainerServiceClient,                             '2017-01-31/generated/azure_mgmt_container_service/container_service_client.rb'

  module Models
    autoload :ContainerServiceSshPublicKey,                       '2017-01-31/generated/azure_mgmt_container_service/models/container_service_ssh_public_key.rb'
    autoload :Resource,                                           '2017-01-31/generated/azure_mgmt_container_service/models/resource.rb'
    autoload :ContainerServiceSshConfiguration,                   '2017-01-31/generated/azure_mgmt_container_service/models/container_service_ssh_configuration.rb'
    autoload :ContainerServiceServicePrincipalProfile,            '2017-01-31/generated/azure_mgmt_container_service/models/container_service_service_principal_profile.rb'
    autoload :ContainerServiceLinuxProfile,                       '2017-01-31/generated/azure_mgmt_container_service/models/container_service_linux_profile.rb'
    autoload :ContainerServiceMasterProfile,                      '2017-01-31/generated/azure_mgmt_container_service/models/container_service_master_profile.rb'
    autoload :ContainerServiceVMDiagnostics,                      '2017-01-31/generated/azure_mgmt_container_service/models/container_service_vmdiagnostics.rb'
    autoload :ContainerServiceWindowsProfile,                     '2017-01-31/generated/azure_mgmt_container_service/models/container_service_windows_profile.rb'
    autoload :ContainerServiceDiagnosticsProfile,                 '2017-01-31/generated/azure_mgmt_container_service/models/container_service_diagnostics_profile.rb'
    autoload :ContainerServiceOrchestratorProfile,                '2017-01-31/generated/azure_mgmt_container_service/models/container_service_orchestrator_profile.rb'
    autoload :ContainerServiceAgentPoolProfile,                   '2017-01-31/generated/azure_mgmt_container_service/models/container_service_agent_pool_profile.rb'
    autoload :ContainerServiceCustomProfile,                      '2017-01-31/generated/azure_mgmt_container_service/models/container_service_custom_profile.rb'
    autoload :ContainerServiceListResult,                         '2017-01-31/generated/azure_mgmt_container_service/models/container_service_list_result.rb'
    autoload :ContainerService,                                   '2017-01-31/generated/azure_mgmt_container_service/models/container_service.rb'
    autoload :ContainerServiceOrchestratorTypes,                  '2017-01-31/generated/azure_mgmt_container_service/models/container_service_orchestrator_types.rb'
    autoload :ContainerServiceVMSizeTypes,                        '2017-01-31/generated/azure_mgmt_container_service/models/container_service_vmsize_types.rb'
  end
end
