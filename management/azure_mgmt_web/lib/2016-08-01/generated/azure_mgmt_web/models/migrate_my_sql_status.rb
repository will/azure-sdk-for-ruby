# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # MySQL migration status.
    #
    class MigrateMySqlStatus < ProxyOnlyResource

      include MsRestAzure

      # @return [OperationStatus] Status of the migration task. Possible values
      # include: 'InProgress', 'Failed', 'Succeeded', 'TimedOut', 'Created'
      attr_accessor :migration_operation_status

      # @return [String] Operation ID for the migration task.
      attr_accessor :operation_id

      # @return [Boolean] True if the web app has in app MySql enabled
      attr_accessor :local_my_sql_enabled


      #
      # Mapper for MigrateMySqlStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateMySqlStatus',
          type: {
            name: 'Composite',
            class_name: 'MigrateMySqlStatus',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              migration_operation_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.migrationOperationStatus',
                type: {
                  name: 'Enum',
                  module: 'OperationStatus'
                }
              },
              operation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.operationId',
                type: {
                  name: 'String'
                }
              },
              local_my_sql_enabled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.localMySqlEnabled',
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
