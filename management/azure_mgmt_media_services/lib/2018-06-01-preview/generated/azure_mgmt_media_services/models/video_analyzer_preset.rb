# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # A video analyzer preset that extracts insights (rich metadata) from both
    # audio and video, and outputs a JSON format file.
    #
    class VideoAnalyzerPreset < AudioAnalyzerPreset

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.VideoAnalyzerPreset"
      end

      attr_accessor :odatatype

      # @return [Boolean] Whether to only extract audio insights when
      # processing a video file.
      attr_accessor :audio_insights_only


      #
      # Mapper for VideoAnalyzerPreset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.VideoAnalyzerPreset',
          type: {
            name: 'Composite',
            class_name: 'VideoAnalyzerPreset',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              audio_language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'audioLanguage',
                type: {
                  name: 'String'
                }
              },
              audio_insights_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'audioInsightsOnly',
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
