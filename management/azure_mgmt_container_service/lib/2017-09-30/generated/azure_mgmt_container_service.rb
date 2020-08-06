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
require '2017-09-30/generated/azure_mgmt_container_service/module_definition'
require 'ms_rest_azure'

module Azure::ContainerService::Mgmt::V2017_09_30
  autoload :ContainerServices,                                  '2017-09-30/generated/azure_mgmt_container_service/container_services.rb'
  autoload :ContainerServiceClient,                             '2017-09-30/generated/azure_mgmt_container_service/container_service_client.rb'

  module Models
    autoload :OrchestratorVersionProfile,                         '2017-09-30/generated/azure_mgmt_container_service/models/orchestrator_version_profile.rb'
    autoload :OrchestratorVersionProfileListResult,               '2017-09-30/generated/azure_mgmt_container_service/models/orchestrator_version_profile_list_result.rb'
    autoload :OrchestratorProfile,                                '2017-09-30/generated/azure_mgmt_container_service/models/orchestrator_profile.rb'
  end
end
