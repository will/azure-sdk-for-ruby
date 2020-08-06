# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Http logs configuration.
    #
    class HttpLogsConfig

      include MsRestAzure

      # @return [FileSystemHttpLogsConfig] Http logs to file system
      # configuration.
      attr_accessor :file_system

      # @return [AzureBlobStorageHttpLogsConfig] Http logs to azure blob
      # storage configuration.
      attr_accessor :azure_blob_storage


      #
      # Mapper for HttpLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'HttpLogsConfig',
            model_properties: {
              file_system: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileSystem',
                type: {
                  name: 'Composite',
                  class_name: 'FileSystemHttpLogsConfig'
                }
              },
              azure_blob_storage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureBlobStorage',
                type: {
                  name: 'Composite',
                  class_name: 'AzureBlobStorageHttpLogsConfig'
                }
              }
            }
          }
        }
      end
    end
  end
end
