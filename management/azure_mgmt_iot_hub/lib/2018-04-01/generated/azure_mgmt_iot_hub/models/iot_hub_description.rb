# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_04_01
  module Models
    #
    # The description of the IoT hub.
    #
    class IotHubDescription < Resource

      include MsRestAzure

      # @return [String] The Etag field is *not* required. If it is provided in
      # the response body, it must also be provided as a header per the normal
      # ETag convention.
      attr_accessor :etag

      # @return [IotHubProperties] IotHub properties
      attr_accessor :properties

      # @return [IotHubSkuInfo] IotHub SKU info
      attr_accessor :sku


      #
      # Mapper for IotHubDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotHubDescription',
          type: {
            name: 'Composite',
            class_name: 'IotHubDescription',
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
                constraints: {
                  Pattern: '^(?![0-9]+$)(?!-)[a-zA-Z0-9-]{2,49}[a-zA-Z0-9]$'
                },
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
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
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'IotHubProperties'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'IotHubSkuInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
