# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # A database metric definition.
    #
    class MetricDefinition

      include MsRestAzure

      # @return [MetricName] The name information for the metric.
      attr_accessor :name

      # @return [PrimaryAggregationType] The primary aggregation type defining
      # how metric values are displayed. Possible values include: 'None',
      # 'Average', 'Count', 'Minimum', 'Maximum', 'Total'
      attr_accessor :primary_aggregation_type

      # @return [String] The resource uri of the database.
      attr_accessor :resource_uri

      # @return [UnitDefinitionType] The unit of the metric. Possible values
      # include: 'Count', 'Bytes', 'Seconds', 'Percent', 'CountPerSecond',
      # 'BytesPerSecond'
      attr_accessor :unit

      # @return [Array<MetricAvailability>] The list of database metric
      # availabities for the metric.
      attr_accessor :metric_availabilities


      #
      # Mapper for MetricDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricDefinition',
          type: {
            name: 'Composite',
            class_name: 'MetricDefinition',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'MetricName'
                }
              },
              primary_aggregation_type: {
                required: false,
                read_only: true,
                serialized_name: 'primaryAggregationType',
                type: {
                  name: 'String'
                }
              },
              resource_uri: {
                required: false,
                read_only: true,
                serialized_name: 'resourceUri',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              metric_availabilities: {
                required: false,
                read_only: true,
                serialized_name: 'metricAvailabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricAvailabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricAvailability'
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
