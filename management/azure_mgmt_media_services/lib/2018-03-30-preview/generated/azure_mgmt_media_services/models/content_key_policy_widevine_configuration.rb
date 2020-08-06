# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Specifies a configuration for Widevine licenses.
    #
    class ContentKeyPolicyWidevineConfiguration < ContentKeyPolicyConfiguration

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyWidevineConfiguration"
      end

      attr_accessor :odatatype

      # @return [String] The Widevine template.
      attr_accessor :widevine_template


      #
      # Mapper for ContentKeyPolicyWidevineConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyWidevineConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyWidevineConfiguration',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              widevine_template: {
                client_side_validation: true,
                required: true,
                serialized_name: 'widevineTemplate',
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
