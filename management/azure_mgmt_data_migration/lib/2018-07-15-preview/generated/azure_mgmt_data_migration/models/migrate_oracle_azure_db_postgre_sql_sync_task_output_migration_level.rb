# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Model object.
    #
    #
    class MigrateOracleAzureDbPostgreSqlSyncTaskOutputMigrationLevel < MigrateOracleAzureDbPostgreSqlSyncTaskOutput

      include MsRestAzure


      def initialize
        @resultType = "MigrationLevelOutput"
      end

      attr_accessor :resultType

      # @return [DateTime] Migration start time
      attr_accessor :started_on

      # @return [DateTime] Migration end time
      attr_accessor :ended_on

      # @return [String] Source server version
      attr_accessor :source_server_version

      # @return [String] Source server name
      attr_accessor :source_server

      # @return [String] Target server version
      attr_accessor :target_server_version

      # @return [String] Target server name
      attr_accessor :target_server


      #
      # Mapper for MigrateOracleAzureDbPostgreSqlSyncTaskOutputMigrationLevel
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrationLevelOutput',
          type: {
            name: 'Composite',
            class_name: 'MigrateOracleAzureDbPostgreSqlSyncTaskOutputMigrationLevel',
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
              started_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startedOn',
                type: {
                  name: 'DateTime'
                }
              },
              ended_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endedOn',
                type: {
                  name: 'DateTime'
                }
              },
              source_server_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceServerVersion',
                type: {
                  name: 'String'
                }
              },
              source_server: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceServer',
                type: {
                  name: 'String'
                }
              },
              target_server_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetServerVersion',
                type: {
                  name: 'String'
                }
              },
              target_server: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetServer',
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
