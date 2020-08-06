# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # The List operation response, that contains the MongoDB collections and
    # their properties.
    #
    class MongoDBCollectionListResult

      include MsRestAzure

      # @return [Array<MongoDBCollectionGetResults>] List of MongoDB
      # collections and their properties.
      attr_accessor :value


      #
      # Mapper for MongoDBCollectionListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoDBCollectionListResult',
          type: {
            name: 'Composite',
            class_name: 'MongoDBCollectionListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MongoDBCollectionGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MongoDBCollectionGetResults'
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
