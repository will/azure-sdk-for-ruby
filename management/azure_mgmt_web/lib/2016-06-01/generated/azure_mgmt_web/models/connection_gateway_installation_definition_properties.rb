# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_06_01
  module Models
    #
    # Model object.
    #
    #
    class ConnectionGatewayInstallationDefinitionProperties

      include MsRestAzure

      # @return [ConnectionGatewayReference]
      attr_accessor :connection_gateway

      # @return [Array<String>] The gateway admin
      attr_accessor :contact_information

      # @return [String] The gateway display name
      attr_accessor :display_name

      # @return [String] The gateway description
      attr_accessor :description

      # @return [String] The machine name of the gateway
      attr_accessor :machine_name

      # @return The gateway status
      attr_accessor :status

      # @return [String] The URI of the backend
      attr_accessor :backend_uri


      #
      # Mapper for ConnectionGatewayInstallationDefinitionProperties class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionGatewayInstallationDefinition_properties',
          type: {
            name: 'Composite',
            class_name: 'ConnectionGatewayInstallationDefinitionProperties',
            model_properties: {
              connection_gateway: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectionGateway',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionGatewayReference'
                }
              },
              contact_information: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contactInformation',
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
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              machine_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'machineName',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Object'
                }
              },
              backend_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backendUri',
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
