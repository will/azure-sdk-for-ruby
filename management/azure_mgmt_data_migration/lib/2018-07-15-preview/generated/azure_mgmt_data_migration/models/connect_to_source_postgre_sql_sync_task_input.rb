# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the task that validates connection to PostgreSQL and source
    # server requirements
    #
    class ConnectToSourcePostgreSqlSyncTaskInput

      include MsRestAzure

      # @return [PostgreSqlConnectionInfo] Connection information for source
      # PostgreSQL server
      attr_accessor :source_connection_info


      #
      # Mapper for ConnectToSourcePostgreSqlSyncTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToSourcePostgreSqlSyncTaskInput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToSourcePostgreSqlSyncTaskInput',
            model_properties: {
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'PostgreSqlConnectionInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
