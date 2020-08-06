# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # Firewall Policy Filter Rule
    #
    class FirewallPolicyFilterRule < FirewallPolicyRule

      include MsRestAzure


      def initialize
        @ruleType = "FirewallPolicyFilterRule"
      end

      attr_accessor :ruleType

      # @return [FirewallPolicyFilterRuleAction] The action type of a Filter
      # rule
      attr_accessor :action

      # @return [Array<FirewallPolicyRuleCondition>] Collection of rule
      # conditions used by a rule.
      attr_accessor :rule_conditions


      #
      # Mapper for FirewallPolicyFilterRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallPolicyFilterRule',
          type: {
            name: 'Composite',
            class_name: 'FirewallPolicyFilterRule',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'priority',
                constraints: {
                  InclusiveMaximum: 65000,
                  InclusiveMinimum: 100
                },
                type: {
                  name: 'Number'
                }
              },
              ruleType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleType',
                type: {
                  name: 'String'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'Composite',
                  class_name: 'FirewallPolicyFilterRuleAction'
                }
              },
              rule_conditions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ruleConditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FirewallPolicyRuleConditionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'ruleConditionType',
                        uber_parent: 'FirewallPolicyRuleCondition',
                        class_name: 'FirewallPolicyRuleCondition'
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
