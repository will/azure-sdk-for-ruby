# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PowerBiDedicated::Mgmt::V2017_10_01
  module Models
    #
    # Represents an instance of a Dedicated Capacity resource.
    #
    class DedicatedCapacity < Resource

      include MsRestAzure

      # @return [DedicatedCapacityAdministrators] A collection of Dedicated
      # capacity administrators
      attr_accessor :administration

      # @return [State] The current state of PowerBI Dedicated resource. The
      # state is to indicate more states outside of resource provisioning.
      # Possible values include: 'Deleting', 'Succeeded', 'Failed', 'Paused',
      # 'Suspended', 'Provisioning', 'Updating', 'Suspending', 'Pausing',
      # 'Resuming', 'Preparing', 'Scaling'
      attr_accessor :state

      # @return [ProvisioningState] The current deployment state of PowerBI
      # Dedicated resource. The provisioningState is to indicate states for
      # resource provisioning. Possible values include: 'Deleting',
      # 'Succeeded', 'Failed', 'Paused', 'Suspended', 'Provisioning',
      # 'Updating', 'Suspending', 'Pausing', 'Resuming', 'Preparing', 'Scaling'
      attr_accessor :provisioning_state


      #
      # Mapper for DedicatedCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DedicatedCapacity',
          type: {
            name: 'Composite',
            class_name: 'DedicatedCapacity',
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
                  class_name: 'ResourceSku'
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
              administration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.administration',
                type: {
                  name: 'Composite',
                  class_name: 'DedicatedCapacityAdministrators'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
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
              }
            }
          }
        }
      end
    end
  end
end
