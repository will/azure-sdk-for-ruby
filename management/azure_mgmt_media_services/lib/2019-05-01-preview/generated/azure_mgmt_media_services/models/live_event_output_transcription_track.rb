# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Describes a transcription track in the output of a Live Event, generated
    # using speech-to-text transcription.
    #
    class LiveEventOutputTranscriptionTrack

      include MsRestAzure

      # @return [String] The output track name.
      attr_accessor :track_name


      #
      # Mapper for LiveEventOutputTranscriptionTrack class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEventOutputTranscriptionTrack',
          type: {
            name: 'Composite',
            class_name: 'LiveEventOutputTranscriptionTrack',
            model_properties: {
              track_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'trackName',
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
