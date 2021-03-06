# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # This is the storage profile of a Gallery Image Version.
    #
    class GalleryImageVersionStorageProfile

      include MsRestAzure

      # @return [GalleryArtifactVersionSource]
      attr_accessor :source

      # @return [GalleryOSDiskImage]
      attr_accessor :os_disk_image

      # @return [Array<GalleryDataDiskImage>] A list of data disk images.
      attr_accessor :data_disk_images


      #
      # Mapper for GalleryImageVersionStorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryImageVersionStorageProfile',
          type: {
            name: 'Composite',
            class_name: 'GalleryImageVersionStorageProfile',
            model_properties: {
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryArtifactVersionSource'
                }
              },
              os_disk_image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osDiskImage',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryOSDiskImage'
                }
              },
              data_disk_images: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataDiskImages',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GalleryDataDiskImageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GalleryDataDiskImage'
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
