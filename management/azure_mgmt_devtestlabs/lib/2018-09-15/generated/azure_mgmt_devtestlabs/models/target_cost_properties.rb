# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties of a cost target.
    #
    class TargetCostProperties

      include MsRestAzure

      # @return [TargetCostStatus] Target cost status. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :status

      # @return [Integer] Lab target cost
      attr_accessor :target

      # @return [Array<CostThresholdProperties>] Cost thresholds.
      attr_accessor :cost_thresholds

      # @return [DateTime] Reporting cycle start date.
      attr_accessor :cycle_start_date_time

      # @return [DateTime] Reporting cycle end date.
      attr_accessor :cycle_end_date_time

      # @return [ReportingCycleType] Reporting cycle type. Possible values
      # include: 'CalendarMonth', 'Custom'
      attr_accessor :cycle_type


      #
      # Mapper for TargetCostProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TargetCostProperties',
          type: {
            name: 'Composite',
            class_name: 'TargetCostProperties',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'Number'
                }
              },
              cost_thresholds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'costThresholds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CostThresholdPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CostThresholdProperties'
                      }
                  }
                }
              },
              cycle_start_date_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cycleStartDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              cycle_end_date_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cycleEndDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              cycle_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cycleType',
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
