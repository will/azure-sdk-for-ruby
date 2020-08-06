# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2018_07_01_preview
  module Models
    #
    # Policy evaluation details.
    #
    class PolicyEvaluationDetails

      include MsRestAzure

      # @return [Array<ExpressionEvaluationDetails>] Details of the evaluated
      # expressions.
      attr_accessor :evaluated_expressions

      # @return [IfNotExistsEvaluationDetails] Evaluation details of
      # IfNotExists effect.
      attr_accessor :if_not_exists_details


      #
      # Mapper for PolicyEvaluationDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyEvaluationDetails',
          type: {
            name: 'Composite',
            class_name: 'PolicyEvaluationDetails',
            model_properties: {
              evaluated_expressions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'evaluatedExpressions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressionEvaluationDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressionEvaluationDetails'
                      }
                  }
                }
              },
              if_not_exists_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ifNotExistsDetails',
                type: {
                  name: 'Composite',
                  class_name: 'IfNotExistsEvaluationDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
