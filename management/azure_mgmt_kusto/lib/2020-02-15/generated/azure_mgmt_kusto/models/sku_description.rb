# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_02_15
  module Models
    #
    # The Kusto SKU description of given resource type
    #
    class SkuDescription

      include MsRestAzure

      # @return [String] The resource type
      attr_accessor :resource_type

      # @return [String] The name of the SKU
      attr_accessor :name

      # @return [String] The tier of the SKU
      attr_accessor :tier

      # @return [Array<String>] The set of locations that the SKU is available
      attr_accessor :locations

      # @return [Array<SkuLocationInfoItem>] Locations and zones
      attr_accessor :location_info

      # @return The restrictions because of which SKU cannot be used
      attr_accessor :restrictions


      #
      # Mapper for SkuDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuDescription',
          type: {
            name: 'Composite',
            class_name: 'SkuDescription',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'locations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'locationInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SkuLocationInfoItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SkuLocationInfoItem'
                      }
                  }
                }
              },
              restrictions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'restrictions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
