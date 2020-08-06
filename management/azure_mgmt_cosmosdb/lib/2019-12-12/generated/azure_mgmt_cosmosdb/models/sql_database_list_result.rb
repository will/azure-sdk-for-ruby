# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # The List operation response, that contains the SQL databases and their
    # properties.
    #
    class SqlDatabaseListResult

      include MsRestAzure

      # @return [Array<SqlDatabaseGetResults>] List of SQL databases and their
      # properties.
      attr_accessor :value


      #
      # Mapper for SqlDatabaseListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlDatabaseListResult',
          type: {
            name: 'Composite',
            class_name: 'SqlDatabaseListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SqlDatabaseGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SqlDatabaseGetResults'
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
