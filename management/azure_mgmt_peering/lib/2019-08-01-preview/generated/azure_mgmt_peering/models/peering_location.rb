# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  module Models
    #
    # Peering location is where connectivity could be established to the
    # Microsoft Cloud Edge.
    #
    class PeeringLocation < Resource

      include MsRestAzure

      # @return [Kind] The kind of peering that the peering location supports.
      # Possible values include: 'Direct', 'Exchange'
      attr_accessor :kind

      # @return [PeeringLocationPropertiesDirect] The properties that define a
      # direct peering location.
      attr_accessor :direct

      # @return [PeeringLocationPropertiesExchange] The properties that define
      # an exchange peering location.
      attr_accessor :exchange

      # @return [String] The name of the peering location.
      attr_accessor :peering_location

      # @return [String] The country in which the peering location exists.
      attr_accessor :country

      # @return [String] The Azure region associated with the peering location.
      attr_accessor :azure_region


      #
      # Mapper for PeeringLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PeeringLocation',
          type: {
            name: 'Composite',
            class_name: 'PeeringLocation',
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
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              direct: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.direct',
                type: {
                  name: 'Composite',
                  class_name: 'PeeringLocationPropertiesDirect'
                }
              },
              exchange: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.exchange',
                type: {
                  name: 'Composite',
                  class_name: 'PeeringLocationPropertiesExchange'
                }
              },
              peering_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringLocation',
                type: {
                  name: 'String'
                }
              },
              country: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.country',
                type: {
                  name: 'String'
                }
              },
              azure_region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureRegion',
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
