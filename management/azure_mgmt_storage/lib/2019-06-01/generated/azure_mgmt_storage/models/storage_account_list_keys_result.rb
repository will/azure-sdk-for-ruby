# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The response from the ListKeys operation.
    #
    class StorageAccountListKeysResult

      include MsRestAzure

      # @return [Array<StorageAccountKey>] Gets the list of storage account
      # keys and their properties for the specified storage account.
      attr_accessor :keys


      #
      # Mapper for StorageAccountListKeysResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountListKeysResult',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountListKeysResult',
            model_properties: {
              keys: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'keys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StorageAccountKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageAccountKey'
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
