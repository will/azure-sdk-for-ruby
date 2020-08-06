# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Describes the available service SKU.
    #
    class AvailableServiceSku

      include MsRestAzure

      # @return [String] The resource type, including the provider namespace
      attr_accessor :resource_type

      # @return [AvailableServiceSkuSku] SKU name, tier, etc.
      attr_accessor :sku

      # @return [AvailableServiceSkuCapacity] A description of the scaling
      # capacities of the SKU
      attr_accessor :capacity


      #
      # Mapper for AvailableServiceSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableServiceSku',
          type: {
            name: 'Composite',
            class_name: 'AvailableServiceSku',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'AvailableServiceSkuSku'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Composite',
                  class_name: 'AvailableServiceSkuCapacity'
                }
              }
            }
          }
        }
      end
    end
  end
end
