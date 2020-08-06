# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # The unique key policy configuration for specifying uniqueness constraints
    # on documents in the collection in the Azure Cosmos DB service.
    #
    class UniqueKeyPolicy

      include MsRestAzure

      # @return [Array<UniqueKey>] List of unique keys on that enforces
      # uniqueness constraint on documents in the collection in the Azure
      # Cosmos DB service.
      attr_accessor :unique_keys


      #
      # Mapper for UniqueKeyPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UniqueKeyPolicy',
          type: {
            name: 'Composite',
            class_name: 'UniqueKeyPolicy',
            model_properties: {
              unique_keys: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uniqueKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UniqueKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UniqueKey'
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
