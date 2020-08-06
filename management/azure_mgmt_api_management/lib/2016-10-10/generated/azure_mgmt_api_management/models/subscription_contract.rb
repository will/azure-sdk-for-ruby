# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Subscription details.
    #
    class SubscriptionContract

      include MsRestAzure

      # @return [String] Uniquely identifies the subscription within the
      # current API Management service instance. The value is a valid relative
      # URL in the format of /subscriptions/{sid} where {sid} is a subscription
      # identifier.
      attr_accessor :id

      # @return [String] The user resource identifier of the subscription
      # owner. The value is a valid relative URL in the format of /users/{uid}
      # where {uid} is a user identifier.
      attr_accessor :user_id

      # @return [String] The product resource identifier of the subscribed
      # product. The value is a valid relative URL in the format of
      # /products/{productId} where {productId} is a product identifier.
      attr_accessor :product_id

      # @return [String] The name of the subscription, or null if the
      # subscription has no name.
      attr_accessor :name

      # @return [SubscriptionStateContract] Subscription state. Possible states
      # are * active – the subscription is active, * suspended – the
      # subscription is blocked, and the subscriber cannot call any APIs of the
      # product, * submitted – the subscription request has been made by the
      # developer, but has not yet been approved or rejected, * rejected – the
      # subscription request has been denied by an administrator, * cancelled –
      # the subscription has been cancelled by the developer or administrator,
      # * expired – the subscription reached its expiration date and was
      # deactivated. Possible values include: 'Suspended', 'Active', 'Expired',
      # 'Submitted', 'Rejected', 'Cancelled'
      attr_accessor :state

      # @return [DateTime] Subscription creation date. The date conforms to the
      # following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601
      # standard.
      #
      attr_accessor :created_date

      # @return [DateTime] Subscription activation date. The date conforms to
      # the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO
      # 8601 standard.
      #
      attr_accessor :start_date

      # @return [DateTime] Subscription expiration date. The date conforms to
      # the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO
      # 8601 standard.
      #
      attr_accessor :expiration_date

      # @return [DateTime] Date when subscription was cancelled or expired. The
      # date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as
      # specified by the ISO 8601 standard.
      #
      attr_accessor :end_date

      # @return [DateTime] Upcoming subscription expiration notification date.
      # The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as
      # specified by the ISO 8601 standard.
      #
      attr_accessor :notification_date

      # @return [String] Subscription primary key.
      attr_accessor :primary_key

      # @return [String] Subscription secondary key.
      attr_accessor :secondary_key

      # @return [String] Optional subscription comment added by an
      # administrator.
      attr_accessor :state_comment


      #
      # Mapper for SubscriptionContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubscriptionContract',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionContract',
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
              user_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userId',
                type: {
                  name: 'String'
                }
              },
              product_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'productId',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 100,
                  MinLength: 0
                },
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'SubscriptionStateContract'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              start_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startDate',
                type: {
                  name: 'DateTime'
                }
              },
              expiration_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expirationDate',
                type: {
                  name: 'DateTime'
                }
              },
              end_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endDate',
                type: {
                  name: 'DateTime'
                }
              },
              notification_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'notificationDate',
                type: {
                  name: 'DateTime'
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryKey',
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
                serialized_name: 'secondaryKey',
                constraints: {
                  MaxLength: 256,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              state_comment: {
                client_side_validation: true,
                required: false,
                serialized_name: 'stateComment',
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
