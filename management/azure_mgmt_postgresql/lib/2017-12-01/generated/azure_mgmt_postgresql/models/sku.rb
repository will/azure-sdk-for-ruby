# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Postgresql::Mgmt::V2017_12_01
  module Models
    #
    # Billing information related properties of a server.
    #
    class Sku

      include MsRestAzure

      # @return [String] The name of the sku, typically, tier + family + cores,
      # e.g. B_Gen4_1, GP_Gen5_8.
      attr_accessor :name

      # @return [SkuTier] The tier of the particular SKU, e.g. Basic. Possible
      # values include: 'Basic', 'GeneralPurpose', 'MemoryOptimized'
      attr_accessor :tier

      # @return [Integer] The scale up/out capacity, representing server's
      # compute units.
      attr_accessor :capacity

      # @return [String] The size code, to be interpreted by resource as
      # appropriate.
      attr_accessor :size

      # @return [String] The family of hardware.
      attr_accessor :family


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'String'
                }
              },
              family: {
                client_side_validation: true,
                required: false,
                serialized_name: 'family',
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
