# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2016_03_01
  module Models
    #
    # The alert rule resource.
    #
    class AlertRuleResource < Resource

      include MsRestAzure

      # @return [String] the name of the alert rule.
      attr_accessor :alert_rule_resource_name

      # @return [String] the description of the alert rule that will be
      # included in the alert email.
      attr_accessor :description

      # @return [Boolean] the flag that indicates whether the alert rule is
      # enabled.
      attr_accessor :is_enabled

      # @return [RuleCondition] the condition that results in the alert rule
      # being activated.
      attr_accessor :condition

      # @return [Array<RuleAction>] the array of actions that are performed
      # when the alert rule becomes active, and when an alert condition is
      # resolved.
      attr_accessor :actions

      # @return [DateTime] Last time the rule was updated in ISO8601 format.
      attr_accessor :last_updated_time


      #
      # Mapper for AlertRuleResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AlertRuleResource',
          type: {
            name: 'Composite',
            class_name: 'AlertRuleResource',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              alert_rule_resource_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              condition: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.condition',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'odata.type',
                  uber_parent: 'RuleCondition',
                  class_name: 'RuleCondition'
                }
              },
              actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.actions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RuleActionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'odata.type',
                        uber_parent: 'RuleAction',
                        class_name: 'RuleAction'
                      }
                  }
                }
              },
              last_updated_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastUpdatedTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
