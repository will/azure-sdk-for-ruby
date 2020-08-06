# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Database file specific information
    #
    class DatabaseFileInfo

      include MsRestAzure

      # @return [String] Name of the database
      attr_accessor :database_name

      # @return [String] Unique identifier for database file
      attr_accessor :id

      # @return [String] Logical name of the file
      attr_accessor :logical_name

      # @return [String] Operating-system full path of the file
      attr_accessor :physical_full_name

      # @return [String] Suggested full path of the file for restoring
      attr_accessor :restore_full_name

      # @return [DatabaseFileType] Database file type. Possible values include:
      # 'Rows', 'Log', 'Filestream', 'NotSupported', 'Fulltext'
      attr_accessor :file_type

      # @return [Float] Size of the file in megabytes
      attr_accessor :size_mb


      #
      # Mapper for DatabaseFileInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseFileInfo',
          type: {
            name: 'Composite',
            class_name: 'DatabaseFileInfo',
            model_properties: {
              database_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              logical_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'logicalName',
                type: {
                  name: 'String'
                }
              },
              physical_full_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'physicalFullName',
                type: {
                  name: 'String'
                }
              },
              restore_full_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'restoreFullName',
                type: {
                  name: 'String'
                }
              },
              file_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileType',
                type: {
                  name: 'String'
                }
              },
              size_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sizeMB',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
