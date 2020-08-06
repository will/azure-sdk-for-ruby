# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Defines a managed rule set.
    #
    class ManagedRuleSet

      include MsRestAzure

      # @return [String] Defines the rule set type to use.
      attr_accessor :rule_set_type

      # @return [String] Defines the version of the rule set to use.
      attr_accessor :rule_set_version

      # @return [Array<ManagedRuleGroupOverride>] Defines the rule group
      # overrides to apply to the rule set.
      attr_accessor :rule_group_overrides


      #
      # Mapper for ManagedRuleSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedRuleSet',
          type: {
            name: 'Composite',
            class_name: 'ManagedRuleSet',
            model_properties: {
              rule_set_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleSetType',
                type: {
                  name: 'String'
                }
              },
              rule_set_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleSetVersion',
                type: {
                  name: 'String'
                }
              },
              rule_group_overrides: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ruleGroupOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedRuleGroupOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedRuleGroupOverride'
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
