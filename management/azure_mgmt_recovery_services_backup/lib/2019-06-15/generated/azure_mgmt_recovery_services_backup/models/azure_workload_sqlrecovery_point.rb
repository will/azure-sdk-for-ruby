# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # SQL specific recoverypoint, specifically encapsulates full/diff
    # recoverypoint along with extended info
    #
    class AzureWorkloadSQLRecoveryPoint < AzureWorkloadRecoveryPoint

      include MsRestAzure


      def initialize
        @objectType = "AzureWorkloadSQLRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [AzureWorkloadSQLRecoveryPointExtendedInfo] Extended Info that
      # provides data directory details. Will be populated in two cases:
      # When a specific recovery point is accessed using GetRecoveryPoint
      # Or when ListRecoveryPoints is called for Log RP only with ExtendedInfo
      # query filter
      attr_accessor :extended_info


      #
      # Mapper for AzureWorkloadSQLRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadSQLRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadSQLRecoveryPoint',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time_in_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'recoveryPointTimeInUTC',
                type: {
                  name: 'DateTime'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
                  class_name: 'AzureWorkloadSQLRecoveryPointExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
