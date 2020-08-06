# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Policy::Mgmt::V2019_06_01
  module Models
    #
    # The policy definition reference.
    #
    class PolicyDefinitionReference

      include MsRestAzure

      # @return [String] The ID of the policy definition or policy set
      # definition.
      attr_accessor :policy_definition_id

      # @return Required if a parameter is used in policy rule.
      attr_accessor :parameters


      #
      # Mapper for PolicyDefinitionReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyDefinitionReference',
          type: {
            name: 'Composite',
            class_name: 'PolicyDefinitionReference',
            model_properties: {
              policy_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyDefinitionId',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
