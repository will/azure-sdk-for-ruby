# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # The metric values for a single partition.
    #
    class PartitionMetric < Metric

      include MsRestAzure

      # @return [String] The partition id (GUID identifier) of the metric
      # values.
      attr_accessor :partition_id

      # @return [String] The partition key range id (integer identifier) of the
      # metric values.
      attr_accessor :partition_key_range_id


      #
      # Mapper for PartitionMetric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionMetric',
          type: {
            name: 'Composite',
            class_name: 'PartitionMetric',
            model_properties: {
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              time_grain: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
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
                  name: 'Composite',
                  class_name: 'MetricName'
                }
              },
              metric_values: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'metricValues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricValue'
                      }
                  }
                }
              },
              partition_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'partitionId',
                type: {
                  name: 'String'
                }
              },
              partition_key_range_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'partitionKeyRangeId',
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
