# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Recovery point specific to PointInTime
    #
    class AzureWorkloadSQLPointInTimeRecoveryPoint < AzureWorkloadSQLRecoveryPoint

      include MsRestAzure


      def initialize
        @objectType = "AzureWorkloadSQLPointInTimeRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [Array<PointInTimeRange>] List of log ranges
      attr_accessor :time_ranges


      #
      # Mapper for AzureWorkloadSQLPointInTimeRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadSQLPointInTimeRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadSQLPointInTimeRecoveryPoint',
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
              },
              time_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeRanges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PointInTimeRangeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PointInTimeRange'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
