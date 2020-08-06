# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # NumberNotIn Advanced Filter.
    #
    class NumberNotInAdvancedFilter < AdvancedFilter

      include MsRestAzure


      def initialize
        @operatorType = "NumberNotIn"
      end

      attr_accessor :operatorType

      # @return [Array<Float>] The set of filter values.
      attr_accessor :values


      #
      # Mapper for NumberNotInAdvancedFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NumberNotIn',
          type: {
            name: 'Composite',
            class_name: 'NumberNotInAdvancedFilter',
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
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
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
