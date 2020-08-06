# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_11_01_preview
  module Models
    #
    # The baseline values for a single sensitivity value.
    #
    class Baseline

      include MsRestAzure

      # @return [Sensitivity] the sensitivity of the baseline. Possible values
      # include: 'Low', 'Medium', 'High'
      attr_accessor :sensitivity

      # @return [Array<Float>] The low thresholds of the baseline.
      attr_accessor :low_thresholds

      # @return [Array<Float>] The high thresholds of the baseline.
      attr_accessor :high_thresholds


      #
      # Mapper for Baseline class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Baseline',
          type: {
            name: 'Composite',
            class_name: 'Baseline',
            model_properties: {
              sensitivity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sensitivity',
                type: {
                  name: 'Enum',
                  module: 'Sensitivity'
                }
              },
              low_thresholds: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lowThresholds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              high_thresholds: {
                client_side_validation: true,
                required: true,
                serialized_name: 'highThresholds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
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
