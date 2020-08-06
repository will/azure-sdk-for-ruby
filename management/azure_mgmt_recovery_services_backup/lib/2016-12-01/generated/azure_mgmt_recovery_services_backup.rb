# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
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
require '2016-12-01/generated/azure_mgmt_recovery_services_backup/module_definition'
require 'ms_rest_azure'

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  autoload :BackupResourceVaultConfigs,                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/backup_resource_vault_configs.rb'
  autoload :BackupEngines,                                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/backup_engines.rb'
  autoload :ProtectionContainerRefreshOperationResults,         '2016-12-01/generated/azure_mgmt_recovery_services_backup/protection_container_refresh_operation_results.rb'
  autoload :ProtectableContainers,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/protectable_containers.rb'
  autoload :ProtectionContainers,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/protection_containers.rb'
  autoload :BackupWorkloadItems,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/backup_workload_items.rb'
  autoload :ProtectionContainerOperationResults,                '2016-12-01/generated/azure_mgmt_recovery_services_backup/protection_container_operation_results.rb'
  autoload :ProtectedItems,                                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/protected_items.rb'
  autoload :Backups,                                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/backups.rb'
  autoload :ProtectedItemOperationResults,                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/protected_item_operation_results.rb'
  autoload :ProtectedItemOperationStatuses,                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/protected_item_operation_statuses.rb'
  autoload :RecoveryPoints,                                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/recovery_points.rb'
  autoload :ItemLevelRecoveryConnections,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/item_level_recovery_connections.rb'
  autoload :Restores,                                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/restores.rb'
  autoload :JobCancellations,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/job_cancellations.rb'
  autoload :JobOperationResults,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/job_operation_results.rb'
  autoload :BackupOperationResults,                             '2016-12-01/generated/azure_mgmt_recovery_services_backup/backup_operation_results.rb'
  autoload :BackupOperationStatuses,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/backup_operation_statuses.rb'
  autoload :ProtectionPolicies,                                 '2016-12-01/generated/azure_mgmt_recovery_services_backup/protection_policies.rb'
  autoload :ProtectionPolicyOperationResults,                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/protection_policy_operation_results.rb'
  autoload :ProtectionPolicyOperationStatuses,                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/protection_policy_operation_statuses.rb'
  autoload :BackupProtectableItems,                             '2016-12-01/generated/azure_mgmt_recovery_services_backup/backup_protectable_items.rb'
  autoload :BackupProtectionContainers,                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/backup_protection_containers.rb'
  autoload :SecurityPINs,                                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/security_pins.rb'
  autoload :BackupResourceStorageConfigs,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/backup_resource_storage_configs.rb'
  autoload :RecoveryServicesBackupClient,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/recovery_services_backup_client.rb'

  module Models
    autoload :AzureWorkloadContainerExtendedInfo,                 '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_container_extended_info.rb'
    autoload :DPMContainerExtendedInfo,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/dpmcontainer_extended_info.rb'
    autoload :InquiryInfo,                                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/inquiry_info.rb'
    autoload :Settings,                                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/settings.rb'
    autoload :ProtectionContainer,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protection_container.rb'
    autoload :SubProtectionPolicy,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/sub_protection_policy.rb'
    autoload :AzureFileshareProtectedItemExtendedInfo,            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_fileshare_protected_item_extended_info.rb'
    autoload :BMSContainersInquiryQueryObject,                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bmscontainers_inquiry_query_object.rb'
    autoload :SchedulePolicy,                                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/schedule_policy.rb'
    autoload :BMSContainerQueryObject,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bmscontainer_query_object.rb'
    autoload :RecoveryPoint,                                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point.rb'
    autoload :BMSBackupEnginesQueryObject,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bmsbackup_engines_query_object.rb'
    autoload :RestoreFileSpecs,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/restore_file_specs.rb'
    autoload :BMSBackupEngineQueryObject,                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bmsbackup_engine_query_object.rb'
    autoload :ResourceList,                                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/resource_list.rb'
    autoload :BEKDetails,                                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bekdetails.rb'
    autoload :GenericContainerExtendedInfo,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/generic_container_extended_info.rb'
    autoload :TokenInformation,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/token_information.rb'
    autoload :BackupResourceVaultConfig,                          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_resource_vault_config.rb'
    autoload :WorkloadItem,                                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_item.rb'
    autoload :OperationStatusExtendedInfo,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_extended_info.rb'
    autoload :AzureIaaSVMProtectedItemExtendedInfo,               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item_extended_info.rb'
    autoload :BackupResourceConfig,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_resource_config.rb'
    autoload :DailyRetentionSchedule,                             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/daily_retention_schedule.rb'
    autoload :ILRRequest,                                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/ilrrequest.rb'
    autoload :RetentionDuration,                                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/retention_duration.rb'
    autoload :BackupRequest,                                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_request.rb'
    autoload :DailyRetentionFormat,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/daily_retention_format.rb'
    autoload :SQLDataDirectory,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/sqldata_directory.rb'
    autoload :ContainerIdentityInfo,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/container_identity_info.rb'
    autoload :OperationStatusError,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_error.rb'
    autoload :BMSWorkloadItemQueryObject,                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bmsworkload_item_query_object.rb'
    autoload :InstantItemRecoveryTarget,                          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/instant_item_recovery_target.rb'
    autoload :BMSRPQueryObject,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bmsrpquery_object.rb'
    autoload :InquiryValidation,                                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/inquiry_validation.rb'
    autoload :BMSRefreshContainersQueryObject,                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bmsrefresh_containers_query_object.rb'
    autoload :WorkloadInquiryDetails,                             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_inquiry_details.rb'
    autoload :AzureVmWorkloadProtectedItemExtendedInfo,           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_protected_item_extended_info.rb'
    autoload :BackupEngineBase,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_engine_base.rb'
    autoload :ProtectionPolicy,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy.rb'
    autoload :DistributedNodesInfo,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/distributed_nodes_info.rb'
    autoload :RetentionPolicy,                                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/retention_policy.rb'
    autoload :Resource,                                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/resource.rb'
    autoload :BackupEngineExtendedInfo,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_engine_extended_info.rb'
    autoload :RestoreRequest,                                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/restore_request.rb'
    autoload :KeyAndSecretDetails,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/key_and_secret_details.rb'
    autoload :DPMProtectedItemExtendedInfo,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/dpmprotected_item_extended_info.rb'
    autoload :KEKDetails,                                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/kekdetails.rb'
    autoload :WorkloadProtectableItem,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item.rb'
    autoload :ProtectableContainer,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protectable_container.rb'
    autoload :AzureSqlProtectedItemExtendedInfo,                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item_extended_info.rb'
    autoload :PointInTimeRange,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/point_in_time_range.rb'
    autoload :ClientScriptForConnect,                             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/client_script_for_connect.rb'
    autoload :MabContainerExtendedInfo,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/mab_container_extended_info.rb'
    autoload :PreBackupValidation,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/pre_backup_validation.rb'
    autoload :MABContainerHealthDetails,                          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/mabcontainer_health_details.rb'
    autoload :BMSPOQueryObject,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/bmspoquery_object.rb'
    autoload :ProtectedItem,                                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protected_item.rb'
    autoload :TargetAFSRestoreInfo,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/target_afsrestore_info.rb'
    autoload :TargetRestoreInfo,                                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/target_restore_info.rb'
    autoload :AzureIaaSVMHealthDetails,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmhealth_details.rb'
    autoload :YearlyRetentionSchedule,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/yearly_retention_schedule.rb'
    autoload :Day,                                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/day.rb'
    autoload :MonthlyRetentionSchedule,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/monthly_retention_schedule.rb'
    autoload :ErrorDetail,                                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/error_detail.rb'
    autoload :WeeklyRetentionFormat,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/weekly_retention_format.rb'
    autoload :EncryptionDetails,                                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/encryption_details.rb'
    autoload :AzureWorkloadSQLRecoveryPointExtendedInfo,          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_sqlrecovery_point_extended_info.rb'
    autoload :RecoveryPointTierInformation,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point_tier_information.rb'
    autoload :WeeklyRetentionSchedule,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/weekly_retention_schedule.rb'
    autoload :OperationStatus,                                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/operation_status.rb'
    autoload :SQLDataDirectoryMapping,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/sqldata_directory_mapping.rb'
    autoload :GetProtectedItemQueryObject,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/get_protected_item_query_object.rb'
    autoload :MabFileFolderProtectedItemExtendedInfo,             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item_extended_info.rb'
    autoload :AzureBackupServerContainer,                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_backup_server_container.rb'
    autoload :AzureBackupServerEngine,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_backup_server_engine.rb'
    autoload :AzureFileShareBackupRequest,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_file_share_backup_request.rb'
    autoload :AzureFileShareProtectableItem,                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_file_share_protectable_item.rb'
    autoload :AzureFileshareProtectedItem,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_fileshare_protected_item.rb'
    autoload :AzureFileShareProtectionPolicy,                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_file_share_protection_policy.rb'
    autoload :AzureFileShareRecoveryPoint,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_file_share_recovery_point.rb'
    autoload :AzureFileShareRestoreRequest,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_file_share_restore_request.rb'
    autoload :AzureIaaSClassicComputeVMContainer,                 '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmcontainer.rb'
    autoload :AzureIaaSClassicComputeVMProtectableItem,           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotectable_item.rb'
    autoload :AzureIaaSVMProtectedItem,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item.rb'
    autoload :AzureIaaSClassicComputeVMProtectedItem,             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotected_item.rb'
    autoload :AzureIaaSComputeVMContainer,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmcontainer.rb'
    autoload :AzureIaaSComputeVMProtectableItem,                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotectable_item.rb'
    autoload :AzureIaaSComputeVMProtectedItem,                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotected_item.rb'
    autoload :AzureIaaSVMProtectionPolicy,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotection_policy.rb'
    autoload :AzureSqlContainer,                                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_container.rb'
    autoload :AzureSqlProtectedItem,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item.rb'
    autoload :AzureSqlProtectionPolicy,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protection_policy.rb'
    autoload :AzureStorageContainer,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_storage_container.rb'
    autoload :AzureStorageProtectableContainer,                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_storage_protectable_container.rb'
    autoload :AzureVMAppContainerProtectableContainer,            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vmapp_container_protectable_container.rb'
    autoload :AzureVmWorkloadItem,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_item.rb'
    autoload :AzureVmWorkloadProtectableItem,                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_protectable_item.rb'
    autoload :AzureVmWorkloadProtectedItem,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_protected_item.rb'
    autoload :AzureVmWorkloadProtectionPolicy,                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_protection_policy.rb'
    autoload :AzureVmWorkloadSAPHanaDatabaseProtectableItem,      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_saphana_database_protectable_item.rb'
    autoload :AzureVmWorkloadSAPHanaDatabaseProtectedItem,        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_saphana_database_protected_item.rb'
    autoload :AzureVmWorkloadSAPHanaDatabaseWorkloadItem,         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_saphana_database_workload_item.rb'
    autoload :AzureVmWorkloadSAPHanaSystemProtectableItem,        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_saphana_system_protectable_item.rb'
    autoload :AzureVmWorkloadSAPHanaSystemWorkloadItem,           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_saphana_system_workload_item.rb'
    autoload :AzureVmWorkloadSQLAvailabilityGroupProtectableItem, '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_sqlavailability_group_protectable_item.rb'
    autoload :AzureVmWorkloadSQLDatabaseProtectableItem,          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_sqldatabase_protectable_item.rb'
    autoload :AzureVmWorkloadSQLDatabaseProtectedItem,            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_sqldatabase_protected_item.rb'
    autoload :AzureVmWorkloadSQLDatabaseWorkloadItem,             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_sqldatabase_workload_item.rb'
    autoload :AzureVmWorkloadSQLInstanceProtectableItem,          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_sqlinstance_protectable_item.rb'
    autoload :AzureVmWorkloadSQLInstanceWorkloadItem,             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vm_workload_sqlinstance_workload_item.rb'
    autoload :AzureWorkloadBackupRequest,                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_backup_request.rb'
    autoload :AzureWorkloadContainer,                             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_container.rb'
    autoload :AzureSQLAGWorkloadContainerProtectionContainer,     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_sqlagworkload_container_protection_container.rb'
    autoload :AzureVMAppContainerProtectionContainer,             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_vmapp_container_protection_container.rb'
    autoload :AzureWorkloadRecoveryPoint,                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_recovery_point.rb'
    autoload :AzureWorkloadRestoreRequest,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_restore_request.rb'
    autoload :AzureWorkloadSAPHanaRecoveryPoint,                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_saphana_recovery_point.rb'
    autoload :AzureWorkloadSAPHanaPointInTimeRecoveryPoint,       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_saphana_point_in_time_recovery_point.rb'
    autoload :AzureWorkloadSAPHanaRestoreRequest,                 '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_saphana_restore_request.rb'
    autoload :AzureWorkloadSAPHanaPointInTimeRestoreRequest,      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_saphana_point_in_time_restore_request.rb'
    autoload :AzureWorkloadSQLPointInTimeRestoreRequest,          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_sqlpoint_in_time_restore_request.rb'
    autoload :AzureWorkloadSQLRecoveryPoint,                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_sqlrecovery_point.rb'
    autoload :AzureWorkloadSQLPointInTimeRecoveryPoint,           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_sqlpoint_in_time_recovery_point.rb'
    autoload :AzureWorkloadSQLRestoreRequest,                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_workload_sqlrestore_request.rb'
    autoload :BackupEngineBaseResource,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_engine_base_resource.rb'
    autoload :BackupEngineBaseResourceList,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_engine_base_resource_list.rb'
    autoload :BackupRequestResource,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_request_resource.rb'
    autoload :BackupResourceConfigResource,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_resource_config_resource.rb'
    autoload :BackupResourceVaultConfigResource,                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_resource_vault_config_resource.rb'
    autoload :DpmBackupEngine,                                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/dpm_backup_engine.rb'
    autoload :DpmContainer,                                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/dpm_container.rb'
    autoload :DPMProtectedItem,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/dpmprotected_item.rb'
    autoload :GenericContainer,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/generic_container.rb'
    autoload :GenericProtectedItem,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/generic_protected_item.rb'
    autoload :GenericProtectionPolicy,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/generic_protection_policy.rb'
    autoload :GenericRecoveryPoint,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/generic_recovery_point.rb'
    autoload :IaasVMBackupRequest,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmbackup_request.rb'
    autoload :IaaSVMContainer,                                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/iaa_svmcontainer.rb'
    autoload :IaasVMILRRegistrationRequest,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmilrregistration_request.rb'
    autoload :IaaSVMProtectableItem,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/iaa_svmprotectable_item.rb'
    autoload :IaasVMRecoveryPoint,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmrecovery_point.rb'
    autoload :IaasVMRestoreRequest,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmrestore_request.rb'
    autoload :ILRRequestResource,                                 '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/ilrrequest_resource.rb'
    autoload :LogSchedulePolicy,                                  '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/log_schedule_policy.rb'
    autoload :LongTermRetentionPolicy,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/long_term_retention_policy.rb'
    autoload :LongTermSchedulePolicy,                             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/long_term_schedule_policy.rb'
    autoload :MabContainer,                                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/mab_container.rb'
    autoload :MabFileFolderProtectedItem,                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item.rb'
    autoload :MabProtectionPolicy,                                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/mab_protection_policy.rb'
    autoload :OperationStatusJobExtendedInfo,                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_job_extended_info.rb'
    autoload :OperationStatusJobsExtendedInfo,                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_jobs_extended_info.rb'
    autoload :OperationStatusProvisionILRExtendedInfo,            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_provision_ilrextended_info.rb'
    autoload :ProtectableContainerResource,                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protectable_container_resource.rb'
    autoload :ProtectableContainerResourceList,                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protectable_container_resource_list.rb'
    autoload :ProtectedItemResource,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_resource.rb'
    autoload :ProtectionContainerResource,                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protection_container_resource.rb'
    autoload :ProtectionContainerResourceList,                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protection_container_resource_list.rb'
    autoload :ProtectionPolicyResource,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource.rb'
    autoload :RecoveryPointResource,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point_resource.rb'
    autoload :RecoveryPointResourceList,                          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point_resource_list.rb'
    autoload :RestoreRequestResource,                             '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/restore_request_resource.rb'
    autoload :SimpleRetentionPolicy,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/simple_retention_policy.rb'
    autoload :SimpleSchedulePolicy,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/simple_schedule_policy.rb'
    autoload :WorkloadItemResource,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_item_resource.rb'
    autoload :WorkloadItemResourceList,                           '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_item_resource_list.rb'
    autoload :WorkloadProtectableItemResource,                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item_resource.rb'
    autoload :WorkloadProtectableItemResourceList,                '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item_resource_list.rb'
    autoload :AzureFileShareType,                                 '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/azure_file_share_type.rb'
    autoload :ProtectionState,                                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protection_state.rb'
    autoload :HealthStatus,                                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/health_status.rb'
    autoload :RecoveryType,                                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/recovery_type.rb'
    autoload :CopyOptions,                                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/copy_options.rb'
    autoload :RestoreRequestType,                                 '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/restore_request_type.rb'
    autoload :ProtectedItemState,                                 '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_state.rb'
    autoload :InquiryStatus,                                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/inquiry_status.rb'
    autoload :LastBackupStatus,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/last_backup_status.rb'
    autoload :ProtectedItemHealthStatus,                          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_health_status.rb'
    autoload :SQLDataDirectoryType,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/sqldata_directory_type.rb'
    autoload :BackupType,                                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_type.rb'
    autoload :WorkloadType,                                       '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_type.rb'
    autoload :RestorePointType,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/restore_point_type.rb'
    autoload :OverwriteOptions,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/overwrite_options.rb'
    autoload :BackupManagementType,                               '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_management_type.rb'
    autoload :StorageType,                                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/storage_type.rb'
    autoload :StorageTypeState,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/storage_type_state.rb'
    autoload :EnhancedSecurityState,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/enhanced_security_state.rb'
    autoload :ContainerType,                                      '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/container_type.rb'
    autoload :RestorePointQueryType,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/restore_point_query_type.rb'
    autoload :WorkloadItemType,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/workload_item_type.rb'
    autoload :ProtectionStatus,                                   '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/protection_status.rb'
    autoload :RetentionDurationType,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/retention_duration_type.rb'
    autoload :RecoveryPointTierType,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point_tier_type.rb'
    autoload :RecoveryPointTierStatus,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point_tier_status.rb'
    autoload :DayOfWeek,                                          '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/day_of_week.rb'
    autoload :RetentionScheduleFormat,                            '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/retention_schedule_format.rb'
    autoload :WeekOfMonth,                                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/week_of_month.rb'
    autoload :MonthOfYear,                                        '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/month_of_year.rb'
    autoload :BackupItemType,                                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/backup_item_type.rb'
    autoload :OperationStatusValues,                              '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_values.rb'
    autoload :DataSourceType,                                     '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/data_source_type.rb'
    autoload :CreateMode,                                         '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/create_mode.rb'
    autoload :ScheduleRunType,                                    '2016-12-01/generated/azure_mgmt_recovery_services_backup/models/schedule_run_type.rb'
  end
end
