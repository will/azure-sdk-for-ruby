# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The list of module configurations.
    #
    class ModuleConfigurations

      include MsRestAzure

      # @return [Array<ModuleConfiguration>] The value returned by the
      # operation.
      attr_accessor :value


      #
      # Mapper for ModuleConfigurations class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ModuleConfigurations',
          type: {
            name: 'Composite',
            class_name: 'ModuleConfigurations',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ModuleConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ModuleConfiguration'
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
