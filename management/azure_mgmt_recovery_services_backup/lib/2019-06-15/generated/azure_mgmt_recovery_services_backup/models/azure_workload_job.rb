# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Azure storage specific job.
    #
    class AzureWorkloadJob < Job

      include MsRestAzure


      def initialize
        @jobType = "AzureWorkloadJob"
      end

      attr_accessor :jobType

      # @return [String] Workload type of the job
      attr_accessor :workload_type

      # @return [Duration] Time elapsed during the execution of this job.
      attr_accessor :duration

      # @return [Array<JobSupportedAction>] Gets or sets the state/actions
      # applicable on this job like cancel/retry.
      attr_accessor :actions_info

      # @return [Array<AzureWorkloadErrorInfo>] Error details on execution of
      # this job.
      attr_accessor :error_details

      # @return [AzureWorkloadJobExtendedInfo] Additional information about the
      # job.
      attr_accessor :extended_info


      #
      # Mapper for AzureWorkloadJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadJob',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadJob',
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
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
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
              error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureWorkloadErrorInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureWorkloadErrorInfo'
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
                  class_name: 'AzureWorkloadJobExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
