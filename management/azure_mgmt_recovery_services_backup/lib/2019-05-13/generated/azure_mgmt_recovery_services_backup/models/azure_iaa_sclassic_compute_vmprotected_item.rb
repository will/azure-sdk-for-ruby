# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # IaaS VM workload-specific backup item representing the Classic Compute
    # VM.
    #
    class AzureIaaSClassicComputeVMProtectedItem < AzureIaaSVMProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "Microsoft.ClassicCompute/virtualMachines"
      end

      attr_accessor :protectedItemType


      #
      # Mapper for AzureIaaSClassicComputeVMProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.ClassicCompute/virtualMachines',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSClassicComputeVMProtectedItem',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
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
              container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              backup_set_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupSetName',
                type: {
                  name: 'String'
                }
              },
              create_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createMode',
                type: {
                  name: 'String'
                }
              },
              deferred_delete_time_in_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deferredDeleteTimeInUTC',
                type: {
                  name: 'DateTime'
                }
              },
              is_scheduled_for_deferred_delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isScheduledForDeferredDelete',
                type: {
                  name: 'Boolean'
                }
              },
              deferred_delete_time_remaining: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deferredDeleteTimeRemaining',
                type: {
                  name: 'String'
                }
              },
              is_deferred_delete_schedule_upcoming: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isDeferredDeleteScheduleUpcoming',
                type: {
                  name: 'Boolean'
                }
              },
              is_rehydrate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isRehydrate',
                type: {
                  name: 'Boolean'
                }
              },
              protectedItemType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectedItemType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualMachineId',
                type: {
                  name: 'String'
                }
              },
              protection_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionStatus',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              health_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureIaaSVMHealthDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureIaaSVMHealthDetails'
                      }
                  }
                }
              },
              last_backup_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupStatus',
                type: {
                  name: 'String'
                }
              },
              last_backup_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupTime',
                type: {
                  name: 'DateTime'
                }
              },
              protected_item_data_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemDataId',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureIaaSVMProtectedItemExtendedInfo'
                }
              },
              extended_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ExtendedProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
