# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # The Live Output.
    #
    class LiveOutput < ProxyResource

      include MsRestAzure

      # @return [String] The description of the Live Output.
      attr_accessor :description

      # @return [String] The asset name.
      attr_accessor :asset_name

      # @return [Duration] ISO 8601 timespan duration of the archive window
      # length. This is duration that customer want to retain the recorded
      # content.
      attr_accessor :archive_window_length

      # @return [String] The manifest file name.
      attr_accessor :manifest_name

      # @return [Hls] The HLS configuration.
      attr_accessor :hls

      # @return [Integer] The output snapshot time.
      attr_accessor :output_snap_time

      # @return [DateTime] The exact time the Live Output was created.
      attr_accessor :created

      # @return [DateTime] The exact time the Live Output was last modified.
      attr_accessor :last_modified

      # @return [String] The provisioning state of the Live Output.
      attr_accessor :provisioning_state

      # @return [LiveOutputResourceState] The resource state of the Live
      # Output. Possible values include: 'Creating', 'Running', 'Deleting'
      attr_accessor :resource_state


      #
      # Mapper for LiveOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveOutput',
          type: {
            name: 'Composite',
            class_name: 'LiveOutput',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
              archive_window_length: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.archiveWindowLength',
                type: {
                  name: 'TimeSpan'
                }
              },
              manifest_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.manifestName',
                type: {
                  name: 'String'
                }
              },
              hls: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hls',
                type: {
                  name: 'Composite',
                  class_name: 'Hls'
                }
              },
              output_snap_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.outputSnapTime',
                type: {
                  name: 'Number'
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
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'Enum',
                  module: 'LiveOutputResourceState'
                }
              }
            }
          }
        }
      end
    end
  end
end
