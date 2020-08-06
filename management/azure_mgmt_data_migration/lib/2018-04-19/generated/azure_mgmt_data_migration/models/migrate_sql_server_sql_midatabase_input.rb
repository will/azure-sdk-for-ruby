# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Database specific information for SQL to Azure SQL DB Managed Instance
    # migration task inputs
    #
    class MigrateSqlServerSqlMIDatabaseInput

      include MsRestAzure

      # @return [String] Name of the database
      attr_accessor :name

      # @return [String] Name of the database at destination
      attr_accessor :restore_database_name

      # @return [FileShare] Backup file share information for backing up this
      # database.
      attr_accessor :backup_file_share

      # @return [Array<String>] The list of backup files to be used in case of
      # existing backups.
      attr_accessor :backup_file_paths


      #
      # Mapper for MigrateSqlServerSqlMIDatabaseInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateSqlServerSqlMIDatabaseInput',
          type: {
            name: 'Composite',
            class_name: 'MigrateSqlServerSqlMIDatabaseInput',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              restore_database_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'restoreDatabaseName',
                type: {
                  name: 'String'
                }
              },
              backup_file_share: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupFileShare',
                type: {
                  name: 'Composite',
                  class_name: 'FileShare'
                }
              },
              backup_file_paths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupFilePaths',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
