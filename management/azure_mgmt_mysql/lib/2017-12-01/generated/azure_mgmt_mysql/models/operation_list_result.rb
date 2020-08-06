# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2017_12_01
  module Models
    #
    # A list of resource provider operations.
    #
    class OperationListResult

      include MsRestAzure

      # @return [Array<Operation>] The list of resource provider operations.
      attr_accessor :value


      #
      # Mapper for OperationListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationListResult',
          type: {
            name: 'Composite',
            class_name: 'OperationListResult',
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
