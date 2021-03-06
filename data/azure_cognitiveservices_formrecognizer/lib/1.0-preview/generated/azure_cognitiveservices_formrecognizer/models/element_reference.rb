# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::FormRecognizer::V1_0_preview
  module Models
    #
    # Reference to an OCR word.
    #
    class ElementReference

      include MsRestAzure

      # @return [String]
      attr_accessor :ref


      #
      # Mapper for ElementReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'elementReference',
          type: {
            name: 'Composite',
            class_name: 'ElementReference',
            model_properties: {
              ref: {
                client_side_validation: true,
                required: false,
                serialized_name: '$ref',
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
