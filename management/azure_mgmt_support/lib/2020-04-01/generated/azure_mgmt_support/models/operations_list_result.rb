# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Support::Mgmt::V2020_04_01
  module Models
    #
    # The list of operations supported by Microsoft Support resource provider.
    #
    class OperationsListResult

      include MsRestAzure

      # @return [Array<Operation>] The list of operations supported by
      # Microsoft Support resource provider.
      attr_accessor :value


      #
      # Mapper for OperationsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationsListResult',
          type: {
            name: 'Composite',
            class_name: 'OperationsListResult',
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
                      serialized_name: 'OperationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Operation'
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
