# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # TagResource contract properties.
    #
    class TagResourceContract

      include MsRestAzure

      # @return [TagTagResourceContractProperties] Tag associated with the
      # resource.
      attr_accessor :tag

      # @return [ApiTagResourceContractProperties] Api associated with the tag.
      attr_accessor :api

      # @return [OperationTagResourceContractProperties] Operation associated
      # with the tag.
      attr_accessor :operation

      # @return [ProductTagResourceContractProperties] Product associated with
      # the tag.
      attr_accessor :product


      #
      # Mapper for TagResourceContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagResourceContract',
          type: {
            name: 'Composite',
            class_name: 'TagResourceContract',
            model_properties: {
              tag: {
                client_side_validation: true,
                required: true,
                serialized_name: 'tag',
                type: {
                  name: 'Composite',
                  class_name: 'TagTagResourceContractProperties'
                }
              },
              api: {
                client_side_validation: true,
                required: false,
                serialized_name: 'api',
                type: {
                  name: 'Composite',
                  class_name: 'ApiTagResourceContractProperties'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'Composite',
                  class_name: 'OperationTagResourceContractProperties'
                }
              },
              product: {
                client_side_validation: true,
                required: false,
                serialized_name: 'product',
                type: {
                  name: 'Composite',
                  class_name: 'ProductTagResourceContractProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
