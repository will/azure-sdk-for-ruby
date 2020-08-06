# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Describes the gallery unique name.
    #
    class GalleryIdentifier

      include MsRestAzure

      # @return [String] The unique name of the Shared Image Gallery. This name
      # is generated automatically by Azure.
      attr_accessor :unique_name


      #
      # Mapper for GalleryIdentifier class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryIdentifier',
          type: {
            name: 'Composite',
            class_name: 'GalleryIdentifier',
            model_properties: {
              unique_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'uniqueName',
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
