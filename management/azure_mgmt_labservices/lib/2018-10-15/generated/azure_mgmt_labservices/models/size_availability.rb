# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Represents the size information
    #
    class SizeAvailability

      include MsRestAzure

      # @return [ManagedLabVmSize] The category of the size (Basic, Standard,
      # Performance). Possible values include: 'Basic', 'Standard',
      # 'Performance'
      attr_accessor :size_category

      # @return [Boolean] Whether or not this size category is available
      attr_accessor :is_available


      #
      # Mapper for SizeAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SizeAvailability',
          type: {
            name: 'Composite',
            class_name: 'SizeAvailability',
            model_properties: {
              size_category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sizeCategory',
                type: {
                  name: 'String'
                }
              },
              is_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isAvailable',
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
