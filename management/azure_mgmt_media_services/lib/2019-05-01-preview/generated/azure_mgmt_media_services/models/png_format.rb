# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Describes the settings for producing PNG thumbnails.
    #
    class PngFormat < ImageFormat

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.PngFormat"
      end

      attr_accessor :odatatype


      #
      # Mapper for PngFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.PngFormat',
          type: {
            name: 'Composite',
            class_name: 'PngFormat',
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
