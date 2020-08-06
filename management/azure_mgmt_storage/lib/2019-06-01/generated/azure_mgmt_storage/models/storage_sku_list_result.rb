# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The response from the List Storage SKUs operation.
    #
    class StorageSkuListResult

      include MsRestAzure

      # @return [Array<SkuInformation>] Get the list result of storage SKUs and
      # their properties.
      attr_accessor :value


      #
      # Mapper for StorageSkuListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageSkuListResult',
          type: {
            name: 'Composite',
            class_name: 'StorageSkuListResult',
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
                      serialized_name: 'SkuInformationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SkuInformation'
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
