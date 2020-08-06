# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the IsDevice condition for the delivery rule.
    #
    class DeliveryRuleIsDeviceCondition < DeliveryRuleCondition

      include MsRestAzure


      def initialize
        @name = "IsDevice"
      end

      attr_accessor :name

      # @return [IsDeviceMatchConditionParameters] Defines the parameters for
      # the condition.
      attr_accessor :parameters


      #
      # Mapper for DeliveryRuleIsDeviceCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IsDevice',
          type: {
            name: 'Composite',
            class_name: 'DeliveryRuleIsDeviceCondition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'parameters',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'IsDeviceMatchConditionParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
