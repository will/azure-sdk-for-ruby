# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Defines a managed rule group override setting.
    #
    class ManagedRuleGroupOverride

      include MsRestAzure

      # @return [String] The managed rule group to override.
      attr_accessor :rule_group_name

      # @return [Array<ManagedRuleOverride>] List of rules that will be
      # disabled. If none specified, all rules in the group will be disabled.
      attr_accessor :rules


      #
      # Mapper for ManagedRuleGroupOverride class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedRuleGroupOverride',
          type: {
            name: 'Composite',
            class_name: 'ManagedRuleGroupOverride',
            model_properties: {
              rule_group_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleGroupName',
                type: {
                  name: 'String'
                }
              },
              rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedRuleOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedRuleOverride'
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
