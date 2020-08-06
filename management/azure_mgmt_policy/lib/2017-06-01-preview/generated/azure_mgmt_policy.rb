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
require '2017-06-01-preview/generated/azure_mgmt_policy/module_definition'
require 'ms_rest_azure'

module Azure::Policy::Mgmt::V2017_06_01_preview
  autoload :PolicyAssignments,                                  '2017-06-01-preview/generated/azure_mgmt_policy/policy_assignments.rb'
  autoload :PolicySetDefinitions,                               '2017-06-01-preview/generated/azure_mgmt_policy/policy_set_definitions.rb'
  autoload :PolicyClient,                                       '2017-06-01-preview/generated/azure_mgmt_policy/policy_client.rb'

  module Models
    autoload :ErrorResponse,                                      '2017-06-01-preview/generated/azure_mgmt_policy/models/error_response.rb'
    autoload :PolicyDefinitionReference,                          '2017-06-01-preview/generated/azure_mgmt_policy/models/policy_definition_reference.rb'
    autoload :PolicyAssignment,                                   '2017-06-01-preview/generated/azure_mgmt_policy/models/policy_assignment.rb'
    autoload :PolicySetDefinition,                                '2017-06-01-preview/generated/azure_mgmt_policy/models/policy_set_definition.rb'
    autoload :PolicySku,                                          '2017-06-01-preview/generated/azure_mgmt_policy/models/policy_sku.rb'
    autoload :PolicySetDefinitionListResult,                      '2017-06-01-preview/generated/azure_mgmt_policy/models/policy_set_definition_list_result.rb'
    autoload :PolicyAssignmentListResult,                         '2017-06-01-preview/generated/azure_mgmt_policy/models/policy_assignment_list_result.rb'
    autoload :PolicyType,                                         '2017-06-01-preview/generated/azure_mgmt_policy/models/policy_type.rb'
  end
end
