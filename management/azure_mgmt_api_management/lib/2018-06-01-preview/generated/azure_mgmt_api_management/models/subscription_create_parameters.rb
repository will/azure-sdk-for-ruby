# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Subscription create details.
    #
    class SubscriptionCreateParameters

      include MsRestAzure

      # @return [String] User (user id path) for whom subscription is being
      # created in form /users/{userId}
      attr_accessor :owner_id

      # @return [String] Scope like /products/{productId} or /apis or
      # /apis/{apiId}.
      attr_accessor :scope

      # @return [String] Subscription name.
      attr_accessor :display_name

      # @return [String] Primary subscription key. If not specified during
      # request key will be generated automatically.
      attr_accessor :primary_key

      # @return [String] Secondary subscription key. If not specified during
      # request key will be generated automatically.
      attr_accessor :secondary_key

      # @return [SubscriptionState] Initial subscription state. If no value is
      # specified, subscription is created with Submitted state. Possible
      # states are * active – the subscription is active, * suspended – the
      # subscription is blocked, and the subscriber cannot call any APIs of the
      # product, * submitted – the subscription request has been made by the
      # developer, but has not yet been approved or rejected, * rejected – the
      # subscription request has been denied by an administrator, * cancelled –
      # the subscription has been cancelled by the developer or administrator,
      # * expired – the subscription reached its expiration date and was
      # deactivated. Possible values include: 'suspended', 'active', 'expired',
      # 'submitted', 'rejected', 'cancelled'
      attr_accessor :state

      # @return [Boolean] Determines whether tracing can be enabled
      attr_accessor :allow_tracing


      #
      # Mapper for SubscriptionCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubscriptionCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionCreateParameters',
            model_properties: {
              owner_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ownerId',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.scope',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primaryKey',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secondaryKey',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'SubscriptionState'
                }
              },
              allow_tracing: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowTracing',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
