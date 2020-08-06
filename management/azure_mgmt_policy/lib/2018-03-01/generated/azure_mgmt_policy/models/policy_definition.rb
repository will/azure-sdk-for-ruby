# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Policy::Mgmt::V2018_03_01
  module Models
    #
    # The policy definition.
    #
    class PolicyDefinition

      include MsRestAzure

      # @return [PolicyType] The type of policy definition. Possible values are
      # NotSpecified, BuiltIn, and Custom. Possible values include:
      # 'NotSpecified', 'BuiltIn', 'Custom'
      attr_accessor :policy_type

      # @return [PolicyMode] The policy definition mode. Possible values are
      # NotSpecified, Indexed, and All. Possible values include:
      # 'NotSpecified', 'Indexed', 'All'
      attr_accessor :mode

      # @return [String] The display name of the policy definition.
      attr_accessor :display_name

      # @return [String] The policy definition description.
      attr_accessor :description

      # @return The policy rule.
      attr_accessor :policy_rule

      # @return The policy definition metadata.
      attr_accessor :metadata

      # @return Required if a parameter is used in policy rule.
      attr_accessor :parameters

      # @return [String] The ID of the policy definition.
      attr_accessor :id

      # @return [String] The name of the policy definition.
      attr_accessor :name

      # @return [String] The type of the resource
      # (Microsoft.Authorization/policyDefinitions).
      attr_accessor :type


      #
      # Mapper for PolicyDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyDefinition',
          type: {
            name: 'Composite',
            class_name: 'PolicyDefinition',
            model_properties: {
              policy_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.policyType',
                type: {
                  name: 'String'
                }
              },
              mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mode',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
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
              policy_rule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.policyRule',
                type: {
                  name: 'Object'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Object'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Object'
                }
              },
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
              }
            }
          }
        }
      end
    end
  end
end
