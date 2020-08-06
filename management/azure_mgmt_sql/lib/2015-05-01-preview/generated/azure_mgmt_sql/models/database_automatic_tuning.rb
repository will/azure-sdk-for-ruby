# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # Database-level Automatic Tuning.
    #
    class DatabaseAutomaticTuning < ProxyResource

      include MsRestAzure

      # @return [AutomaticTuningMode] Automatic tuning desired state. Possible
      # values include: 'Inherit', 'Custom', 'Auto', 'Unspecified'
      attr_accessor :desired_state

      # @return [AutomaticTuningMode] Automatic tuning actual state. Possible
      # values include: 'Inherit', 'Custom', 'Auto', 'Unspecified'
      attr_accessor :actual_state

      # @return [Hash{String => AutomaticTuningOptions}] Automatic tuning
      # options definition.
      attr_accessor :options


      #
      # Mapper for DatabaseAutomaticTuning class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseAutomaticTuning',
          type: {
            name: 'Composite',
            class_name: 'DatabaseAutomaticTuning',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
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
              desired_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.desiredState',
                type: {
                  name: 'Enum',
                  module: 'AutomaticTuningMode'
                }
              },
              actual_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.actualState',
                type: {
                  name: 'Enum',
                  module: 'AutomaticTuningMode'
                }
              },
              options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.options',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AutomaticTuningOptionsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AutomaticTuningOptions'
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
