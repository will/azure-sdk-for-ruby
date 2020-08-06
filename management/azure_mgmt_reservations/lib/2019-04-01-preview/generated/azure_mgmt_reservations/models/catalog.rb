# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_04_01_preview
  module Models
    #
    # Model object.
    #
    #
    class Catalog

      include MsRestAzure

      # @return [String] The type of resource the SKU applies to.
      attr_accessor :resource_type

      # @return [String] The name of SKU
      attr_accessor :name

      # @return [Hash{String => Array<ReservationBillingPlan>}] The billing
      # plan options available for this SKU.
      attr_accessor :billing_plans

      # @return [Array<ReservationTerm>] Available reservation terms for this
      # resource
      attr_accessor :terms

      # @return [Array<String>]
      attr_accessor :locations

      # @return [Array<SkuProperty>]
      attr_accessor :sku_properties

      # @return [Array<SkuRestriction>]
      attr_accessor :restrictions


      #
      # Mapper for Catalog class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Catalog',
          type: {
            name: 'Composite',
            class_name: 'Catalog',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
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
              billing_plans: {
                client_side_validation: true,
                required: false,
                serialized_name: 'billingPlans',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'ReservationBillingPlanElementType',
                            type: {
                              name: 'String'
                            }
                        }
                      }
                  }
                }
              },
              terms: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'terms',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReservationTermElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'locations',
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
              sku_properties: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'skuProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SkuPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SkuProperty'
                      }
                  }
                }
              },
              restrictions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'restrictions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SkuRestrictionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SkuRestriction'
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
