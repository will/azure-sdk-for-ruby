# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Represents a size category supported by this Lab Account (small, medium
    # or large)
    #
    class EnvironmentSize

      include MsRestAzure

      # @return [ManagedLabVmSize] The size category. Possible values include:
      # 'Basic', 'Standard', 'Performance'
      attr_accessor :name

      # @return [Array<SizeInfo>] Represents a set of compute sizes that can
      # serve this given size type
      attr_accessor :vm_sizes

      # @return The pay-as-you-go dollar price per hour this size will cost. It
      # does not include discounts and may not reflect the actual price the
      # size will cost. This is the maximum price of all prices within this
      # tier.
      attr_accessor :max_price

      # @return [Integer] The number of cores a VM of this size has. This is
      # the minimum number of cores within this tier.
      attr_accessor :min_number_of_cores

      # @return [Float] The amount of memory available (in GB). This is the
      # minimum amount of memory within this tier.
      attr_accessor :min_memory


      #
      # Mapper for EnvironmentSize class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnvironmentSize',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentSize',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              vm_sizes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmSizes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SizeInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SizeInfo'
                      }
                  }
                }
              },
              max_price: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maxPrice',
                type: {
                  name: 'Number'
                }
              },
              min_number_of_cores: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'minNumberOfCores',
                type: {
                  name: 'Number'
                }
              },
              min_memory: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'minMemory',
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
