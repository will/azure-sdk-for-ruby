# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Information of backup set
    #
    class BackupSetInfo

      include MsRestAzure

      # @return [String] Id for the set of backup files
      attr_accessor :backup_set_id

      # @return [String] First log sequence number of the backup file
      attr_accessor :first_lsn

      # @return [String] Last log sequence number of the backup file
      attr_accessor :last_lsn

      # @return [DateTime] Last modified time of the backup file in share
      # location
      attr_accessor :last_modified_time

      # @return [BackupType] Enum of the different backup types. Possible
      # values include: 'Database', 'TransactionLog', 'File',
      # 'DifferentialDatabase', 'DifferentialFile', 'Partial',
      # 'DifferentialPartial'
      attr_accessor :backup_type

      # @return [Array<BackupFileInfo>] List of files in the backup set
      attr_accessor :list_of_backup_files

      # @return [String] Name of the database to which the backup set belongs
      attr_accessor :database_name

      # @return [DateTime] Date and time that the backup operation began
      attr_accessor :backup_start_date

      # @return [DateTime] Date and time that the backup operation finished
      attr_accessor :backup_finished_date

      # @return [Boolean] Whether the backup set is restored or not
      attr_accessor :is_backup_restored


      #
      # Mapper for BackupSetInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupSetInfo',
          type: {
            name: 'Composite',
            class_name: 'BackupSetInfo',
            model_properties: {
              backup_set_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupSetId',
                type: {
                  name: 'String'
                }
              },
              first_lsn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'firstLsn',
                type: {
                  name: 'String'
                }
              },
              last_lsn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastLsn',
                type: {
                  name: 'String'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              backup_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupType',
                type: {
                  name: 'String'
                }
              },
              list_of_backup_files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'listOfBackupFiles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BackupFileInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BackupFileInfo'
                      }
                  }
                }
              },
              database_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              backup_start_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupStartDate',
                type: {
                  name: 'DateTime'
                }
              },
              backup_finished_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupFinishedDate',
                type: {
                  name: 'DateTime'
                }
              },
              is_backup_restored: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isBackupRestored',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
