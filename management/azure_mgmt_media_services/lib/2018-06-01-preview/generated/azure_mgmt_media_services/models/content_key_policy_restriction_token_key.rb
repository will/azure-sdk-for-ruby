# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Base class for Content Key Policy key for token validation. A derived
    # class must be used to create a token key.
    #
    class ContentKeyPolicyRestrictionTokenKey

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.ContentKeyPolicySymmetricTokenKey"] = "ContentKeyPolicySymmetricTokenKey"
      @@discriminatorMap["#Microsoft.Media.ContentKeyPolicyRsaTokenKey"] = "ContentKeyPolicyRsaTokenKey"
      @@discriminatorMap["#Microsoft.Media.ContentKeyPolicyX509CertificateTokenKey"] = "ContentKeyPolicyX509CertificateTokenKey"

      def initialize
        @odatatype = "ContentKeyPolicyRestrictionTokenKey"
      end

      attr_accessor :odatatype


      #
      # Mapper for ContentKeyPolicyRestrictionTokenKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContentKeyPolicyRestrictionTokenKey',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'ContentKeyPolicyRestrictionTokenKey',
            class_name: 'ContentKeyPolicyRestrictionTokenKey',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
