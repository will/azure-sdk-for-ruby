# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_03_01
  module Models
    #
    # The parameters of a storage account for a container registry.
    #
    class StorageAccountParameters

      include MsRestAzure

      # @return [String] The name of the storage account.
      attr_accessor :name

      # @return [String] The access key to the storage account.
      attr_accessor :access_key


      #
      # Mapper for StorageAccountParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              access_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accessKey',
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
