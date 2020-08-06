# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Represents a ContentKeyPolicyRestriction that is unavailable in the
    # current API version.
    #
    class ContentKeyPolicyUnknownRestriction < ContentKeyPolicyRestriction

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyUnknownRestriction"
      end

      attr_accessor :odatatype


      #
      # Mapper for ContentKeyPolicyUnknownRestriction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyUnknownRestriction',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyUnknownRestriction',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
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
