# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_06_01
  module Models
    #
    # Model object.
    #
    #
    class PrivateEndpointConnection < Resource

      include MsRestAzure

      # @return [PrivateEndpoint] The Private Endpoint resource for this
      # Connection.
      attr_accessor :private_endpoint

      # @return [Array<String>] GroupIds from the private link service
      # resource.
      attr_accessor :group_ids

      # @return [ConnectionState] Details about the state of the connection.
      attr_accessor :private_link_service_connection_state

      # @return [ResourceProvisioningState] Provisioning state of the Private
      # Endpoint Connection. Possible values include: 'Creating', 'Updating',
      # 'Deleting', 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state


      #
      # Mapper for PrivateEndpointConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateEndpointConnection',
          type: {
            name: 'Composite',
            class_name: 'PrivateEndpointConnection',
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
              private_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateEndpoint'
                }
              },
              group_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.groupIds',
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
              private_link_service_connection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkServiceConnectionState',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionState'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
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
