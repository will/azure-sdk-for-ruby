# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Describes The SKU capabilities object.
    #
    class ResourceSkuCapabilities

      include MsRestAzure

      # @return [String] An invariant to describe the feature.
      attr_accessor :name

      # @return [String] An invariant if the feature is measured by quantity.
      attr_accessor :value


      #
      # Mapper for ResourceSkuCapabilities class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSkuCapabilities',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkuCapabilities',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
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
