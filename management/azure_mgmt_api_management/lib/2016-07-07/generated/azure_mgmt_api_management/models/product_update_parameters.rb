# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the CreateOrUpdate Product operation.
    #
    class ProductUpdateParameters

      include MsRestAzure

      # @return [String] Product name.
      attr_accessor :name

      # @return [String] Product description.
      attr_accessor :description

      # @return [String] Product terms and conditions. Developer will have to
      # accept these terms before he's allowed to call product API.
      attr_accessor :terms

      # @return [Boolean] whether a product subscription is required for
      # accessing APIs included in this product. If true, the product is
      # referred to as "protected" and a valid subscription key is required for
      # a request to an API included in the product to succeed. If false, the
      # product is referred to as "open" and requests to an API included in the
      # product can be made without a subscription key. If property is omitted
      # when creating a new product it's value is assumed to be true.
      attr_accessor :subscription_required

      # @return [Boolean] whether subscription approval is required. If false,
      # new subscriptions will be approved automatically enabling developers to
      # call the product’s APIs immediately after subscribing. If true,
      # administrators must manually approve the subscription before the
      # developer can any of the product’s APIs. Can be present only if
      # subscriptionRequired property is present and has a value of false.
      attr_accessor :approval_required

      # @return [Integer] whether the number of subscriptions a user can have
      # to this product at the same time. Set to null or omit to allow
      # unlimited per user subscriptions. Can be present only if
      # subscriptionRequired property is present and has a value of false.
      attr_accessor :subscriptions_limit

      # @return [ProductStateContract] whether product is published or not.
      # Published products are discoverable by users of developer portal. Non
      # published products are visible only to administrators. Possible values
      # include: 'NotPublished', 'Published'
      attr_accessor :state


      #
      # Mapper for ProductUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProductUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ProductUpdateParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 500,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              terms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'terms',
                type: {
                  name: 'String'
                }
              },
              subscription_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptionRequired',
                type: {
                  name: 'Boolean'
                }
              },
              approval_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'approvalRequired',
                type: {
                  name: 'Boolean'
                }
              },
              subscriptions_limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptionsLimit',
                type: {
                  name: 'Number'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'ProductStateContract'
                }
              }
            }
          }
        }
      end
    end
  end
end
