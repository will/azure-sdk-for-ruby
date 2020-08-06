# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_10_01
  module Models
    #
    # The response containing cached images.
    #
    class CachedImagesListResult

      include MsRestAzure

      # @return [Array<CachedImages>] The list of cached images.
      attr_accessor :value

      # @return [String] The URI to fetch the next page of cached images.
      attr_accessor :next_link


      #
      # Mapper for CachedImagesListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CachedImagesListResult',
          type: {
            name: 'Composite',
            class_name: 'CachedImagesListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CachedImagesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CachedImages'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
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
