# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Dataset location.
    #
    class DatasetLocation

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["HdfsLocation"] = "HdfsLocation"
      @@discriminatorMap["HttpServerLocation"] = "HttpServerLocation"
      @@discriminatorMap["SftpLocation"] = "SftpLocation"
      @@discriminatorMap["FtpServerLocation"] = "FtpServerLocation"
      @@discriminatorMap["GoogleCloudStorageLocation"] = "GoogleCloudStorageLocation"
      @@discriminatorMap["AzureFileStorageLocation"] = "AzureFileStorageLocation"
      @@discriminatorMap["FileServerLocation"] = "FileServerLocation"
      @@discriminatorMap["AmazonS3Location"] = "AmazonS3Location"
      @@discriminatorMap["AzureDataLakeStoreLocation"] = "AzureDataLakeStoreLocation"
      @@discriminatorMap["AzureBlobFSLocation"] = "AzureBlobFSLocation"
      @@discriminatorMap["AzureBlobStorageLocation"] = "AzureBlobStorageLocation"

      def initialize
        @type = "DatasetLocation"
      end

      attr_accessor :type

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return Specify the folder path of dataset. Type: string (or Expression
      # with resultType string)
      attr_accessor :folder_path

      # @return Specify the file name of dataset. Type: string (or Expression
      # with resultType string).
      attr_accessor :file_name


      #
      # Mapper for DatasetLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatasetLocation',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'DatasetLocation',
            class_name: 'DatasetLocation',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'folderPath',
                type: {
                  name: 'Object'
                }
              },
              file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileName',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
