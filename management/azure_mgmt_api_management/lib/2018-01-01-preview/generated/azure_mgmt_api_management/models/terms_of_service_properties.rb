# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Terms of service contract properties.
    #
    class TermsOfServiceProperties

      include MsRestAzure

      # @return [String] A terms of service text.
      attr_accessor :text

      # @return [Boolean] Display terms of service during a sign-up process.
      attr_accessor :enabled

      # @return [Boolean] Ask user for consent to the terms of service.
      attr_accessor :consent_required


      #
      # Mapper for TermsOfServiceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TermsOfServiceProperties',
          type: {
            name: 'Composite',
            class_name: 'TermsOfServiceProperties',
            model_properties: {
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              consent_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'consentRequired',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end