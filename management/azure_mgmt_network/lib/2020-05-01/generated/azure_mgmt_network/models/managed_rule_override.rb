# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Defines a managed rule group override setting.
    #
    class ManagedRuleOverride

      include MsRestAzure

      # @return [String] Identifier for the managed rule.
      attr_accessor :rule_id

      # @return [ManagedRuleEnabledState] The state of the managed rule.
      # Defaults to Disabled if not specified. Possible values include:
      # 'Disabled'
      attr_accessor :state


      #
      # Mapper for ManagedRuleOverride class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedRuleOverride',
          type: {
            name: 'Composite',
            class_name: 'ManagedRuleOverride',
            model_properties: {
              rule_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleId',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
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
