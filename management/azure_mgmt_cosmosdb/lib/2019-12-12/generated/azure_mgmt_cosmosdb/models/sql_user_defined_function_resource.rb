# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # Cosmos DB SQL userDefinedFunction resource object
    #
    class SqlUserDefinedFunctionResource

      include MsRestAzure

      # @return [String] Name of the Cosmos DB SQL userDefinedFunction
      attr_accessor :id

      # @return [String] Body of the User Defined Function
      attr_accessor :body


      #
      # Mapper for SqlUserDefinedFunctionResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlUserDefinedFunctionResource',
          type: {
            name: 'Composite',
            class_name: 'SqlUserDefinedFunctionResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'body',
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
