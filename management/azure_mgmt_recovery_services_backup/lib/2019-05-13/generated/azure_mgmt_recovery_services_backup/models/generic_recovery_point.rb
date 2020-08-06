# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Generic backup copy.
    #
    class GenericRecoveryPoint < RecoveryPoint

      include MsRestAzure


      def initialize
        @objectType = "GenericRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [String] Friendly name of the backup copy.
      attr_accessor :friendly_name

      # @return [String] Type of the backup copy.
      attr_accessor :recovery_point_type

      # @return [DateTime] Time at which this backup copy was created.
      attr_accessor :recovery_point_time

      # @return [String] Additional information associated with this backup
      # copy.
      attr_accessor :recovery_point_additional_info


      #
      # Mapper for GenericRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GenericRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'GenericRecoveryPoint',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
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
              recovery_point_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointTime',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_additional_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointAdditionalInfo',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
