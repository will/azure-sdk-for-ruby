# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MixedReality::Mgmt::V2019_02_28_preview
  module Models
    #
    # SpatialAnchorsAccount Response.
    #
    class SpatialAnchorsAccount < TrackedResource

      include MsRestAzure

      # @return [String] unique id of certain Spatial Anchors Account data
      # contract.
      attr_accessor :account_id

      # @return [String] Correspond domain name of certain Spatial Anchors
      # Account
      attr_accessor :account_domain


      #
      # Mapper for SpatialAnchorsAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SpatialAnchorsAccount',
          type: {
            name: 'Composite',
            class_name: 'SpatialAnchorsAccount',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accountId',
                type: {
                  name: 'String'
                }
              },
              account_domain: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accountDomain',
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
