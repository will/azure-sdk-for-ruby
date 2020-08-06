# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_03_01
  module Models
    #
    # SKU for the Cache.
    #
    class CacheSku

      include MsRestAzure

      # @return [String] SKU name for this Cache.
      attr_accessor :name


      #
      # Mapper for CacheSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Cache_sku',
          type: {
            name: 'Composite',
            class_name: 'CacheSku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
