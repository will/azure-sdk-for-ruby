# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Output for the task that validates connection to SQL DB and target server
    # requirements
    #
    class ConnectToTargetSqlDbTaskOutput

      include MsRestAzure

      # @return [String] Result identifier
      attr_accessor :id

      # @return [Hash{String => String}] Source databases as a map from
      # database name to database id
      attr_accessor :databases

      # @return [String] Version of the target server
      attr_accessor :target_server_version

      # @return [String] Target server brand version
      attr_accessor :target_server_brand_version


      #
      # Mapper for ConnectToTargetSqlDbTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToTargetSqlDbTaskOutput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToTargetSqlDbTaskOutput',
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
              databases: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databases',
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
              target_server_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetServerVersion',
                type: {
                  name: 'String'
                }
              },
              target_server_brand_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetServerBrandVersion',
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
