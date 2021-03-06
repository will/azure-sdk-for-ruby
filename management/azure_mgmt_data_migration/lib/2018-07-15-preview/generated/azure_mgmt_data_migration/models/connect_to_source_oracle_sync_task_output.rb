# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Output for the task that validates Oracle database connection
    #
    class ConnectToSourceOracleSyncTaskOutput

      include MsRestAzure

      # @return [String] Version of the source server
      attr_accessor :source_server_version

      # @return [Array<String>] List of schemas on source server
      attr_accessor :databases

      # @return [String] Source server brand version
      attr_accessor :source_server_brand_version

      # @return [Array<ReportableException>] Validation errors associated with
      # the task
      attr_accessor :validation_errors


      #
      # Mapper for ConnectToSourceOracleSyncTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToSourceOracleSyncTaskOutput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToSourceOracleSyncTaskOutput',
            model_properties: {
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
