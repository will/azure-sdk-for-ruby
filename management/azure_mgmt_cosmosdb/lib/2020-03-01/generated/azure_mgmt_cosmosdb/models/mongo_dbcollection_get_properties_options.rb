# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # Model object.
    #
    #
    class MongoDBCollectionGetPropertiesOptions < OptionsResource

      include MsRestAzure


      #
      # Mapper for MongoDBCollectionGetPropertiesOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoDBCollectionGetProperties_options',
          type: {
            name: 'Composite',
            class_name: 'MongoDBCollectionGetPropertiesOptions',
            model_properties: {
              throughput: {
                client_side_validation: true,
                required: false,
                serialized_name: 'throughput',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
