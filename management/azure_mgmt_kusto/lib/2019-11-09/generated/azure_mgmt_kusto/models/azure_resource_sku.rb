# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_11_09
  module Models
    #
    # Azure resource SKU definition.
    #
    class AzureResourceSku

      include MsRestAzure

      # @return [String] Resource Namespace and Type.
      attr_accessor :resource_type

      # @return [AzureSku] The SKU details.
      attr_accessor :sku

      # @return [AzureCapacity] The number of instances of the cluster.
      attr_accessor :capacity


      #
      # Mapper for AzureResourceSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureResourceSku',
          type: {
            name: 'Composite',
            class_name: 'AzureResourceSku',
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
                  class_name: 'AzureSku'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Composite',
                  class_name: 'AzureCapacity'
                }
              }
            }
          }
        }
      end
    end
  end
end
