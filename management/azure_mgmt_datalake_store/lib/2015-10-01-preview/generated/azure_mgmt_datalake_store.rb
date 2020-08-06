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
require '2015-10-01-preview/generated/azure_mgmt_datalake_store/module_definition'
require 'ms_rest_azure'

module Azure::DataLakeStore::Mgmt::V2015_10_01_preview
  autoload :Account,                                            '2015-10-01-preview/generated/azure_mgmt_datalake_store/account.rb'
  autoload :DataLakeStoreAccountManagementClient,               '2015-10-01-preview/generated/azure_mgmt_datalake_store/data_lake_store_account_management_client.rb'

  module Models
    autoload :DataLakeStoreAccountProperties,                     '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/data_lake_store_account_properties.rb'
    autoload :DataLakeStoreAccount,                               '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/data_lake_store_account.rb'
    autoload :FirewallRule,                                       '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/firewall_rule.rb'
    autoload :DataLakeStoreAccountListResult,                     '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/data_lake_store_account_list_result.rb'
    autoload :EncryptionIdentity,                                 '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/encryption_identity.rb'
    autoload :ErrorDetails,                                       '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/error_details.rb'
    autoload :EncryptionConfig,                                   '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/encryption_config.rb'
    autoload :InnerError,                                         '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/inner_error.rb'
    autoload :DataLakeStoreFirewallRuleListResult,                '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/data_lake_store_firewall_rule_list_result.rb'
    autoload :Error,                                              '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/error.rb'
    autoload :FirewallRuleProperties,                             '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/firewall_rule_properties.rb'
    autoload :AzureAsyncOperationResult,                          '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/azure_async_operation_result.rb'
    autoload :KeyVaultMetaInfo,                                   '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/key_vault_meta_info.rb'
    autoload :EncryptionIdentityType,                             '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/encryption_identity_type.rb'
    autoload :EncryptionConfigType,                               '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/encryption_config_type.rb'
    autoload :DataLakeStoreAccountStatus,                         '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/data_lake_store_account_status.rb'
    autoload :DataLakeStoreAccountState,                          '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/data_lake_store_account_state.rb'
    autoload :EncryptionState,                                    '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/encryption_state.rb'
    autoload :EncryptionProvisioningState,                        '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/encryption_provisioning_state.rb'
    autoload :OperationStatus,                                    '2015-10-01-preview/generated/azure_mgmt_datalake_store/models/operation_status.rb'
  end
end
