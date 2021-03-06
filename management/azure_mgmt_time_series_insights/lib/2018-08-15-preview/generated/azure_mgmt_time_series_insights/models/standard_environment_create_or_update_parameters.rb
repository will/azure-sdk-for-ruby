# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # Parameters supplied to the Create or Update Environment operation for a
    # standard environment.
    #
    class StandardEnvironmentCreateOrUpdateParameters < EnvironmentCreateOrUpdateParameters

      include MsRestAzure


      def initialize
        @kind = "Standard"
      end

      attr_accessor :kind

      # @return [Duration] ISO8601 timespan specifying the minimum number of
      # days the environment's events will be available for query.
      attr_accessor :data_retention_time

      # @return [StorageLimitExceededBehavior] The behavior the Time Series
      # Insights service should take when the environment's capacity has been
      # exceeded. If "PauseIngress" is specified, new events will not be read
      # from the event source. If "PurgeOldData" is specified, new events will
      # continue to be read and old events will be deleted from the
      # environment. The default behavior is PurgeOldData. Possible values
      # include: 'PurgeOldData', 'PauseIngress'
      attr_accessor :storage_limit_exceeded_behavior

      # @return [Array<TimeSeriesIdProperty>] The list of event properties
      # which will be used to partition data in the environment.
      attr_accessor :partition_key_properties


      #
      # Mapper for StandardEnvironmentCreateOrUpdateParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Standard',
          type: {
            name: 'Composite',
            class_name: 'StandardEnvironmentCreateOrUpdateParameters',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
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
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              data_retention_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.dataRetentionTime',
                type: {
                  name: 'TimeSpan'
                }
              },
              storage_limit_exceeded_behavior: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageLimitExceededBehavior',
                type: {
                  name: 'String'
                }
              },
              partition_key_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partitionKeyProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TimeSeriesIdPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TimeSeriesIdProperty'
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
