# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # A custom image.
    #
    class CustomImageFragment < UpdateResource

      include MsRestAzure

      # @return [CustomImagePropertiesFromVmFragment] The virtual machine from
      # which the image is to be created.
      attr_accessor :vm

      # @return [CustomImagePropertiesCustomFragment] The VHD from which the
      # image is to be created.
      attr_accessor :vhd

      # @return [String] The description of the custom image.
      attr_accessor :description

      # @return [String] The author of the custom image.
      attr_accessor :author

      # @return [String] The Managed Image Id backing the custom image.
      attr_accessor :managed_image_id

      # @return [String] The Managed Snapshot Id backing the custom image.
      attr_accessor :managed_snapshot_id

      # @return [Array<DataDiskStorageTypeInfoFragment>] Storage information
      # about the data disks present in the custom image
      attr_accessor :data_disk_storage_info

      # @return [CustomImagePropertiesFromPlanFragment] Storage information
      # about the plan related to this custom image
      attr_accessor :custom_image_plan

      # @return [Boolean] Whether or not the custom images underlying
      # offer/plan has been enabled for programmatic deployment
      attr_accessor :is_plan_authorized


      #
      # Mapper for CustomImageFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomImageFragment',
          type: {
            name: 'Composite',
            class_name: 'CustomImageFragment',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vm',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesFromVmFragment'
                }
              },
              vhd: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vhd',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesCustomFragment'
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
              author: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.author',
                type: {
                  name: 'String'
                }
              },
              managed_image_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managedImageId',
                type: {
                  name: 'String'
                }
              },
              managed_snapshot_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managedSnapshotId',
                type: {
                  name: 'String'
                }
              },
              data_disk_storage_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataDiskStorageInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataDiskStorageTypeInfoFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataDiskStorageTypeInfoFragment'
                      }
                  }
                }
              },
              custom_image_plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customImagePlan',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesFromPlanFragment'
                }
              },
              is_plan_authorized: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isPlanAuthorized',
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
