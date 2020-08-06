# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # List of available SKUs for a Kusto Cluster.
    #
    class ListResourceSkusResult

      include MsRestAzure

      # @return [Array<AzureResourceSku>] The collection of available SKUs for
      # an existing resource.
      attr_accessor :value


      #
      # Mapper for ListResourceSkusResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListResourceSkusResult',
          type: {
            name: 'Composite',
            class_name: 'ListResourceSkusResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureResourceSkuElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureResourceSku'
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
