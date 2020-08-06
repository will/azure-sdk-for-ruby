# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_10_12
  module Models
    #
    # A rule that specifies a set of actions and conditions
    #
    class DeliveryRule

      include MsRestAzure

      # @return [Integer] The order in which the rules are applied for the
      # endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order
      # will be applied before a rule with a greater order. Rule with order 0
      # is a special rule. It does not require any condition and actions listed
      # in it will always be applied.
      attr_accessor :order

      # @return [Array<DeliveryRuleAction>] A list of actions that are executed
      # when all the conditions of a rule are satisfied.
      attr_accessor :actions

      # @return [Array<DeliveryRuleCondition>] A list of conditions that must
      # be matched for the actions to be executed
      attr_accessor :conditions


      #
      # Mapper for DeliveryRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeliveryRule',
          type: {
            name: 'Composite',
            class_name: 'DeliveryRule',
            model_properties: {
              order: {
                client_side_validation: true,
                required: true,
                serialized_name: 'order',
                type: {
                  name: 'Number'
                }
              },
              actions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'actions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeliveryRuleActionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'name',
                        uber_parent: 'DeliveryRuleAction',
                        class_name: 'DeliveryRuleAction'
                      }
                  }
                }
              },
              conditions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'conditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeliveryRuleConditionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'name',
                        uber_parent: 'DeliveryRuleCondition',
                        class_name: 'DeliveryRuleCondition'
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
