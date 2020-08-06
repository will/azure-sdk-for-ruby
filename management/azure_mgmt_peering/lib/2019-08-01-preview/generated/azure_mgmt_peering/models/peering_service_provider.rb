# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  module Models
    #
    # PeeringService provider
    #
    class PeeringServiceProvider < Resource

      include MsRestAzure

      # @return [String] The name of the service provider.
      attr_accessor :service_provider_name


      #
      # Mapper for PeeringServiceProvider class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PeeringServiceProvider',
          type: {
            name: 'Composite',
            class_name: 'PeeringServiceProvider',
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
              service_provider_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderName',
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
