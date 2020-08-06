# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the task that gets the list of tables contained within a
    # provided list of Oracle schemas.
    #
    class GetUserTablesOracleTaskInput

      include MsRestAzure

      # @return [OracleConnectionInfo] Information for connecting to Oracle
      # source
      attr_accessor :connection_info

      # @return [Array<String>] List of Oracle schemas for which to collect
      # tables
      attr_accessor :selected_schemas


      #
      # Mapper for GetUserTablesOracleTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetUserTablesOracleTaskInput',
          type: {
            name: 'Composite',
            class_name: 'GetUserTablesOracleTaskInput',
            model_properties: {
              connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'connectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'OracleConnectionInfo'
                }
              },
              selected_schemas: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selectedSchemas',
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
              }
            }
          }
        }
      end
    end
  end
end
