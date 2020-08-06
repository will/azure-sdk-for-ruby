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
require '2015-11-01-preview/generated/azure_mgmt_operations_management/module_definition'
require 'ms_rest_azure'

module Azure::OperationsManagement::Mgmt::V2015_11_01_preview
  autoload :Solutions,                                          '2015-11-01-preview/generated/azure_mgmt_operations_management/solutions.rb'
  autoload :ManagementAssociations,                             '2015-11-01-preview/generated/azure_mgmt_operations_management/management_associations.rb'
  autoload :ManagementConfigurations,                           '2015-11-01-preview/generated/azure_mgmt_operations_management/management_configurations.rb'
  autoload :Operations,                                         '2015-11-01-preview/generated/azure_mgmt_operations_management/operations.rb'
  autoload :OperationsManagementClient,                         '2015-11-01-preview/generated/azure_mgmt_operations_management/operations_management_client.rb'

  module Models
    autoload :Solution,                                           '2015-11-01-preview/generated/azure_mgmt_operations_management/models/solution.rb'
    autoload :SolutionPropertiesList,                             '2015-11-01-preview/generated/azure_mgmt_operations_management/models/solution_properties_list.rb'
    autoload :Operation,                                          '2015-11-01-preview/generated/azure_mgmt_operations_management/models/operation.rb'
    autoload :ManagementAssociation,                              '2015-11-01-preview/generated/azure_mgmt_operations_management/models/management_association.rb'
    autoload :SolutionProperties,                                 '2015-11-01-preview/generated/azure_mgmt_operations_management/models/solution_properties.rb'
    autoload :ManagementAssociationPropertiesList,                '2015-11-01-preview/generated/azure_mgmt_operations_management/models/management_association_properties_list.rb'
    autoload :ArmTemplateParameter,                               '2015-11-01-preview/generated/azure_mgmt_operations_management/models/arm_template_parameter.rb'
    autoload :ManagementConfiguration,                            '2015-11-01-preview/generated/azure_mgmt_operations_management/models/management_configuration.rb'
    autoload :SolutionPlan,                                       '2015-11-01-preview/generated/azure_mgmt_operations_management/models/solution_plan.rb'
    autoload :ManagementConfigurationPropertiesList,              '2015-11-01-preview/generated/azure_mgmt_operations_management/models/management_configuration_properties_list.rb'
    autoload :OperationListResult,                                '2015-11-01-preview/generated/azure_mgmt_operations_management/models/operation_list_result.rb'
    autoload :SolutionPatch,                                      '2015-11-01-preview/generated/azure_mgmt_operations_management/models/solution_patch.rb'
    autoload :ManagementConfigurationProperties,                  '2015-11-01-preview/generated/azure_mgmt_operations_management/models/management_configuration_properties.rb'
    autoload :CodeMessageErrorError,                              '2015-11-01-preview/generated/azure_mgmt_operations_management/models/code_message_error_error.rb'
    autoload :ManagementAssociationProperties,                    '2015-11-01-preview/generated/azure_mgmt_operations_management/models/management_association_properties.rb'
    autoload :CodeMessageError,                                   '2015-11-01-preview/generated/azure_mgmt_operations_management/models/code_message_error.rb'
    autoload :OperationDisplay,                                   '2015-11-01-preview/generated/azure_mgmt_operations_management/models/operation_display.rb'
  end
end
