# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # Cosmos DB Gremlin database resource object
    #
    class GremlinDatabaseResource

      include MsRestAzure

      # @return [String] Name of the Cosmos DB Gremlin database
      attr_accessor :id


      #
      # Mapper for GremlinDatabaseResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GremlinDatabaseResource',
          type: {
            name: 'Composite',
            class_name: 'GremlinDatabaseResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
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
