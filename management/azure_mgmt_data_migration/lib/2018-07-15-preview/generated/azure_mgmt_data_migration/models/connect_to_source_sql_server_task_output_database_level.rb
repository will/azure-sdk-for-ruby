# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Database level output for the task that validates connection to SQL
    # Server and also validates source server requirements
    #
    class ConnectToSourceSqlServerTaskOutputDatabaseLevel < ConnectToSourceSqlServerTaskOutput

      include MsRestAzure


      def initialize
        @resultType = "DatabaseLevelOutput"
      end

      attr_accessor :resultType

      # @return [String] Database name
      attr_accessor :name

      # @return [Float] Size of the file in megabytes
      attr_accessor :size_mb

      # @return [Array<DatabaseFileInfo>] The list of database files
      attr_accessor :database_files

      # @return [DatabaseCompatLevel] SQL Server compatibility level of
      # database. Possible values include: 'CompatLevel80', 'CompatLevel90',
      # 'CompatLevel100', 'CompatLevel110', 'CompatLevel120', 'CompatLevel130',
      # 'CompatLevel140'
      attr_accessor :compatibility_level

      # @return [DatabaseState] State of the database. Possible values include:
      # 'Online', 'Restoring', 'Recovering', 'RecoveryPending', 'Suspect',
      # 'Emergency', 'Offline', 'Copying', 'OfflineSecondary'
      attr_accessor :database_state


      #
      # Mapper for ConnectToSourceSqlServerTaskOutputDatabaseLevel class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseLevelOutput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToSourceSqlServerTaskOutputDatabaseLevel',
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
              resultType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resultType',
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
              size_mb: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sizeMB',
                type: {
                  name: 'Double'
                }
              },
              database_files: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databaseFiles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DatabaseFileInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabaseFileInfo'
                      }
                  }
                }
              },
              compatibility_level: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'compatibilityLevel',
                type: {
                  name: 'String'
                }
              },
              database_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databaseState',
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
