# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_02_01_preview
  module Models
    #
    # Build resource properties
    #
    class Build < ProxyResource

      include MsRestAzure

      # @return [String] The unique identifier for the build.
      attr_accessor :build_id

      # @return [BuildStatus] The current status of the build. Possible values
      # include: 'Queued', 'Started', 'Running', 'Succeeded', 'Failed',
      # 'Canceled', 'Error', 'Timeout'
      attr_accessor :status

      # @return [DateTime] The last updated time for the build.
      attr_accessor :last_updated_time

      # @return [BuildType] The type of build. Possible values include:
      # 'AutoBuild', 'QuickBuild'
      attr_accessor :build_type

      # @return [DateTime] The time the build was created.
      attr_accessor :create_time

      # @return [DateTime] The time the build started.
      attr_accessor :start_time

      # @return [DateTime] The time the build finished.
      attr_accessor :finish_time

      # @return [Array<ImageDescriptor>] The list of all images that were
      # generated from the build.
      attr_accessor :output_images

      # @return [String] The build task with which the build was started.
      attr_accessor :build_task

      # @return [ImageUpdateTrigger] The image update trigger that caused the
      # build.
      attr_accessor :image_update_trigger

      # @return [GitCommitTrigger] The git commit trigger that caused the
      # build.
      attr_accessor :git_commit_trigger

      # @return [Boolean] The value that indicates whether archiving is enabled
      # or not. Default value: false .
      attr_accessor :is_archive_enabled

      # @return [PlatformProperties] The platform properties against which the
      # build will happen.
      attr_accessor :platform

      # @return [ProvisioningState] The provisioning state of a build. Possible
      # values include: 'Creating', 'Updating', 'Deleting', 'Succeeded',
      # 'Failed', 'Canceled'
      attr_accessor :provisioning_state


      #
      # Mapper for Build class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Build',
          type: {
            name: 'Composite',
            class_name: 'Build',
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
              build_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.buildId',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              last_updated_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastUpdatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              build_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.buildType',
                type: {
                  name: 'String'
                }
              },
              create_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createTime',
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
              finish_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.finishTime',
                type: {
                  name: 'DateTime'
                }
              },
              output_images: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.outputImages',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImageDescriptorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageDescriptor'
                      }
                  }
                }
              },
              build_task: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.buildTask',
                type: {
                  name: 'String'
                }
              },
              image_update_trigger: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.imageUpdateTrigger',
                type: {
                  name: 'Composite',
                  class_name: 'ImageUpdateTrigger'
                }
              },
              git_commit_trigger: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gitCommitTrigger',
                type: {
                  name: 'Composite',
                  class_name: 'GitCommitTrigger'
                }
              },
              is_archive_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isArchiveEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              platform: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.platform',
                type: {
                  name: 'Composite',
                  class_name: 'PlatformProperties'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
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
