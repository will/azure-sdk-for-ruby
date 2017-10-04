# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The Edifact agreement content.
    #
    class EdifactAgreementContent

      include MsRestAzure

      # @return [EdifactOneWayAgreement] The EDIFACT one-way receive agreement.
      attr_accessor :receive_agreement

      # @return [EdifactOneWayAgreement] The EDIFACT one-way send agreement.
      attr_accessor :send_agreement


      #
      # Mapper for EdifactAgreementContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdifactAgreementContent',
          type: {
            name: 'Composite',
            class_name: 'EdifactAgreementContent',
            model_properties: {
              receive_agreement: {
                required: true,
                serialized_name: 'receiveAgreement',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactOneWayAgreement'
                }
              },
              send_agreement: {
                required: true,
                serialized_name: 'sendAgreement',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactOneWayAgreement'
                }
              }
            }
          }
        }
      end
    end
  end
end
