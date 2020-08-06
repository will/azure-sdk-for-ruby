# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2019_12_01
  module Models
    #
    # The environment variable to set within the container instance.
    #
    class EnvironmentVariable

      include MsRestAzure

      # @return [String] The name of the environment variable.
      attr_accessor :name

      # @return [String] The value of the environment variable.
      attr_accessor :value

      # @return [String] The value of the secure environment variable.
      attr_accessor :secure_value


      #
      # Mapper for EnvironmentVariable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnvironmentVariable',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentVariable',
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
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              secure_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secureValue',
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
