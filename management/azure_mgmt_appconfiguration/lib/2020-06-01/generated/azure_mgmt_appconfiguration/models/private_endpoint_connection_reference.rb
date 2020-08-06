# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2020_06_01
  module Models
    #
    # A reference to a related private endpoint connection.
    #
    class PrivateEndpointConnectionReference

      include MsRestAzure

      # @return [String] The resource ID.
      attr_accessor :id

      # @return [String] The name of the resource.
      attr_accessor :name

      # @return [String] The type of the resource.
      attr_accessor :type

      # @return [ProvisioningState] The provisioning status of the private
      # endpoint connection. Possible values include: 'Creating', 'Updating',
      # 'Deleting', 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :provisioning_state

      # @return [PrivateEndpoint] The resource of private endpoint.
      attr_accessor :private_endpoint

      # @return [PrivateLinkServiceConnectionState] A collection of information
      # about the state of the connection between service consumer and
      # provider.
      attr_accessor :private_link_service_connection_state


      #
      # Mapper for PrivateEndpointConnectionReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateEndpointConnectionReference',
          type: {
            name: 'Composite',
            class_name: 'PrivateEndpointConnectionReference',
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              private_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateEndpoint'
                }
              },
              private_link_service_connection_state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.privateLinkServiceConnectionState',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateLinkServiceConnectionState'
                }
              }
            }
          }
        }
      end
    end
  end
end
