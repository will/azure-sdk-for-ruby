# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_09_01
  module Models
    #
    # The response to a calculate baseline call.
    #
    class CalculateBaselineResponse

      include MsRestAzure

      # @return [String] The resource type of the baseline resource.
      attr_accessor :type

      # @return [Array<DateTime>] The array of timestamps of the baselines.
      attr_accessor :timestamps

      # @return [Array<Baseline>] The baseline values for each sensitivity.
      attr_accessor :baseline


      #
      # Mapper for CalculateBaselineResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CalculateBaselineResponse',
          type: {
            name: 'Composite',
            class_name: 'CalculateBaselineResponse',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              timestamps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestamps',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              baseline: {
                client_side_validation: true,
                required: true,
                serialized_name: 'baseline',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BaselineElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Baseline'
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
