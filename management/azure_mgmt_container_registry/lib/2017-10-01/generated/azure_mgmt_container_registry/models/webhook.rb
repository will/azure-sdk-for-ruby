# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # An object that represents a webhook for a container registry.
    #
    class Webhook < Resource

      include MsRestAzure

      # @return [WebhookStatus] The status of the webhook at the time the
      # operation was called. Possible values include: 'enabled', 'disabled'
      attr_accessor :status

      # @return [String] The scope of repositories where the event can be
      # triggered. For example, 'foo:*' means events for all tags under
      # repository 'foo'. 'foo:bar' means events for 'foo:bar' only. 'foo' is
      # equivalent to 'foo:latest'. Empty means all events.
      attr_accessor :scope

      # @return [Array<WebhookAction>] The list of actions that trigger the
      # webhook to post notifications.
      attr_accessor :actions

      # @return [ProvisioningState] The provisioning state of the webhook at
      # the time the operation was called. Possible values include: 'Creating',
      # 'Updating', 'Deleting', 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :provisioning_state


      #
      # Mapper for Webhook class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Webhook',
          type: {
            name: 'Composite',
            class_name: 'Webhook',
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
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scope',
                type: {
                  name: 'String'
                }
              },
              actions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.actions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WebhookActionElementType',
                      type: {
                        name: 'String'
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
