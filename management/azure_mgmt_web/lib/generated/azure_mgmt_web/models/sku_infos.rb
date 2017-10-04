# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Collection of SKU information.
    #
    class SkuInfos

      include MsRestAzure

      # @return [String] Resource type that this SKU applies to.
      attr_accessor :resource_type

      # @return [Array<GlobalCsmSkuDescription>] List of SKUs the subscription
      # is able to use.
      attr_accessor :skus


      #
      # Mapper for SkuInfos class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SkuInfos',
          type: {
            name: 'Composite',
            class_name: 'SkuInfos',
            model_properties: {
              resource_type: {
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              skus: {
                required: false,
                serialized_name: 'skus',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'GlobalCsmSkuDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GlobalCsmSkuDescription'
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
