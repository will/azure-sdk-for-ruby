# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Describes the settings for producing JPEG thumbnails.
    #
    class JpgFormat < ImageFormat

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.JpgFormat"
      end

      attr_accessor :odatatype


      #
      # Mapper for JpgFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.JpgFormat',
          type: {
            name: 'Composite',
            class_name: 'JpgFormat',
            model_properties: {
              filename_pattern: {
                client_side_validation: true,
                required: true,
                serialized_name: 'filenamePattern',
                type: {
                  name: 'String'
                }
              },
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
