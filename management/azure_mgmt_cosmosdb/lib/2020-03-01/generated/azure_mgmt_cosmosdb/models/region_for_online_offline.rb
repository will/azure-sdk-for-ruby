# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # Cosmos DB region to online or offline.
    #
    class RegionForOnlineOffline

      include MsRestAzure

      # @return [String] Cosmos DB region, with spaces between words and each
      # word capitalized.
      attr_accessor :region


      #
      # Mapper for RegionForOnlineOffline class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegionForOnlineOffline',
          type: {
            name: 'Composite',
            class_name: 'RegionForOnlineOffline',
            model_properties: {
              region: {
                client_side_validation: true,
                required: true,
                serialized_name: 'region',
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
