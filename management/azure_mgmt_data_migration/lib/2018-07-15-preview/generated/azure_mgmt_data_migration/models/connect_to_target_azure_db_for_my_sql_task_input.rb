# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the task that validates connection to Azure Database for MySQL
    # and target server requirements
    #
    class ConnectToTargetAzureDbForMySqlTaskInput

      include MsRestAzure

      # @return [MySqlConnectionInfo] Connection information for source MySQL
      # server
      attr_accessor :source_connection_info

      # @return [MySqlConnectionInfo] Connection information for target Azure
      # Database for MySQL server
      attr_accessor :target_connection_info


      #
      # Mapper for ConnectToTargetAzureDbForMySqlTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToTargetAzureDbForMySqlTaskInput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToTargetAzureDbForMySqlTaskInput',
            model_properties: {
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'MySqlConnectionInfo'
                }
              },
              target_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'MySqlConnectionInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
