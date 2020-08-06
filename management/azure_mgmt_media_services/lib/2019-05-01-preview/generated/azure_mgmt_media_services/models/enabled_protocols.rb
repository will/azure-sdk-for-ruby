# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Class to specify which protocols are enabled
    #
    class EnabledProtocols

      include MsRestAzure

      # @return [Boolean] Enable Download protocol or not
      attr_accessor :download

      # @return [Boolean] Enable DASH protocol or not
      attr_accessor :dash

      # @return [Boolean] Enable HLS protocol or not
      attr_accessor :hls

      # @return [Boolean] Enable SmoothStreaming protocol or not
      attr_accessor :smooth_streaming


      #
      # Mapper for EnabledProtocols class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnabledProtocols',
          type: {
            name: 'Composite',
            class_name: 'EnabledProtocols',
            model_properties: {
              download: {
                client_side_validation: true,
                required: true,
                serialized_name: 'download',
                type: {
                  name: 'Boolean'
                }
              },
              dash: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dash',
                type: {
                  name: 'Boolean'
                }
              },
              hls: {
                client_side_validation: true,
                required: true,
                serialized_name: 'hls',
                type: {
                  name: 'Boolean'
                }
              },
              smooth_streaming: {
                client_side_validation: true,
                required: true,
                serialized_name: 'smoothStreaming',
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
