# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The metric name.
    #
    class MetricName

      include MsRestAzure

      # @return [String] The metric name.
      attr_accessor :value

      # @return [String] The localized metric name.
      attr_accessor :localized_value


      #
      # Mapper for MetricName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricName',
          type: {
            name: 'Composite',
            class_name: 'MetricName',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              localized_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localizedValue',
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
