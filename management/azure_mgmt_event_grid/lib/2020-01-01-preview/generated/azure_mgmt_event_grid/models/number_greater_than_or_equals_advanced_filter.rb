# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_01_01_preview
  module Models
    #
    # NumberGreaterThanOrEquals Advanced Filter.
    #
    class NumberGreaterThanOrEqualsAdvancedFilter < AdvancedFilter

      include MsRestAzure


      def initialize
        @operatorType = "NumberGreaterThanOrEquals"
      end

      attr_accessor :operatorType

      # @return [Float] The filter value.
      attr_accessor :value


      #
      # Mapper for NumberGreaterThanOrEqualsAdvancedFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NumberGreaterThanOrEquals',
          type: {
            name: 'Composite',
            class_name: 'NumberGreaterThanOrEqualsAdvancedFilter',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              operatorType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'operatorType',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
