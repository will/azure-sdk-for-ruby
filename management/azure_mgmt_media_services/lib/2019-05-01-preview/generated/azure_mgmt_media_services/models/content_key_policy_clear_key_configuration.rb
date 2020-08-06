# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Represents a configuration for non-DRM keys.
    #
    class ContentKeyPolicyClearKeyConfiguration < ContentKeyPolicyConfiguration

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyClearKeyConfiguration"
      end

      attr_accessor :odatatype


      #
      # Mapper for ContentKeyPolicyClearKeyConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyClearKeyConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyClearKeyConfiguration',
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
