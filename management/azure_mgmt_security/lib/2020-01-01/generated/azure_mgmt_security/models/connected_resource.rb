# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # Describes properties of a connected resource
    #
    class ConnectedResource

      include MsRestAzure

      # @return [String] The Azure resource id of the connected resource
      attr_accessor :connected_resource_id

      # @return [String] The allowed tcp ports
      attr_accessor :tcp_ports

      # @return [String] The allowed udp ports
      attr_accessor :udp_ports


      #
      # Mapper for ConnectedResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectedResource',
          type: {
            name: 'Composite',
            class_name: 'ConnectedResource',
            model_properties: {
              connected_resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'connectedResourceId',
                type: {
                  name: 'String'
                }
              },
              tcp_ports: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tcpPorts',
                type: {
                  name: 'String'
                }
              },
              udp_ports: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'udpPorts',
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
