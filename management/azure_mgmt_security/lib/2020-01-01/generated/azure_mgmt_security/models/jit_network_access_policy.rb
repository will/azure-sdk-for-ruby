# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # Model object.
    #
    #
    class JitNetworkAccessPolicy

      include MsRestAzure

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [String] Kind of the resource
      attr_accessor :kind

      # @return [String] Location where the resource is stored
      attr_accessor :location

      # @return [Array<JitNetworkAccessPolicyVirtualMachine>] Configurations
      # for Microsoft.Compute/virtualMachines resource type.
      attr_accessor :virtual_machines

      # @return [Array<JitNetworkAccessRequest>]
      attr_accessor :requests

      # @return [String] Gets the provisioning state of the Just-in-Time
      # policy.
      attr_accessor :provisioning_state


      #
      # Mapper for JitNetworkAccessPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JitNetworkAccessPolicy',
          type: {
            name: 'Composite',
            class_name: 'JitNetworkAccessPolicy',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              virtual_machines: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.virtualMachines',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JitNetworkAccessPolicyVirtualMachineElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JitNetworkAccessPolicyVirtualMachine'
                      }
                  }
                }
              },
              requests: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requests',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JitNetworkAccessRequestElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JitNetworkAccessRequest'
                      }
                  }
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
              }
            }
          }
        }
      end
    end
  end
end
