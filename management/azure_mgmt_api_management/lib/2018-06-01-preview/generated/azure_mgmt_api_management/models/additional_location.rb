# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Description of an additional API Management resource location.
    #
    class AdditionalLocation

      include MsRestAzure

      # @return [String] The location name of the additional region among Azure
      # Data center regions.
      attr_accessor :location

      # @return [ApiManagementServiceSkuProperties] SKU properties of the API
      # Management service.
      attr_accessor :sku

      # @return [Array<String>] Public Static Load Balanced IP addresses of the
      # API Management service in the additional location. Available only for
      # Basic, Standard and Premium SKU.
      attr_accessor :public_ipaddresses

      # @return [Array<String>] Private Static Load Balanced IP addresses of
      # the API Management service which is deployed in an Internal Virtual
      # Network in a particular additional location. Available only for Basic,
      # Standard and Premium SKU.
      attr_accessor :private_ipaddresses

      # @return [VirtualNetworkConfiguration] Virtual network configuration for
      # the location.
      attr_accessor :virtual_network_configuration

      # @return [String] Gateway URL of the API Management service in the
      # Region.
      attr_accessor :gateway_regional_url


      #
      # Mapper for AdditionalLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdditionalLocation',
          type: {
            name: 'Composite',
            class_name: 'AdditionalLocation',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ApiManagementServiceSkuProperties'
                }
              },
              public_ipaddresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'publicIPAddresses',
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
              private_ipaddresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'privateIPAddresses',
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
              virtual_network_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualNetworkConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConfiguration'
                }
              },
              gateway_regional_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'gatewayRegionalUrl',
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
