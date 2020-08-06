# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MariaDB::Mgmt::V2018_06_01
  module Models
    #
    # A list of server configurations.
    #
    class ConfigurationListResult

      include MsRestAzure

      # @return [Array<Configuration>] The list of server configurations.
      attr_accessor :value


      #
      # Mapper for ConfigurationListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConfigurationListResult',
          type: {
            name: 'Composite',
            class_name: 'ConfigurationListResult',
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
                      serialized_name: 'ConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Configuration'
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
