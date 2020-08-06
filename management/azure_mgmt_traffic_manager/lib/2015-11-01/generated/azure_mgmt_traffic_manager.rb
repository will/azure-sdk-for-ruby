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
require '2015-11-01/generated/azure_mgmt_traffic_manager/module_definition'
require 'ms_rest_azure'

module Azure::TrafficManager::Mgmt::V2015_11_01
  autoload :Endpoints,                                          '2015-11-01/generated/azure_mgmt_traffic_manager/endpoints.rb'
  autoload :Profiles,                                           '2015-11-01/generated/azure_mgmt_traffic_manager/profiles.rb'
  autoload :TrafficManagerManagementClient,                     '2015-11-01/generated/azure_mgmt_traffic_manager/traffic_manager_management_client.rb'

  module Models
    autoload :Endpoint,                                           '2015-11-01/generated/azure_mgmt_traffic_manager/models/endpoint.rb'
    autoload :ProfileListResult,                                  '2015-11-01/generated/azure_mgmt_traffic_manager/models/profile_list_result.rb'
    autoload :DnsConfig,                                          '2015-11-01/generated/azure_mgmt_traffic_manager/models/dns_config.rb'
    autoload :TrafficManagerNameAvailability,                     '2015-11-01/generated/azure_mgmt_traffic_manager/models/traffic_manager_name_availability.rb'
    autoload :CheckTrafficManagerRelativeDnsNameAvailabilityParameters, '2015-11-01/generated/azure_mgmt_traffic_manager/models/check_traffic_manager_relative_dns_name_availability_parameters.rb'
    autoload :Resource,                                           '2015-11-01/generated/azure_mgmt_traffic_manager/models/resource.rb'
    autoload :MonitorConfig,                                      '2015-11-01/generated/azure_mgmt_traffic_manager/models/monitor_config.rb'
    autoload :Profile,                                            '2015-11-01/generated/azure_mgmt_traffic_manager/models/profile.rb'
  end
end
