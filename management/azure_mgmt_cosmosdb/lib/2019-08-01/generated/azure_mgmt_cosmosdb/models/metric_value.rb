# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # Represents metrics values.
    #
    class MetricValue

      include MsRestAzure

      # @return [Float] The number of values for the metric.
      attr_accessor :_count

      # @return [Float] The average value of the metric.
      attr_accessor :average

      # @return [Float] The max value of the metric.
      attr_accessor :maximum

      # @return [Float] The min value of the metric.
      attr_accessor :minimum

      # @return [DateTime] The metric timestamp (ISO-8601 format).
      attr_accessor :timestamp

      # @return [Float] The total value of the metric.
      attr_accessor :total


      #
      # Mapper for MetricValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricValue',
          type: {
            name: 'Composite',
            class_name: 'MetricValue',
            model_properties: {
              _count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_count',
                type: {
                  name: 'Double'
                }
              },
              average: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'average',
                type: {
                  name: 'Double'
                }
              },
              maximum: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Double'
                }
              },
              minimum: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                type: {
                  name: 'Double'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              total: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'total',
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
