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
require '2019-03-01/generated/azure_mgmt_edgegateway/module_definition'
require 'ms_rest_azure'

module Azure::EdgeGateway::Mgmt::V2019_03_01
  autoload :Operations,                                         '2019-03-01/generated/azure_mgmt_edgegateway/operations.rb'
  autoload :Devices,                                            '2019-03-01/generated/azure_mgmt_edgegateway/devices.rb'
  autoload :Alerts,                                             '2019-03-01/generated/azure_mgmt_edgegateway/alerts.rb'
  autoload :BandwidthSchedules,                                 '2019-03-01/generated/azure_mgmt_edgegateway/bandwidth_schedules.rb'
  autoload :Jobs,                                               '2019-03-01/generated/azure_mgmt_edgegateway/jobs.rb'
  autoload :OperationsStatus,                                   '2019-03-01/generated/azure_mgmt_edgegateway/operations_status.rb'
  autoload :Orders,                                             '2019-03-01/generated/azure_mgmt_edgegateway/orders.rb'
  autoload :Roles,                                              '2019-03-01/generated/azure_mgmt_edgegateway/roles.rb'
  autoload :Shares,                                             '2019-03-01/generated/azure_mgmt_edgegateway/shares.rb'
  autoload :StorageAccountCredentials,                          '2019-03-01/generated/azure_mgmt_edgegateway/storage_account_credentials.rb'
  autoload :Triggers,                                           '2019-03-01/generated/azure_mgmt_edgegateway/triggers.rb'
  autoload :Users,                                              '2019-03-01/generated/azure_mgmt_edgegateway/users.rb'
  autoload :DataBoxEdgeManagementClient,                        '2019-03-01/generated/azure_mgmt_edgegateway/data_box_edge_management_client.rb'

  module Models
    autoload :Job,                                                '2019-03-01/generated/azure_mgmt_edgegateway/models/job.rb'
    autoload :Address,                                            '2019-03-01/generated/azure_mgmt_edgegateway/models/address.rb'
    autoload :MetricDimensionV1,                                  '2019-03-01/generated/azure_mgmt_edgegateway/models/metric_dimension_v1.rb'
    autoload :StorageAccountCredentialList,                       '2019-03-01/generated/azure_mgmt_edgegateway/models/storage_account_credential_list.rb'
    autoload :Ipv4Config,                                         '2019-03-01/generated/azure_mgmt_edgegateway/models/ipv4config.rb'
    autoload :ARMBaseModel,                                       '2019-03-01/generated/azure_mgmt_edgegateway/models/armbase_model.rb'
    autoload :Ipv6Config,                                         '2019-03-01/generated/azure_mgmt_edgegateway/models/ipv6config.rb'
    autoload :SymmetricKey,                                       '2019-03-01/generated/azure_mgmt_edgegateway/models/symmetric_key.rb'
    autoload :JobErrorItem,                                       '2019-03-01/generated/azure_mgmt_edgegateway/models/job_error_item.rb'
    autoload :AzureContainerInfo,                                 '2019-03-01/generated/azure_mgmt_edgegateway/models/azure_container_info.rb'
    autoload :JobErrorDetails,                                    '2019-03-01/generated/azure_mgmt_edgegateway/models/job_error_details.rb'
    autoload :BandwidthSchedulesList,                             '2019-03-01/generated/azure_mgmt_edgegateway/models/bandwidth_schedules_list.rb'
    autoload :UpdateDownloadProgress,                             '2019-03-01/generated/azure_mgmt_edgegateway/models/update_download_progress.rb'
    autoload :UpdateInstallProgress,                              '2019-03-01/generated/azure_mgmt_edgegateway/models/update_install_progress.rb'
    autoload :ContactDetails,                                     '2019-03-01/generated/azure_mgmt_edgegateway/models/contact_details.rb'
    autoload :AlertErrorDetails,                                  '2019-03-01/generated/azure_mgmt_edgegateway/models/alert_error_details.rb'
    autoload :UploadCertificateResponse,                          '2019-03-01/generated/azure_mgmt_edgegateway/models/upload_certificate_response.rb'
    autoload :ShareList,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/share_list.rb'
    autoload :DataBoxEdgeDeviceList,                              '2019-03-01/generated/azure_mgmt_edgegateway/models/data_box_edge_device_list.rb'
    autoload :MetricSpecificationV1,                              '2019-03-01/generated/azure_mgmt_edgegateway/models/metric_specification_v1.rb'
    autoload :FileSourceInfo,                                     '2019-03-01/generated/azure_mgmt_edgegateway/models/file_source_info.rb'
    autoload :NetworkAdapterPosition,                             '2019-03-01/generated/azure_mgmt_edgegateway/models/network_adapter_position.rb'
    autoload :TriggerList,                                        '2019-03-01/generated/azure_mgmt_edgegateway/models/trigger_list.rb'
    autoload :NetworkAdapter,                                     '2019-03-01/generated/azure_mgmt_edgegateway/models/network_adapter.rb'
    autoload :MountPointMap,                                      '2019-03-01/generated/azure_mgmt_edgegateway/models/mount_point_map.rb'
    autoload :ShareAccessRight,                                   '2019-03-01/generated/azure_mgmt_edgegateway/models/share_access_right.rb'
    autoload :AsymmetricEncryptedSecret,                          '2019-03-01/generated/azure_mgmt_edgegateway/models/asymmetric_encrypted_secret.rb'
    autoload :OperationDisplay,                                   '2019-03-01/generated/azure_mgmt_edgegateway/models/operation_display.rb'
    autoload :UserList,                                           '2019-03-01/generated/azure_mgmt_edgegateway/models/user_list.rb'
    autoload :ServiceSpecification,                               '2019-03-01/generated/azure_mgmt_edgegateway/models/service_specification.rb'
    autoload :Operation,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/operation.rb'
    autoload :UploadCertificateRequest,                           '2019-03-01/generated/azure_mgmt_edgegateway/models/upload_certificate_request.rb'
    autoload :OperationsList,                                     '2019-03-01/generated/azure_mgmt_edgegateway/models/operations_list.rb'
    autoload :RoleSinkInfo,                                       '2019-03-01/generated/azure_mgmt_edgegateway/models/role_sink_info.rb'
    autoload :OrderStatus,                                        '2019-03-01/generated/azure_mgmt_edgegateway/models/order_status.rb'
    autoload :AlertList,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/alert_list.rb'
    autoload :TrackingInfo,                                       '2019-03-01/generated/azure_mgmt_edgegateway/models/tracking_info.rb'
    autoload :ClientAccessRight,                                  '2019-03-01/generated/azure_mgmt_edgegateway/models/client_access_right.rb'
    autoload :UserAccessRight,                                    '2019-03-01/generated/azure_mgmt_edgegateway/models/user_access_right.rb'
    autoload :DataBoxEdgeDevicePatch,                             '2019-03-01/generated/azure_mgmt_edgegateway/models/data_box_edge_device_patch.rb'
    autoload :OrderList,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/order_list.rb'
    autoload :Authentication,                                     '2019-03-01/generated/azure_mgmt_edgegateway/models/authentication.rb'
    autoload :PeriodicTimerSourceInfo,                            '2019-03-01/generated/azure_mgmt_edgegateway/models/periodic_timer_source_info.rb'
    autoload :IoTDeviceInfo,                                      '2019-03-01/generated/azure_mgmt_edgegateway/models/io_tdevice_info.rb'
    autoload :RoleList,                                           '2019-03-01/generated/azure_mgmt_edgegateway/models/role_list.rb'
    autoload :Sku,                                                '2019-03-01/generated/azure_mgmt_edgegateway/models/sku.rb'
    autoload :RefreshDetails,                                     '2019-03-01/generated/azure_mgmt_edgegateway/models/refresh_details.rb'
    autoload :Alert,                                              '2019-03-01/generated/azure_mgmt_edgegateway/models/alert.rb'
    autoload :BandwidthSchedule,                                  '2019-03-01/generated/azure_mgmt_edgegateway/models/bandwidth_schedule.rb'
    autoload :DataBoxEdgeDevice,                                  '2019-03-01/generated/azure_mgmt_edgegateway/models/data_box_edge_device.rb'
    autoload :DataBoxEdgeDeviceExtendedInfo,                      '2019-03-01/generated/azure_mgmt_edgegateway/models/data_box_edge_device_extended_info.rb'
    autoload :FileEventTrigger,                                   '2019-03-01/generated/azure_mgmt_edgegateway/models/file_event_trigger.rb'
    autoload :IoTRole,                                            '2019-03-01/generated/azure_mgmt_edgegateway/models/io_trole.rb'
    autoload :NetworkSettings,                                    '2019-03-01/generated/azure_mgmt_edgegateway/models/network_settings.rb'
    autoload :Order,                                              '2019-03-01/generated/azure_mgmt_edgegateway/models/order.rb'
    autoload :PeriodicTimerEventTrigger,                          '2019-03-01/generated/azure_mgmt_edgegateway/models/periodic_timer_event_trigger.rb'
    autoload :Role,                                               '2019-03-01/generated/azure_mgmt_edgegateway/models/role.rb'
    autoload :SecuritySettings,                                   '2019-03-01/generated/azure_mgmt_edgegateway/models/security_settings.rb'
    autoload :Share,                                              '2019-03-01/generated/azure_mgmt_edgegateway/models/share.rb'
    autoload :StorageAccountCredential,                           '2019-03-01/generated/azure_mgmt_edgegateway/models/storage_account_credential.rb'
    autoload :Trigger,                                            '2019-03-01/generated/azure_mgmt_edgegateway/models/trigger.rb'
    autoload :UpdateSummary,                                      '2019-03-01/generated/azure_mgmt_edgegateway/models/update_summary.rb'
    autoload :User,                                               '2019-03-01/generated/azure_mgmt_edgegateway/models/user.rb'
    autoload :AlertSeverity,                                      '2019-03-01/generated/azure_mgmt_edgegateway/models/alert_severity.rb'
    autoload :EncryptionAlgorithm,                                '2019-03-01/generated/azure_mgmt_edgegateway/models/encryption_algorithm.rb'
    autoload :AzureContainerDataFormat,                           '2019-03-01/generated/azure_mgmt_edgegateway/models/azure_container_data_format.rb'
    autoload :DayOfWeek,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/day_of_week.rb'
    autoload :ClientPermissionType,                               '2019-03-01/generated/azure_mgmt_edgegateway/models/client_permission_type.rb'
    autoload :SkuName,                                            '2019-03-01/generated/azure_mgmt_edgegateway/models/sku_name.rb'
    autoload :SkuTier,                                            '2019-03-01/generated/azure_mgmt_edgegateway/models/sku_tier.rb'
    autoload :DataBoxEdgeDeviceStatus,                            '2019-03-01/generated/azure_mgmt_edgegateway/models/data_box_edge_device_status.rb'
    autoload :DeviceType,                                         '2019-03-01/generated/azure_mgmt_edgegateway/models/device_type.rb'
    autoload :RoleTypes,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/role_types.rb'
    autoload :PlatformType,                                       '2019-03-01/generated/azure_mgmt_edgegateway/models/platform_type.rb'
    autoload :RoleStatus,                                         '2019-03-01/generated/azure_mgmt_edgegateway/models/role_status.rb'
    autoload :JobStatus,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/job_status.rb'
    autoload :JobType,                                            '2019-03-01/generated/azure_mgmt_edgegateway/models/job_type.rb'
    autoload :UpdateOperationStage,                               '2019-03-01/generated/azure_mgmt_edgegateway/models/update_operation_stage.rb'
    autoload :DownloadPhase,                                      '2019-03-01/generated/azure_mgmt_edgegateway/models/download_phase.rb'
    autoload :MetricUnit,                                         '2019-03-01/generated/azure_mgmt_edgegateway/models/metric_unit.rb'
    autoload :MetricAggregationType,                              '2019-03-01/generated/azure_mgmt_edgegateway/models/metric_aggregation_type.rb'
    autoload :MetricCategory,                                     '2019-03-01/generated/azure_mgmt_edgegateway/models/metric_category.rb'
    autoload :TimeGrain,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/time_grain.rb'
    autoload :NetworkGroup,                                       '2019-03-01/generated/azure_mgmt_edgegateway/models/network_group.rb'
    autoload :NetworkAdapterStatus,                               '2019-03-01/generated/azure_mgmt_edgegateway/models/network_adapter_status.rb'
    autoload :NetworkAdapterRDMAStatus,                           '2019-03-01/generated/azure_mgmt_edgegateway/models/network_adapter_rdmastatus.rb'
    autoload :NetworkAdapterDHCPStatus,                           '2019-03-01/generated/azure_mgmt_edgegateway/models/network_adapter_dhcpstatus.rb'
    autoload :OrderState,                                         '2019-03-01/generated/azure_mgmt_edgegateway/models/order_state.rb'
    autoload :AuthenticationType,                                 '2019-03-01/generated/azure_mgmt_edgegateway/models/authentication_type.rb'
    autoload :ShareStatus,                                        '2019-03-01/generated/azure_mgmt_edgegateway/models/share_status.rb'
    autoload :MonitoringStatus,                                   '2019-03-01/generated/azure_mgmt_edgegateway/models/monitoring_status.rb'
    autoload :ShareAccessProtocol,                                '2019-03-01/generated/azure_mgmt_edgegateway/models/share_access_protocol.rb'
    autoload :ShareAccessType,                                    '2019-03-01/generated/azure_mgmt_edgegateway/models/share_access_type.rb'
    autoload :DataPolicy,                                         '2019-03-01/generated/azure_mgmt_edgegateway/models/data_policy.rb'
    autoload :SSLStatus,                                          '2019-03-01/generated/azure_mgmt_edgegateway/models/sslstatus.rb'
    autoload :AccountType,                                        '2019-03-01/generated/azure_mgmt_edgegateway/models/account_type.rb'
    autoload :InstallRebootBehavior,                              '2019-03-01/generated/azure_mgmt_edgegateway/models/install_reboot_behavior.rb'
    autoload :UpdateOperation,                                    '2019-03-01/generated/azure_mgmt_edgegateway/models/update_operation.rb'
  end
end
