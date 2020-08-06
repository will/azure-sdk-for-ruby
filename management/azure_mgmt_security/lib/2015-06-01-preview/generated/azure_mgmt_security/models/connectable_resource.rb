# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Describes the allowed inbound and outbound traffic of an Azure resource
    #
    class ConnectableResource

      include MsRestAzure

      # @return [String] The Azure resource id
      attr_accessor :id

      # @return [Array<ConnectedResource>] The list of Azure resources that the
      # resource has inbound allowed connection from
      attr_accessor :inbound_connected_resources

      # @return [Array<ConnectedResource>] The list of Azure resources that the
      # resource has outbound allowed connection to
      attr_accessor :outbound_connected_resources


      #
      # Mapper for ConnectableResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectableResource',
          type: {
            name: 'Composite',
            class_name: 'ConnectableResource',
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
              inbound_connected_resources: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'inboundConnectedResources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectedResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectedResource'
                      }
                  }
                }
              },
              outbound_connected_resources: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'outboundConnectedResources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectedResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectedResource'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
