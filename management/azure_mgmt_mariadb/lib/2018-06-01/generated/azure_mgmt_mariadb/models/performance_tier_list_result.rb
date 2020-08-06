# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MariaDB::Mgmt::V2018_06_01
  module Models
    #
    # A list of performance tiers.
    #
    class PerformanceTierListResult

      include MsRestAzure

      # @return [Array<PerformanceTierProperties>] The list of performance
      # tiers
      attr_accessor :value


      #
      # Mapper for PerformanceTierListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PerformanceTierListResult',
          type: {
            name: 'Composite',
            class_name: 'PerformanceTierListResult',
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
                      serialized_name: 'PerformanceTierPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PerformanceTierProperties'
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
