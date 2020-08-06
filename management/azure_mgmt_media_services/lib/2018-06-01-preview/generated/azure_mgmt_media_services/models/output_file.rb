# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Represents an output file produced.
    #
    class OutputFile

      include MsRestAzure

      # @return [Array<String>] The list of labels that describe how the
      # encoder should multiplex video and audio into an output file. For
      # example, if the encoder is producing two video layers with labels v1
      # and v2, and one audio layer with label a1, then an array like '[v1,
      # a1]' tells the encoder to produce an output file with the video track
      # represented by v1 and the audio track represented by a1.
      attr_accessor :labels


      #
      # Mapper for OutputFile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OutputFile',
          type: {
            name: 'Composite',
            class_name: 'OutputFile',
            model_properties: {
              labels: {
                client_side_validation: true,
                required: false,
                serialized_name: 'labels',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
