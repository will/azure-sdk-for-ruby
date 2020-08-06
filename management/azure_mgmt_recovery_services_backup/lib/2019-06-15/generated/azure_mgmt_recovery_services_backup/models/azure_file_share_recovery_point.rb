# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Azure File Share workload specific backup copy.
    #
    class AzureFileShareRecoveryPoint < RecoveryPoint

      include MsRestAzure


      def initialize
        @objectType = "AzureFileShareRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [String] Type of the backup copy. Specifies whether it is a
      # crash consistent backup or app consistent.
      attr_accessor :recovery_point_type

      # @return [DateTime] Time at which this backup copy was created.
      attr_accessor :recovery_point_time

      # @return [String] Contains Url to the snapshot of fileshare, if
      # applicable
      attr_accessor :file_share_snapshot_uri

      # @return [Integer] Contains recovery point size
      attr_accessor :recovery_point_size_in_gb


      #
      # Mapper for AzureFileShareRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFileShareRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'AzureFileShareRecoveryPoint',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'recoveryPointType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'recoveryPointTime',
                type: {
                  name: 'DateTime'
                }
              },
              file_share_snapshot_uri: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'fileShareSnapshotUri',
                type: {
                  name: 'String'
                }
              },
              recovery_point_size_in_gb: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'recoveryPointSizeInGB',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
