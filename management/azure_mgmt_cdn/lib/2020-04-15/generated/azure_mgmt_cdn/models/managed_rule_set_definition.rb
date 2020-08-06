# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Describes a managed rule set definition.
    #
    class ManagedRuleSetDefinition < Resource

      include MsRestAzure

      # @return [String] Provisioning state of the managed rule set.
      attr_accessor :provisioning_state

      # @return [String] Type of the managed rule set.
      attr_accessor :rule_set_type

      # @return [String] Version of the managed rule set type.
      attr_accessor :rule_set_version

      # @return [Array<ManagedRuleGroupDefinition>] Rule groups of the managed
      # rule set.
      attr_accessor :rule_groups

      # @return [Sku] The pricing tier (defines a CDN provider, feature list
      # and rate) of the CdnWebApplicationFirewallPolicy.
      attr_accessor :sku


      #
      # Mapper for ManagedRuleSetDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedRuleSetDefinition',
          type: {
            name: 'Composite',
            class_name: 'ManagedRuleSetDefinition',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              rule_set_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ruleSetType',
                type: {
                  name: 'String'
                }
              },
              rule_set_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ruleSetVersion',
                type: {
                  name: 'String'
                }
              },
              rule_groups: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ruleGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedRuleGroupDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedRuleGroupDefinition'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              }
            }
          }
        }
      end
    end
  end
end
