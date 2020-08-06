# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # This is the disk image base class.
    #
    class GalleryDiskImage

      include MsRestAzure

      # @return [Integer] This property indicates the size of the VHD to be
      # created.
      attr_accessor :size_in_gb

      # @return [HostCaching] The host caching of the disk. Valid values are
      # 'None', 'ReadOnly', and 'ReadWrite'. Possible values include: 'None',
      # 'ReadOnly', 'ReadWrite'
      attr_accessor :host_caching


      #
      # Mapper for GalleryDiskImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryDiskImage',
          type: {
            name: 'Composite',
            class_name: 'GalleryDiskImage',
            model_properties: {
              size_in_gb: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sizeInGB',
                type: {
                  name: 'Number'
                }
              },
              host_caching: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'hostCaching',
                type: {
                  name: 'Enum',
                  module: 'HostCaching'
                }
              }
            }
          }
        }
      end
    end
  end
end
