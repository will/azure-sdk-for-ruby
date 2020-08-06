# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01
  module Models
    #
    # The quota usage for a container registry.
    #
    class RegistryUsage

      include MsRestAzure

      # @return [String] The name of the usage.
      attr_accessor :name

      # @return [Integer] The limit of the usage.
      attr_accessor :limit

      # @return [Integer] The current value of the usage.
      attr_accessor :current_value

      # @return [RegistryUsageUnit] The unit of measurement. Possible values
      # include: 'Count', 'Bytes'
      attr_accessor :unit


      #
      # Mapper for RegistryUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegistryUsage',
          type: {
            name: 'Composite',
            class_name: 'RegistryUsage',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
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
