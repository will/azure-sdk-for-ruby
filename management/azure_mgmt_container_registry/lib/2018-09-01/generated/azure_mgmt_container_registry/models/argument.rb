# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_09_01
  module Models
    #
    # The properties of a run argument.
    #
    class Argument

      include MsRestAzure

      # @return [String] The name of the argument.
      attr_accessor :name

      # @return [String] The value of the argument.
      attr_accessor :value

      # @return [Boolean] Flag to indicate whether the argument represents a
      # secret and want to be removed from build logs. Default value: false .
      attr_accessor :is_secret


      #
      # Mapper for Argument class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Argument',
          type: {
            name: 'Composite',
            class_name: 'Argument',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              is_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isSecret',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
