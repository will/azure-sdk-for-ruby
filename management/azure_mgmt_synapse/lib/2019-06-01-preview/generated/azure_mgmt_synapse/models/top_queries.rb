# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # A database query.
    #
    class TopQueries

      include MsRestAzure

      # @return [QueryAggregationFunction] The function that is used to
      # aggregate each query's metrics. Possible values include: 'min', 'max',
      # 'avg', 'sum'
      attr_accessor :aggregation_function

      # @return [QueryExecutionType] The execution type that is used to filter
      # the query instances that are returned. Possible values include: 'any',
      # 'regular', 'irregular', 'aborted', 'exception'
      attr_accessor :execution_type

      # @return [String] The duration of the interval (ISO8601 duration
      # format).
      attr_accessor :interval_type

      # @return [Float] The number of requested queries.
      attr_accessor :number_of_top_queries

      # @return [DateTime] The start time for queries that are returned
      # (ISO8601 format)
      attr_accessor :observation_start_time

      # @return [DateTime] The end time for queries that are returned (ISO8601
      # format)
      attr_accessor :observation_end_time

      # @return [QueryObservedMetricType] The type of metric to use for
      # ordering the top metrics. Possible values include: 'cpu', 'io',
      # 'logio', 'duration', 'executionCount'
      attr_accessor :observed_metric

      # @return [Array<QueryStatistic>] The list of queries.
      attr_accessor :queries


      #
      # Mapper for TopQueries class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TopQueries',
          type: {
            name: 'Composite',
            class_name: 'TopQueries',
            model_properties: {
              aggregation_function: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'aggregationFunction',
                type: {
                  name: 'Enum',
                  module: 'QueryAggregationFunction'
                }
              },
              execution_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'executionType',
                type: {
                  name: 'Enum',
                  module: 'QueryExecutionType'
                }
              },
              interval_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'intervalType',
                type: {
                  name: 'String'
                }
              },
              number_of_top_queries: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'numberOfTopQueries',
                type: {
                  name: 'Double'
                }
              },
              observation_start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'observationStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              observation_end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'observationEndTime',
                type: {
                  name: 'DateTime'
                }
              },
              observed_metric: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'observedMetric',
                type: {
                  name: 'Enum',
                  module: 'QueryObservedMetricType'
                }
              },
              queries: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'queries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QueryStatisticElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QueryStatistic'
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
