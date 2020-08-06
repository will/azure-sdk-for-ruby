# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_05_01_preview
  module Models
    #
    # The Resource model definition.
    #
    class ResourceAttributes

      include MsRestAzure

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource sku
      attr_accessor :sku


      #
      # Mapper for ResourceAttributes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceAttributes',
          type: {
            name: 'Composite',
            class_name: 'ResourceAttributes',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sku',
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
