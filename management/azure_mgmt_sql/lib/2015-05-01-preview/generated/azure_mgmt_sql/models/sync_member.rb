# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # An Azure SQL Database sync member.
    #
    class SyncMember < ProxyResource

      include MsRestAzure

      # @return [SyncMemberDbType] Database type of the sync member. Possible
      # values include: 'AzureSqlDatabase', 'SqlServerDatabase'
      attr_accessor :database_type

      # @return [String] ARM resource id of the sync agent in the sync member.
      attr_accessor :sync_agent_id

      # @return SQL Server database id of the sync member.
      attr_accessor :sql_server_database_id

      # @return [String] Server name of the member database in the sync member
      attr_accessor :server_name

      # @return [String] Database name of the member database in the sync
      # member.
      attr_accessor :database_name

      # @return [String] User name of the member database in the sync member.
      attr_accessor :user_name

      # @return [String] Password of the member database in the sync member.
      attr_accessor :password

      # @return [SyncDirection] Sync direction of the sync member. Possible
      # values include: 'Bidirectional', 'OneWayMemberToHub',
      # 'OneWayHubToMember'
      attr_accessor :sync_direction

      # @return [SyncMemberState] Sync state of the sync member. Possible
      # values include: 'SyncInProgress', 'SyncSucceeded', 'SyncFailed',
      # 'DisabledTombstoneCleanup', 'DisabledBackupRestore',
      # 'SyncSucceededWithWarnings', 'SyncCancelling', 'SyncCancelled',
      # 'UnProvisioned', 'Provisioning', 'Provisioned', 'ProvisionFailed',
      # 'DeProvisioning', 'DeProvisioned', 'DeProvisionFailed',
      # 'Reprovisioning', 'ReprovisionFailed', 'UnReprovisioned'
      attr_accessor :sync_state


      #
      # Mapper for SyncMember class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncMember',
          type: {
            name: 'Composite',
            class_name: 'SyncMember',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              database_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.databaseType',
                type: {
                  name: 'String'
                }
              },
              sync_agent_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.syncAgentId',
                type: {
                  name: 'String'
                }
              },
              sql_server_database_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sqlServerDatabaseId',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverName',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.databaseName',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              sync_direction: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.syncDirection',
                type: {
                  name: 'String'
                }
              },
              sync_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.syncState',
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
