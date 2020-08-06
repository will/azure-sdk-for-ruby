# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_01_31
  module Models
    #
    # An pricesheet resource.
    #
    class PriceSheetResult < Resource

      include MsRestAzure

      # @return [Array<PriceSheetProperties>] Price sheet
      attr_accessor :pricesheets

      # @return [String] The link (url) to the next page of results.
      attr_accessor :next_link


      #
      # Mapper for PriceSheetResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PriceSheetResult',
          type: {
            name: 'Composite',
            class_name: 'PriceSheetResult',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              pricesheets: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.pricesheets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PriceSheetPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PriceSheetProperties'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nextLink',
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
