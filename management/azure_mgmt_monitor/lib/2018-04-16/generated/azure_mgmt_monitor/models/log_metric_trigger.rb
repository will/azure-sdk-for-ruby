# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_04_16
  module Models
    #
    # A log metrics trigger descriptor.
    #
    class LogMetricTrigger

      include MsRestAzure

      # @return [ConditionalOperator] Evaluation operation for Metric
      # -'GreaterThan' or 'LessThan' or 'Equal'. Possible values include:
      # 'GreaterThan', 'LessThan', 'Equal'
      attr_accessor :threshold_operator

      # @return [Float] The threshold of the metric trigger.
      attr_accessor :threshold

      # @return [MetricTriggerType] Metric Trigger Type - 'Consecutive' or
      # 'Total'. Possible values include: 'Consecutive', 'Total'
      attr_accessor :metric_trigger_type

      # @return [String] Evaluation of metric on a particular column
      attr_accessor :metric_column


      #
      # Mapper for LogMetricTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LogMetricTrigger',
          type: {
            name: 'Composite',
            class_name: 'LogMetricTrigger',
            model_properties: {
              threshold_operator: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thresholdOperator',
                type: {
                  name: 'String'
                }
              },
              threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'threshold',
                type: {
                  name: 'Double'
                }
              },
              metric_trigger_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricTriggerType',
                type: {
                  name: 'String'
                }
              },
              metric_column: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricColumn',
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
