# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The integration account agreement content.
    #
    class AgreementContent

      include MsRestAzure

      # @return [AS2AgreementContent] The AS2 agreement content.
      attr_accessor :a_s2

      # @return [X12AgreementContent] The X12 agreement content.
      attr_accessor :x12

      # @return [EdifactAgreementContent] The EDIFACT agreement content.
      attr_accessor :edifact


      #
      # Mapper for AgreementContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AgreementContent',
          type: {
            name: 'Composite',
            class_name: 'AgreementContent',
            model_properties: {
              a_s2: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aS2',
                type: {
                  name: 'Composite',
                  class_name: 'AS2AgreementContent'
                }
              },
              x12: {
                client_side_validation: true,
                required: false,
                serialized_name: 'x12',
                type: {
                  name: 'Composite',
                  class_name: 'X12AgreementContent'
                }
              },
              edifact: {
                client_side_validation: true,
                required: false,
                serialized_name: 'edifact',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactAgreementContent'
                }
              }
            }
          }
        }
      end
    end
  end
end
