# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # Parameters to create and update Cosmos DB SQL database.
    #
    class SqlDatabaseCreateUpdateParameters < ARMResourceProperties

      include MsRestAzure

      # @return [SqlDatabaseResource] The standard JSON format of a SQL
      # database
      attr_accessor :resource

      # @return [CreateUpdateOptions] A key-value pair of options to be applied
      # for the request. This corresponds to the headers sent with the request.
      attr_accessor :options


      #
      # Mapper for SqlDatabaseCreateUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlDatabaseCreateUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'SqlDatabaseCreateUpdateParameters',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              resource: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.resource',
                type: {
                  name: 'Composite',
                  class_name: 'SqlDatabaseResource'
                }
              },
              options: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.options',
                type: {
                  name: 'Composite',
                  class_name: 'CreateUpdateOptions'
                }
              }
            }
          }
        }
      end
    end
  end
end