# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # MAB workload-specific job.
    #
    class MabJob < Job

      include MsRestAzure


      def initialize
        @jobType = "MabJob"
      end

      attr_accessor :jobType

      # @return [Duration] Time taken by job to run.
      attr_accessor :duration

      # @return [Array<JobSupportedAction>] The state/actions applicable on
      # jobs like cancel/retry.
      attr_accessor :actions_info

      # @return [String] Name of server protecting the DS.
      attr_accessor :mab_server_name

      # @return [MabServerType] Server type of MAB container. Possible values
      # include: 'Invalid', 'Unknown', 'IaasVMContainer',
      # 'IaasVMServiceContainer', 'DPMContainer', 'AzureBackupServerContainer',
      # 'MABContainer', 'Cluster', 'AzureSqlContainer', 'Windows', 'VCenter',
      # 'VMAppContainer', 'SQLAGWorkLoadContainer', 'StorageContainer',
      # 'GenericContainer'
      attr_accessor :mab_server_type

      # @return [WorkloadType] Workload type of backup item. Possible values
      # include: 'Invalid', 'VM', 'FileFolder', 'AzureSqlDb', 'SQLDB',
      # 'Exchange', 'Sharepoint', 'VMwareVM', 'SystemState', 'Client',
      # 'GenericDataSource', 'SQLDataBase', 'AzureFileShare', 'SAPHanaDatabase'
      attr_accessor :workload_type

      # @return [Array<MabErrorInfo>] The errors.
      attr_accessor :error_details

      # @return [MabJobExtendedInfo] Additional information on the job.
      attr_accessor :extended_info


      #
      # Mapper for MabJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MabJob',
          type: {
            name: 'Composite',
            class_name: 'MabJob',
            model_properties: {
              entity_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'entityFriendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              activity_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityId',
                type: {
                  name: 'String'
                }
              },
              jobType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'jobType',
                type: {
                  name: 'String'
                }
              },
              duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'duration',
                type: {
                  name: 'TimeSpan'
                }
              },
              actions_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionsInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobSupportedActionElementType',
                      type: {
                        name: 'Enum',
                        module: 'JobSupportedAction'
                      }
                  }
                }
              },
              mab_server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mabServerName',
                type: {
                  name: 'String'
                }
              },
              mab_server_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mabServerType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MabErrorInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MabErrorInfo'
                      }
                  }
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'MabJobExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
