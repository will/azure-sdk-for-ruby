# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Information about backup files when existing backup mode is used.
    #
    class DatabaseBackupInfo

      include MsRestAzure

      # @return [String] Database name.
      attr_accessor :database_name

      # @return [BackupType] Backup Type. Possible values include: 'Database',
      # 'TransactionLog', 'File', 'DifferentialDatabase', 'DifferentialFile',
      # 'Partial', 'DifferentialPartial'
      attr_accessor :backup_type

      # @return [Array<String>] The list of backup files for the current
      # database.
      attr_accessor :backup_files

      # @return [Integer] Position of current database backup in the file.
      attr_accessor :position

      # @return [Boolean] Database was damaged when backed up, but the backup
      # operation was requested to continue despite errors.
      attr_accessor :is_damaged

      # @return [Boolean] Whether the backup set is compressed
      attr_accessor :is_compressed

      # @return [Integer] Number of files in the backup set.
      attr_accessor :family_count

      # @return [DateTime] Date and time when the backup operation finished.
      attr_accessor :backup_finish_date


      #
      # Mapper for DatabaseBackupInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseBackupInfo',
          type: {
            name: 'Composite',
            class_name: 'DatabaseBackupInfo',
            model_properties: {
              database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              backup_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'backupType',
                type: {
                  name: 'String'
                }
              },
              backup_files: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'backupFiles',
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
              position: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'position',
                type: {
                  name: 'Number'
                }
              },
              is_damaged: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isDamaged',
                type: {
                  name: 'Boolean'
                }
              },
              is_compressed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isCompressed',
                type: {
                  name: 'Boolean'
                }
              },
              family_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'familyCount',
                type: {
                  name: 'Number'
                }
              },
              backup_finish_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'backupFinishDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
