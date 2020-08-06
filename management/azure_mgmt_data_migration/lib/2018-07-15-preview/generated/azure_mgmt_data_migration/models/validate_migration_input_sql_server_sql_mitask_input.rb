# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for task that validates migration input for SQL to Azure SQL
    # Managed Instance
    #
    class ValidateMigrationInputSqlServerSqlMITaskInput

      include MsRestAzure

      # @return [SqlConnectionInfo] Information for connecting to source
      attr_accessor :source_connection_info

      # @return [SqlConnectionInfo] Information for connecting to target
      attr_accessor :target_connection_info

      # @return [Array<MigrateSqlServerSqlMIDatabaseInput>] Databases to
      # migrate
      attr_accessor :selected_databases

      # @return [Array<String>] Logins to migrate
      attr_accessor :selected_logins

      # @return [FileShare] Backup file share information for all selected
      # databases.
      attr_accessor :backup_file_share

      # @return [BlobShare] SAS URI of Azure Storage Account Container to be
      # used for storing backup files.
      attr_accessor :backup_blob_share

      # @return [BackupMode] Backup Mode to specify whether to use existing
      # backup or create new backup. Possible values include: 'CreateBackup',
      # 'ExistingBackup'
      attr_accessor :backup_mode


      #
      # Mapper for ValidateMigrationInputSqlServerSqlMITaskInput class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateMigrationInputSqlServerSqlMITaskInput',
          type: {
            name: 'Composite',
            class_name: 'ValidateMigrationInputSqlServerSqlMITaskInput',
            model_properties: {
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
                }
              },
              target_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
                }
              },
              selected_databases: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selectedDatabases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MigrateSqlServerSqlMIDatabaseInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MigrateSqlServerSqlMIDatabaseInput'
                      }
                  }
                }
              },
              selected_logins: {
                client_side_validation: true,
                required: false,
                serialized_name: 'selectedLogins',
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
              backup_blob_share: {
                client_side_validation: true,
                required: true,
                serialized_name: 'backupBlobShare',
                type: {
                  name: 'Composite',
                  class_name: 'BlobShare'
                }
              },
              backup_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupMode',
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
