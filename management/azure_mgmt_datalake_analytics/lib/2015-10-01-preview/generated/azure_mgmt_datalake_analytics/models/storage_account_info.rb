# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2015_10_01_preview
  module Models
    #
    # Azure Storage account information.
    #
    class StorageAccountInfo

      include MsRestAzure

      # @return [String] the account name associated with the Azure storage
      # account.
      attr_accessor :name

      # @return [StorageAccountProperties] the properties associated with this
      # storage account.
      attr_accessor :properties


      #
      # Mapper for StorageAccountInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountInfo',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountInfo',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
