# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  module Models
    #
    # Azure Storage account information.
    #
    class StorageAccountInformation < SubResource

      include MsRestAzure

      # @return [String] The optional suffix for the storage account.
      attr_accessor :suffix


      #
      # Mapper for StorageAccountInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountInformation',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountInformation',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              suffix: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.suffix',
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
