# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Class to specify drm configurations of CommonEncryptionCbcs scheme in
    # Streaming Policy
    #
    class CbcsDrmConfiguration

      include MsRestAzure

      # @return [StreamingPolicyFairPlayConfiguration] Fairplay configurations
      attr_accessor :fair_play

      # @return [StreamingPolicyPlayReadyConfiguration] PlayReady
      # configurations
      attr_accessor :play_ready

      # @return [StreamingPolicyWidevineConfiguration] Widevine configurations
      attr_accessor :widevine


      #
      # Mapper for CbcsDrmConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CbcsDrmConfiguration',
          type: {
            name: 'Composite',
            class_name: 'CbcsDrmConfiguration',
            model_properties: {
              fair_play: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fairPlay',
                type: {
                  name: 'Composite',
                  class_name: 'StreamingPolicyFairPlayConfiguration'
                }
              },
              play_ready: {
                client_side_validation: true,
                required: false,
                serialized_name: 'playReady',
                type: {
                  name: 'Composite',
                  class_name: 'StreamingPolicyPlayReadyConfiguration'
                }
              },
              widevine: {
                client_side_validation: true,
                required: false,
                serialized_name: 'widevine',
                type: {
                  name: 'Composite',
                  class_name: 'StreamingPolicyWidevineConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
