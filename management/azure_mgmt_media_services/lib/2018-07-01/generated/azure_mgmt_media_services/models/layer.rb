# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The encoder can be configured to produce video and/or images (thumbnails)
    # at different resolutions, by specifying a layer for each desired
    # resolution. A layer represents the properties for the video or image at a
    # resolution.
    #
    class Layer

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.VideoLayer"] = "VideoLayer"
      @@discriminatorMap["#Microsoft.Media.H264Layer"] = "H264Layer"
      @@discriminatorMap["#Microsoft.Media.JpgLayer"] = "JpgLayer"
      @@discriminatorMap["#Microsoft.Media.PngLayer"] = "PngLayer"

      def initialize
        @odatatype = "Layer"
      end

      attr_accessor :odatatype

      # @return [String] The width of the output video for this layer. The
      # value can be absolute (in pixels) or relative (in percentage). For
      # example 50% means the output video has half as many pixels in width as
      # the input.
      attr_accessor :width

      # @return [String] The height of the output video for this layer. The
      # value can be absolute (in pixels) or relative (in percentage). For
      # example 50% means the output video has half as many pixels in height as
      # the input.
      attr_accessor :height

      # @return [String] The alphanumeric label for this layer, which can be
      # used in multiplexing different video and audio layers, or in naming the
      # output file.
      attr_accessor :label


      #
      # Mapper for Layer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Layer',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'Layer',
            class_name: 'Layer',
            model_properties: {
              width: {
                client_side_validation: true,
                required: false,
                serialized_name: 'width',
                type: {
                  name: 'String'
                }
              },
              height: {
                client_side_validation: true,
                required: false,
                serialized_name: 'height',
                type: {
                  name: 'String'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
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
