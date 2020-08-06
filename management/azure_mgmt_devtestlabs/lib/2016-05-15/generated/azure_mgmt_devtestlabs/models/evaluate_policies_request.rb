# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Request body for evaluating a policy set.
    #
    class EvaluatePoliciesRequest

      include MsRestAzure

      # @return [Array<EvaluatePoliciesProperties>] Policies to evaluate.
      attr_accessor :policies


      #
      # Mapper for EvaluatePoliciesRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EvaluatePoliciesRequest',
          type: {
            name: 'Composite',
            class_name: 'EvaluatePoliciesRequest',
            model_properties: {
              policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EvaluatePoliciesPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EvaluatePoliciesProperties'
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
