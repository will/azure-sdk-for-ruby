# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # Automatic tuning properties for individual advisors.
    #
    class AutomaticTuningOptions

      include MsRestAzure

      # @return [AutomaticTuningOptionModeDesired] Automatic tuning option
      # desired state. Possible values include: 'Off', 'On', 'Default'
      attr_accessor :desired_state

      # @return [AutomaticTuningOptionModeActual] Automatic tuning option
      # actual state. Possible values include: 'Off', 'On'
      attr_accessor :actual_state

      # @return [Integer] Reason code if desired and actual state are
      # different.
      attr_accessor :reason_code

      # @return [AutomaticTuningDisabledReason] Reason description if desired
      # and actual state are different. Possible values include: 'Default',
      # 'Disabled', 'AutoConfigured', 'InheritedFromServer', 'QueryStoreOff',
      # 'QueryStoreReadOnly', 'NotSupported'
      attr_accessor :reason_desc


      #
      # Mapper for AutomaticTuningOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutomaticTuningOptions',
          type: {
            name: 'Composite',
            class_name: 'AutomaticTuningOptions',
            model_properties: {
              desired_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'desiredState',
                type: {
                  name: 'Enum',
                  module: 'AutomaticTuningOptionModeDesired'
                }
              },
              actual_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'actualState',
                type: {
                  name: 'Enum',
                  module: 'AutomaticTuningOptionModeActual'
                }
              },
              reason_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reasonCode',
                type: {
                  name: 'Number'
                }
              },
              reason_desc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reasonDesc',
                type: {
                  name: 'Enum',
                  module: 'AutomaticTuningDisabledReason'
                }
              }
            }
          }
        }
      end
    end
  end
end
