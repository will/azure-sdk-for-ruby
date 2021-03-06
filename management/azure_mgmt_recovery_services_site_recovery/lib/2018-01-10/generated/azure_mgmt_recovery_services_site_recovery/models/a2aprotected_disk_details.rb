# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # A2A protected disk details.
    #
    class A2AProtectedDiskDetails

      include MsRestAzure

      # @return [String] The disk uri.
      attr_accessor :disk_uri

      # @return [String] The recovery disk storage account.
      attr_accessor :recovery_azure_storage_account_id

      # @return [String] The primary disk storage account.
      attr_accessor :primary_disk_azure_storage_account_id

      # @return [String] Recovery disk uri.
      attr_accessor :recovery_disk_uri

      # @return [String] The disk name.
      attr_accessor :disk_name

      # @return [Integer] The disk capacity in bytes.
      attr_accessor :disk_capacity_in_bytes

      # @return [String] The primary staging storage account.
      attr_accessor :primary_staging_azure_storage_account_id

      # @return [String] The type of disk.
      attr_accessor :disk_type

      # @return [Boolean] A value indicating whether resync is required for
      # this disk.
      attr_accessor :resync_required

      # @return [Integer] The percentage of the monitoring job. The type of the
      # monitoring job is defined by MonitoringJobType property.
      attr_accessor :monitoring_percentage_completion

      # @return [String] The type of the monitoring job. The progress is
      # contained in MonitoringPercentageCompletion property.
      attr_accessor :monitoring_job_type

      # @return [Float] The data pending for replication in MB at staging
      # account.
      attr_accessor :data_pending_in_staging_storage_account_in_mb

      # @return [Float] The data pending at source virtual machine in MB.
      attr_accessor :data_pending_at_source_agent_in_mb


      #
      # Mapper for A2AProtectedDiskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'A2AProtectedDiskDetails',
          type: {
            name: 'Composite',
            class_name: 'A2AProtectedDiskDetails',
            model_properties: {
              disk_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskUri',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryAzureStorageAccountId',
                type: {
                  name: 'String'
                }
              },
              primary_disk_azure_storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryDiskAzureStorageAccountId',
                type: {
                  name: 'String'
                }
              },
              recovery_disk_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryDiskUri',
                type: {
                  name: 'String'
                }
              },
              disk_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskName',
                type: {
                  name: 'String'
                }
              },
              disk_capacity_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskCapacityInBytes',
                type: {
                  name: 'Number'
                }
              },
              primary_staging_azure_storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryStagingAzureStorageAccountId',
                type: {
                  name: 'String'
                }
              },
              disk_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskType',
                type: {
                  name: 'String'
                }
              },
              resync_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resyncRequired',
                type: {
                  name: 'Boolean'
                }
              },
              monitoring_percentage_completion: {
                client_side_validation: true,
                required: false,
                serialized_name: 'monitoringPercentageCompletion',
                type: {
                  name: 'Number'
                }
              },
              monitoring_job_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'monitoringJobType',
                type: {
                  name: 'String'
                }
              },
              data_pending_in_staging_storage_account_in_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataPendingInStagingStorageAccountInMB',
                type: {
                  name: 'Double'
                }
              },
              data_pending_at_source_agent_in_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataPendingAtSourceAgentInMB',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
