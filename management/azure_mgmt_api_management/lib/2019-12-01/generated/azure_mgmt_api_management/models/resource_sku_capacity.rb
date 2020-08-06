# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Describes scaling information of a SKU.
    #
    class ResourceSkuCapacity

      include MsRestAzure

      # @return [Integer] The minimum capacity.
      attr_accessor :minimum

      # @return [Integer] The maximum capacity that can be set.
      attr_accessor :maximum

      # @return [Integer] The default capacity.
      attr_accessor :default

      # @return [ResourceSkuCapacityScaleType] The scale type applicable to the
      # sku. Possible values include: 'automatic', 'manual', 'none'
      attr_accessor :scale_type


      #
      # Mapper for ResourceSkuCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSkuCapacity',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkuCapacity',
            model_properties: {
              minimum: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                type: {
                  name: 'Number'
                }
              },
              maximum: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Number'
                }
              },
              default: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'default',
                type: {
                  name: 'Number'
                }
              },
              scale_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scaleType',
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
