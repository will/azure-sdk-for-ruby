# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Product details.
    #
    class ProductContract < Resource

      include MsRestAzure

      # @return [String] Product description. May include HTML formatting tags.
      attr_accessor :description

      # @return [String] Product terms of use. Developers trying to subscribe
      # to the product will be presented and required to accept these terms
      # before they can complete the subscription process.
      attr_accessor :terms

      # @return [Boolean] Whether a product subscription is required for
      # accessing APIs included in this product. If true, the product is
      # referred to as "protected" and a valid subscription key is required for
      # a request to an API included in the product to succeed. If false, the
      # product is referred to as "open" and requests to an API included in the
      # product can be made without a subscription key. If property is omitted
      # when creating a new product it's value is assumed to be true.
      attr_accessor :subscription_required

      # @return [Boolean] whether subscription approval is required. If false,
      # new subscriptions will be approved automatically enabling developers to
      # call the product’s APIs immediately after subscribing. If true,
      # administrators must manually approve the subscription before the
      # developer can any of the product’s APIs. Can be present only if
      # subscriptionRequired property is present and has a value of false.
      attr_accessor :approval_required

      # @return [Integer] Whether the number of subscriptions a user can have
      # to this product at the same time. Set to null or omit to allow
      # unlimited per user subscriptions. Can be present only if
      # subscriptionRequired property is present and has a value of false.
      attr_accessor :subscriptions_limit

      # @return [ProductState] whether product is published or not. Published
      # products are discoverable by users of developer portal. Non published
      # products are visible only to administrators. Default state of Product
      # is notPublished. Possible values include: 'notPublished', 'published'
      attr_accessor :state

      # @return [String] Product name.
      attr_accessor :display_name


      #
      # Mapper for ProductContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProductContract',
          type: {
            name: 'Composite',
            class_name: 'ProductContract',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                constraints: {
                  MaxLength: 1000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              terms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.terms',
                type: {
                  name: 'String'
                }
              },
              subscription_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subscriptionRequired',
                type: {
                  name: 'Boolean'
                }
              },
              approval_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.approvalRequired',
                type: {
                  name: 'Boolean'
                }
              },
              subscriptions_limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subscriptionsLimit',
                type: {
                  name: 'Number'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'ProductState'
                }
              },
              display_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
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
