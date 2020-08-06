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
require '2017-01-01/generated/azure_mgmt_batch/module_definition'
require 'ms_rest_azure'

module Azure::Batch::Mgmt::V2017_01_01
  autoload :BatchAccountOperations,                             '2017-01-01/generated/azure_mgmt_batch/batch_account_operations.rb'
  autoload :ApplicationPackageOperations,                       '2017-01-01/generated/azure_mgmt_batch/application_package_operations.rb'
  autoload :ApplicationOperations,                              '2017-01-01/generated/azure_mgmt_batch/application_operations.rb'
  autoload :Location,                                           '2017-01-01/generated/azure_mgmt_batch/location.rb'
  autoload :BatchManagementClient,                              '2017-01-01/generated/azure_mgmt_batch/batch_management_client.rb'

  module Models
    autoload :BatchAccountKeys,                                   '2017-01-01/generated/azure_mgmt_batch/models/batch_account_keys.rb'
    autoload :ActivateApplicationPackageParameters,               '2017-01-01/generated/azure_mgmt_batch/models/activate_application_package_parameters.rb'
    autoload :KeyVaultReference,                                  '2017-01-01/generated/azure_mgmt_batch/models/key_vault_reference.rb'
    autoload :AddApplicationParameters,                           '2017-01-01/generated/azure_mgmt_batch/models/add_application_parameters.rb'
    autoload :AutoStorageProperties,                              '2017-01-01/generated/azure_mgmt_batch/models/auto_storage_properties.rb'
    autoload :ApplicationPackage,                                 '2017-01-01/generated/azure_mgmt_batch/models/application_package.rb'
    autoload :BatchAccountUpdateParameters,                       '2017-01-01/generated/azure_mgmt_batch/models/batch_account_update_parameters.rb'
    autoload :Application,                                        '2017-01-01/generated/azure_mgmt_batch/models/application.rb'
    autoload :BatchAccountRegenerateKeyParameters,                '2017-01-01/generated/azure_mgmt_batch/models/batch_account_regenerate_key_parameters.rb'
    autoload :ListApplicationsResult,                             '2017-01-01/generated/azure_mgmt_batch/models/list_applications_result.rb'
    autoload :BatchAccountCreateParameters,                       '2017-01-01/generated/azure_mgmt_batch/models/batch_account_create_parameters.rb'
    autoload :UpdateApplicationParameters,                        '2017-01-01/generated/azure_mgmt_batch/models/update_application_parameters.rb'
    autoload :BatchAccountListResult,                             '2017-01-01/generated/azure_mgmt_batch/models/batch_account_list_result.rb'
    autoload :BatchLocationQuota,                                 '2017-01-01/generated/azure_mgmt_batch/models/batch_location_quota.rb'
    autoload :AutoStorageBaseProperties,                          '2017-01-01/generated/azure_mgmt_batch/models/auto_storage_base_properties.rb'
    autoload :Resource,                                           '2017-01-01/generated/azure_mgmt_batch/models/resource.rb'
    autoload :BatchAccount,                                       '2017-01-01/generated/azure_mgmt_batch/models/batch_account.rb'
    autoload :PoolAllocationMode,                                 '2017-01-01/generated/azure_mgmt_batch/models/pool_allocation_mode.rb'
    autoload :ProvisioningState,                                  '2017-01-01/generated/azure_mgmt_batch/models/provisioning_state.rb'
    autoload :AccountKeyType,                                     '2017-01-01/generated/azure_mgmt_batch/models/account_key_type.rb'
    autoload :PackageState,                                       '2017-01-01/generated/azure_mgmt_batch/models/package_state.rb'
  end
end
