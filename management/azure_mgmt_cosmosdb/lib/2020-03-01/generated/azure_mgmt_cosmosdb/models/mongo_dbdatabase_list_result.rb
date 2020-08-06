# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # The List operation response, that contains the MongoDB databases and
    # their properties.
    #
    class MongoDBDatabaseListResult

      include MsRestAzure

      # @return [Array<MongoDBDatabaseGetResults>] List of MongoDB databases
      # and their properties.
      attr_accessor :value


      #
      # Mapper for MongoDBDatabaseListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoDBDatabaseListResult',
          type: {
            name: 'Composite',
            class_name: 'MongoDBDatabaseListResult',
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
                      serialized_name: 'MongoDBDatabaseGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MongoDBDatabaseGetResults'
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
