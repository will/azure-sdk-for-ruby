# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Output for the task that validates connection to PostgreSQL and source
    # server requirements
    #
    class ConnectToSourcePostgreSqlSyncTaskOutput

      include MsRestAzure

      # @return [String] Result identifier
      attr_accessor :id

      # @return [String] Version of the source server
      attr_accessor :source_server_version

      # @return [Array<String>] List of databases on source server
      attr_accessor :databases

      # @return [String] Source server brand version
      attr_accessor :source_server_brand_version

      # @return [Array<ReportableException>] Validation errors associated with
      # the task
      attr_accessor :validation_errors


      #
      # Mapper for ConnectToSourcePostgreSqlSyncTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToSourcePostgreSqlSyncTaskOutput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToSourcePostgreSqlSyncTaskOutput',
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
              source_server_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceServerVersion',
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
              },
              source_server_brand_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceServerBrandVersion',
                type: {
                  name: 'String'
                }
              },
              validation_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportableExceptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportableException'
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
