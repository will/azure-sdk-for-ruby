# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Recovery point specific to PointInTime in SAPHana
    #
    class AzureWorkloadSAPHanaPointInTimeRecoveryPoint < AzureWorkloadPointInTimeRecoveryPoint

      include MsRestAzure


      def initialize
        @objectType = "AzureWorkloadSAPHanaPointInTimeRecoveryPoint"
      end

      attr_accessor :objectType


      #
      # Mapper for AzureWorkloadSAPHanaPointInTimeRecoveryPoint class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadSAPHanaPointInTimeRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadSAPHanaPointInTimeRecoveryPoint',
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
