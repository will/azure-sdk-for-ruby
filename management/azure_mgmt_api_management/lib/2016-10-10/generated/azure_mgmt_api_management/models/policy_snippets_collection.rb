# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # The response of the list policy snippets operation.
    #
    class PolicySnippetsCollection

      include MsRestAzure

      # @return [Array<PolicySnippetContract>] Policy snippet value.
      attr_accessor :value


      #
      # Mapper for PolicySnippetsCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicySnippetsCollection',
          type: {
            name: 'Composite',
            class_name: 'PolicySnippetsCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PolicySnippetContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PolicySnippetContract'
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
