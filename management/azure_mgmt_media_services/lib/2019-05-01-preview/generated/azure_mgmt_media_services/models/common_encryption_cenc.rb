# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Class for envelope encryption scheme
    #
    class CommonEncryptionCenc

      include MsRestAzure

      # @return [EnabledProtocols] Representing supported protocols
      attr_accessor :enabled_protocols

      # @return [Array<TrackSelection>] Representing which tracks should not be
      # encrypted
      attr_accessor :clear_tracks

      # @return [StreamingPolicyContentKeys] Representing default content key
      # for each encryption scheme and separate content keys for specific
      # tracks
      attr_accessor :content_keys

      # @return [CencDrmConfiguration] Configuration of DRMs for
      # CommonEncryptionCenc encryption scheme
      attr_accessor :drm


      #
      # Mapper for CommonEncryptionCenc class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CommonEncryptionCenc',
          type: {
            name: 'Composite',
            class_name: 'CommonEncryptionCenc',
            model_properties: {
              enabled_protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabledProtocols',
                type: {
                  name: 'Composite',
                  class_name: 'EnabledProtocols'
                }
              },
              clear_tracks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clearTracks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TrackSelectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrackSelection'
                      }
                  }
                }
              },
              content_keys: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentKeys',
                type: {
                  name: 'Composite',
                  class_name: 'StreamingPolicyContentKeys'
                }
              },
              drm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'drm',
                type: {
                  name: 'Composite',
                  class_name: 'CencDrmConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
