# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # A Streaming Locator resource
    #
    class StreamingLocator < ProxyResource

      include MsRestAzure

      # @return [String] Asset Name
      attr_accessor :asset_name

      # @return [DateTime] Creation time of Streaming Locator
      attr_accessor :created

      # @return [DateTime] StartTime of Streaming Locator
      attr_accessor :start_time

      # @return [DateTime] EndTime of Streaming Locator
      attr_accessor :end_time

      # @return StreamingLocatorId of Streaming Locator
      attr_accessor :streaming_locator_id

      # @return [String] Streaming policy name used by this streaming locator.
      # Either specify the name of streaming policy you created or use one of
      # the predefined streaming polices. The predefined streaming policies
      # available are: 'Predefined_DownloadOnly',
      # 'Predefined_ClearStreamingOnly',
      # 'Predefined_DownloadAndClearStreaming', 'Predefined_ClearKey',
      # 'Predefined_SecureStreaming' and
      # 'Predefined_SecureStreamingWithFairPlay'
      attr_accessor :streaming_policy_name

      # @return [String] Default ContentKeyPolicy used by this Streaming
      # Locator
      attr_accessor :default_content_key_policy_name

      # @return [Array<StreamingLocatorContentKey>] ContentKeys used by this
      # Streaming Locator
      attr_accessor :content_keys

      # @return [String] An Alternative Media Identifier associated with the
      # StreamingLocator.  This identifier can be used to distinguish different
      # StreamingLocators for the same Asset for authorization purposes in the
      # CustomLicenseAcquisitionUrlTemplate or the
      # CustomKeyAcquisitionUrlTemplate of the StreamingPolicy specified in the
      # StreamingPolicyName field.
      attr_accessor :alternative_media_id


      #
      # Mapper for StreamingLocator class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StreamingLocator',
          type: {
            name: 'Composite',
            class_name: 'StreamingLocator',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              asset_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.assetName',
                type: {
                  name: 'String'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              streaming_locator_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.streamingLocatorId',
                type: {
                  name: 'String'
                }
              },
              streaming_policy_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.streamingPolicyName',
                type: {
                  name: 'String'
                }
              },
              default_content_key_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultContentKeyPolicyName',
                type: {
                  name: 'String'
                }
              },
              content_keys: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.contentKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StreamingLocatorContentKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StreamingLocatorContentKey'
                      }
                  }
                }
              },
              alternative_media_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.alternativeMediaId',
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
