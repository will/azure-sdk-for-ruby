# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_05_31
  module Models
    #
    # Model object.
    #
    #
    class ForecastPropertiesConfidenceLevelsItem

      include MsRestAzure

      # @return The percentage level of the confidence
      attr_accessor :percentage

      # @return [Bound] The boundary of the percentage, values could be 'Upper'
      # or 'Lower'. Possible values include: 'Upper', 'Lower'
      attr_accessor :bound

      # @return The amount of forecast within the percentage level
      attr_accessor :value


      #
      # Mapper for ForecastPropertiesConfidenceLevelsItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ForecastProperties_confidenceLevelsItem',
          type: {
            name: 'Composite',
            class_name: 'ForecastPropertiesConfidenceLevelsItem',
            model_properties: {
              percentage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'percentage',
                type: {
                  name: 'Number'
                }
              },
              bound: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bound',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
