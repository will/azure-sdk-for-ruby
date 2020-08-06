# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Azure blob read settings.
    #
    class AzureBlobStorageReadSettings < StoreReadSettings

      include MsRestAzure


      def initialize
        @type = "AzureBlobStorageReadSettings"
      end

      attr_accessor :type

      # @return If true, files under the folder path will be read recursively.
      # Default is true. Type: boolean (or Expression with resultType boolean).
      attr_accessor :recursive

      # @return Azure blob wildcardFolderPath. Type: string (or Expression with
      # resultType string).
      attr_accessor :wildcard_folder_path

      # @return Azure blob wildcardFileName. Type: string (or Expression with
      # resultType string).
      attr_accessor :wildcard_file_name

      # @return The prefix filter for the Azure Blob name. Type: string (or
      # Expression with resultType string).
      attr_accessor :prefix

      # @return Point to a text file that lists each file (relative path to the
      # path configured in the dataset) that you want to copy. Type: string (or
      # Expression with resultType string).
      attr_accessor :file_list_path

      # @return [Boolean] Indicates whether to enable partition discovery.
      attr_accessor :enable_partition_discovery

      # @return Specify the root path where partition discovery starts from.
      # Type: string (or Expression with resultType string).
      attr_accessor :partition_root_path

      # @return Indicates whether the source files need to be deleted after
      # copy completion. Default is false. Type: boolean (or Expression with
      # resultType boolean).
      attr_accessor :delete_files_after_completion

      # @return The start of file's modified datetime. Type: string (or
      # Expression with resultType string).
      attr_accessor :modified_datetime_start

      # @return The end of file's modified datetime. Type: string (or
      # Expression with resultType string).
      attr_accessor :modified_datetime_end


      #
      # Mapper for AzureBlobStorageReadSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureBlobStorageReadSettings',
          type: {
            name: 'Composite',
            class_name: 'AzureBlobStorageReadSettings',
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
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              recursive: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recursive',
                type: {
                  name: 'Object'
                }
              },
              wildcard_folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wildcardFolderPath',
                type: {
                  name: 'Object'
                }
              },
              wildcard_file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wildcardFileName',
                type: {
                  name: 'Object'
                }
              },
              prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'prefix',
                type: {
                  name: 'Object'
                }
              },
              file_list_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileListPath',
                type: {
                  name: 'Object'
                }
              },
              enable_partition_discovery: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enablePartitionDiscovery',
                type: {
                  name: 'Boolean'
                }
              },
              partition_root_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionRootPath',
                type: {
                  name: 'Object'
                }
              },
              delete_files_after_completion: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deleteFilesAfterCompletion',
                type: {
                  name: 'Object'
                }
              },
              modified_datetime_start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifiedDatetimeStart',
                type: {
                  name: 'Object'
                }
              },
              modified_datetime_end: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifiedDatetimeEnd',
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
