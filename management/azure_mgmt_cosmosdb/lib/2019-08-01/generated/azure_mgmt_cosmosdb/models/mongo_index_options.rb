# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # Cosmos DB MongoDB collection index options
    #
    class MongoIndexOptions

      include MsRestAzure

      # @return [Integer] Expire after seconds
      attr_accessor :expire_after_seconds

      # @return [Boolean] Is unique or not
      attr_accessor :unique


      #
      # Mapper for MongoIndexOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoIndexOptions',
          type: {
            name: 'Composite',
            class_name: 'MongoIndexOptions',
            model_properties: {
              expire_after_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expireAfterSeconds',
                type: {
                  name: 'Number'
                }
              },
              unique: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unique',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
