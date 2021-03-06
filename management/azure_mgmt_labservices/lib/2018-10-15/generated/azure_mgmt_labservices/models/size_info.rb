# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Contains detailed information about a size
    #
    class SizeInfo

      include MsRestAzure

      # @return [String] Represents the actual compute size, e.g.
      # Standard_A2_v2.
      attr_accessor :compute_size

      # @return The pay-as-you-go price per hour this size will cost. It does
      # not include discounts and may not reflect the actual price the size
      # will cost.
      attr_accessor :price

      # @return [Integer] The number of cores a VM of this size has.
      attr_accessor :number_of_cores

      # @return [Float] The amount of memory available (in GB).
      attr_accessor :memory


      #
      # Mapper for SizeInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SizeInfo',
          type: {
            name: 'Composite',
            class_name: 'SizeInfo',
            model_properties: {
              compute_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'computeSize',
                type: {
                  name: 'String'
                }
              },
              price: {
                client_side_validation: true,
                required: false,
                serialized_name: 'price',
                type: {
                  name: 'Number'
                }
              },
              number_of_cores: {
                client_side_validation: true,
                required: false,
                serialized_name: 'numberOfCores',
                type: {
                  name: 'Number'
                }
              },
              memory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'memory',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
