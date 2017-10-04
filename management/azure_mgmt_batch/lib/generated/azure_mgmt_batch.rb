# encoding: utf-8
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
require 'generated/azure_mgmt_batch/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Batch
  autoload :BatchAccountOperations,                             'generated/azure_mgmt_batch/batch_account_operations.rb'
  autoload :ApplicationPackageOperations,                       'generated/azure_mgmt_batch/application_package_operations.rb'
  autoload :ApplicationOperations,                              'generated/azure_mgmt_batch/application_operations.rb'
  autoload :Location,                                           'generated/azure_mgmt_batch/location.rb'
  autoload :Operations,                                         'generated/azure_mgmt_batch/operations.rb'
  autoload :BatchManagementClient,                              'generated/azure_mgmt_batch/batch_management_client.rb'

  module Models
    autoload :ApplicationPackage,                                 'generated/azure_mgmt_batch/models/application_package.rb'
    autoload :Application,                                        'generated/azure_mgmt_batch/models/application.rb'
    autoload :KeyVaultReference,                                  'generated/azure_mgmt_batch/models/key_vault_reference.rb'
    autoload :ListApplicationsResult,                             'generated/azure_mgmt_batch/models/list_applications_result.rb'
    autoload :BatchAccountCreateParameters,                       'generated/azure_mgmt_batch/models/batch_account_create_parameters.rb'
    autoload :CheckNameAvailabilityParameters,                    'generated/azure_mgmt_batch/models/check_name_availability_parameters.rb'
    autoload :BatchAccountUpdateParameters,                       'generated/azure_mgmt_batch/models/batch_account_update_parameters.rb'
    autoload :ApplicationUpdateParameters,                        'generated/azure_mgmt_batch/models/application_update_parameters.rb'
    autoload :BatchAccountRegenerateKeyParameters,                'generated/azure_mgmt_batch/models/batch_account_regenerate_key_parameters.rb'
    autoload :BatchLocationQuota,                                 'generated/azure_mgmt_batch/models/batch_location_quota.rb'
    autoload :ActivateApplicationPackageParameters,               'generated/azure_mgmt_batch/models/activate_application_package_parameters.rb'
    autoload :Resource,                                           'generated/azure_mgmt_batch/models/resource.rb'
    autoload :AutoStorageBaseProperties,                          'generated/azure_mgmt_batch/models/auto_storage_base_properties.rb'
    autoload :BatchAccountListResult,                             'generated/azure_mgmt_batch/models/batch_account_list_result.rb'
    autoload :ApplicationCreateParameters,                        'generated/azure_mgmt_batch/models/application_create_parameters.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_batch/models/operation_display.rb'
    autoload :BatchAccountKeys,                                   'generated/azure_mgmt_batch/models/batch_account_keys.rb'
    autoload :Operation,                                          'generated/azure_mgmt_batch/models/operation.rb'
    autoload :CheckNameAvailabilityResult,                        'generated/azure_mgmt_batch/models/check_name_availability_result.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_batch/models/operation_list_result.rb'
    autoload :AutoStorageProperties,                              'generated/azure_mgmt_batch/models/auto_storage_properties.rb'
    autoload :BatchAccount,                                       'generated/azure_mgmt_batch/models/batch_account.rb'
    autoload :PoolAllocationMode,                                 'generated/azure_mgmt_batch/models/pool_allocation_mode.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_batch/models/provisioning_state.rb'
    autoload :AccountKeyType,                                     'generated/azure_mgmt_batch/models/account_key_type.rb'
    autoload :PackageState,                                       'generated/azure_mgmt_batch/models/package_state.rb'
    autoload :NameAvailabilityReason,                             'generated/azure_mgmt_batch/models/name_availability_reason.rb'
  end
end
