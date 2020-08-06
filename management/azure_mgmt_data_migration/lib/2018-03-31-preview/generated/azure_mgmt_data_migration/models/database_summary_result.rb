# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_31_preview
  module Models
    #
    # Summary of database results in the migration
    #
    class DatabaseSummaryResult < DataItemMigrationSummaryResult

      include MsRestAzure

      # @return [Float] Size of the database in megabytes
      attr_accessor :size_mb


      #
      # Mapper for DatabaseSummaryResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseSummaryResult',
          type: {
            name: 'Composite',
            class_name: 'DatabaseSummaryResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              started_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startedOn',
                type: {
                  name: 'DateTime'
                }
              },
              ended_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endedOn',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              status_message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'statusMessage',
                type: {
                  name: 'String'
                }
              },
              items_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'itemsCount',
                type: {
                  name: 'Number'
                }
              },
              items_completed_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'itemsCompletedCount',
                type: {
                  name: 'Number'
                }
              },
              error_prefix: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorPrefix',
                type: {
                  name: 'String'
                }
              },
              result_prefix: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resultPrefix',
                type: {
                  name: 'String'
                }
              },
              size_mb: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sizeMB',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
