# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Information about a single database
    #
    class Database

      include MsRestAzure

      # @return [String] Unique identifier for the database
      attr_accessor :id

      # @return [String] Name of the database
      attr_accessor :name

      # @return [DatabaseCompatLevel] SQL Server compatibility level of
      # database. Possible values include: 'CompatLevel80', 'CompatLevel90',
      # 'CompatLevel100', 'CompatLevel110', 'CompatLevel120', 'CompatLevel130',
      # 'CompatLevel140'
      attr_accessor :compatibility_level

      # @return [String] Collation name of the database
      attr_accessor :collation

      # @return [String] Name of the server
      attr_accessor :server_name

      # @return [String] Fully qualified name
      attr_accessor :fqdn

      # @return [String] Install id of the database
      attr_accessor :install_id

      # @return [String] Version of the server
      attr_accessor :server_version

      # @return [String] Edition of the server
      attr_accessor :server_edition

      # @return [String] Product level of the server (RTM, SP, CTP).
      attr_accessor :server_level

      # @return [String] Default path of the data files
      attr_accessor :server_default_data_path

      # @return [String] Default path of the log files
      attr_accessor :server_default_log_path

      # @return [String] Default path of the backup folder
      attr_accessor :server_default_backup_path

      # @return [Integer] Number of cores on the server
      attr_accessor :server_core_count

      # @return [Integer] Number of cores on the server that have VISIBLE
      # ONLINE status
      attr_accessor :server_visible_online_core_count

      # @return [DatabaseState] State of the database. Possible values include:
      # 'Online', 'Restoring', 'Recovering', 'RecoveryPending', 'Suspect',
      # 'Emergency', 'Offline', 'Copying', 'OfflineSecondary'
      attr_accessor :database_state

      # @return [String] The unique Server Id
      attr_accessor :server_id


      #
      # Mapper for Database class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Database',
          type: {
            name: 'Composite',
            class_name: 'Database',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              compatibility_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'compatibilityLevel',
                type: {
                  name: 'Enum',
                  module: 'DatabaseCompatLevel'
                }
              },
              collation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'collation',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fqdn',
                type: {
                  name: 'String'
                }
              },
              install_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'installId',
                type: {
                  name: 'String'
                }
              },
              server_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverVersion',
                type: {
                  name: 'String'
                }
              },
              server_edition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverEdition',
                type: {
                  name: 'String'
                }
              },
              server_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverLevel',
                type: {
                  name: 'String'
                }
              },
              server_default_data_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverDefaultDataPath',
                type: {
                  name: 'String'
                }
              },
              server_default_log_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverDefaultLogPath',
                type: {
                  name: 'String'
                }
              },
              server_default_backup_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverDefaultBackupPath',
                type: {
                  name: 'String'
                }
              },
              server_core_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverCoreCount',
                type: {
                  name: 'Number'
                }
              },
              server_visible_online_core_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverVisibleOnlineCoreCount',
                type: {
                  name: 'Number'
                }
              },
              database_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'databaseState',
                type: {
                  name: 'Enum',
                  module: 'DatabaseState'
                }
              },
              server_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverId',
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
