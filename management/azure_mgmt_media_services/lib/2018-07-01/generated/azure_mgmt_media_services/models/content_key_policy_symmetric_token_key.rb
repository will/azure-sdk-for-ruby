# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Specifies a symmetric key for token validation.
    #
    class ContentKeyPolicySymmetricTokenKey < ContentKeyPolicyRestrictionTokenKey

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicySymmetricTokenKey"
      end

      attr_accessor :odatatype

      # @return [Array<Integer>] The key value of the key
      attr_accessor :key_value


      #
      # Mapper for ContentKeyPolicySymmetricTokenKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicySymmetricTokenKey',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicySymmetricTokenKey',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              key_value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyValue',
                type: {
                  name: 'ByteArray'
                }
              }
            }
          }
        }
      end
    end
  end
end
