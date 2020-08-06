# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # Constraints that determine the list of available Internet service
    # providers.
    #
    class AvailableProvidersListParameters

      include MsRestAzure

      # @return [Array<String>] A list of Azure regions.
      attr_accessor :azure_locations

      # @return [String] The country for available providers list.
      attr_accessor :country

      # @return [String] The state for available providers list.
      attr_accessor :state

      # @return [String] The city or town for available providers list.
      attr_accessor :city


      #
      # Mapper for AvailableProvidersListParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableProvidersListParameters',
          type: {
            name: 'Composite',
            class_name: 'AvailableProvidersListParameters',
            model_properties: {
              azure_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureLocations',
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
              country: {
                client_side_validation: true,
                required: false,
                serialized_name: 'country',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              city: {
                client_side_validation: true,
                required: false,
                serialized_name: 'city',
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
