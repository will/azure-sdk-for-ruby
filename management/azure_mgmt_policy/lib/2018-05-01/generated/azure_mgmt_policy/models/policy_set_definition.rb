# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Policy::Mgmt::V2018_05_01
  module Models
    #
    # The policy set definition.
    #
    class PolicySetDefinition

      include MsRestAzure

      # @return [PolicyType] The type of policy definition. Possible values are
      # NotSpecified, BuiltIn, and Custom. Possible values include:
      # 'NotSpecified', 'BuiltIn', 'Custom'
      attr_accessor :policy_type

      # @return [String] The display name of the policy set definition.
      attr_accessor :display_name

      # @return [String] The policy set definition description.
      attr_accessor :description

      # @return The policy set definition metadata.
      attr_accessor :metadata

      # @return The policy set definition parameters that can be used in policy
      # definition references.
      attr_accessor :parameters

      # @return [Array<PolicyDefinitionReference>] An array of policy
      # definition references.
      attr_accessor :policy_definitions

      # @return [String] The ID of the policy set definition.
      attr_accessor :id

      # @return [String] The name of the policy set definition.
      attr_accessor :name

      # @return [String] The type of the resource
      # (Microsoft.Authorization/policySetDefinitions).
      attr_accessor :type


      #
      # Mapper for PolicySetDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicySetDefinition',
          type: {
            name: 'Composite',
            class_name: 'PolicySetDefinition',
            model_properties: {
              policy_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.policyType',
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
              policy_definitions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.policyDefinitions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PolicyDefinitionReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PolicyDefinitionReference'
                      }
                  }
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
