# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_06_01
  module Models
    #
    # A balance resource.
    #
    class Balance < Resource

      include MsRestAzure

      # @return [String] The ISO currency in which the meter is charged, for
      # example, USD.
      attr_accessor :currency

      # @return The beginning balance for the billing period.
      attr_accessor :beginning_balance

      # @return The ending balance for the billing period (for open periods
      # this will be updated daily).
      attr_accessor :ending_balance

      # @return Total new purchase amount.
      attr_accessor :new_purchases

      # @return Total adjustment amount.
      attr_accessor :adjustments

      # @return Total Commitment usage.
      attr_accessor :utilized

      # @return Overage for Azure services.
      attr_accessor :service_overage

      # @return Charges Billed separately.
      attr_accessor :charges_billed_separately

      # @return serviceOverage + chargesBilledSeparately.
      attr_accessor :total_overage

      # @return Azure service commitment + total Overage.
      attr_accessor :total_usage

      # @return Total charges for Azure Marketplace.
      attr_accessor :azure_marketplace_service_charges

      # @return [BillingFrequency] The billing frequency. Possible values
      # include: 'Month', 'Quarter', 'Year'
      attr_accessor :billing_frequency

      # @return [Boolean] Price is hidden or not.
      attr_accessor :price_hidden

      # @return [Array<BalancePropertiesNewPurchasesDetailsItem>] List of new
      # purchases.
      attr_accessor :new_purchases_details

      # @return [Array<BalancePropertiesAdjustmentDetailsItem>] List of
      # Adjustments (Promo credit, SIE credit etc.).
      attr_accessor :adjustment_details


      #
      # Mapper for Balance class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Balance',
          type: {
            name: 'Composite',
            class_name: 'Balance',
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
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currency',
                type: {
                  name: 'String'
                }
              },
              beginning_balance: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.beginningBalance',
                type: {
                  name: 'Number'
                }
              },
              ending_balance: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endingBalance',
                type: {
                  name: 'Number'
                }
              },
              new_purchases: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.newPurchases',
                type: {
                  name: 'Number'
                }
              },
              adjustments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.adjustments',
                type: {
                  name: 'Number'
                }
              },
              utilized: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.utilized',
                type: {
                  name: 'Number'
                }
              },
              service_overage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceOverage',
                type: {
                  name: 'Number'
                }
              },
              charges_billed_separately: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.chargesBilledSeparately',
                type: {
                  name: 'Number'
                }
              },
              total_overage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.totalOverage',
                type: {
                  name: 'Number'
                }
              },
              total_usage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.totalUsage',
                type: {
                  name: 'Number'
                }
              },
              azure_marketplace_service_charges: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.azureMarketplaceServiceCharges',
                type: {
                  name: 'Number'
                }
              },
              billing_frequency: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.billingFrequency',
                type: {
                  name: 'String'
                }
              },
              price_hidden: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.priceHidden',
                type: {
                  name: 'Boolean'
                }
              },
              new_purchases_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.newPurchasesDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BalancePropertiesNewPurchasesDetailsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BalancePropertiesNewPurchasesDetailsItem'
                      }
                  }
                }
              },
              adjustment_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.adjustmentDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BalancePropertiesAdjustmentDetailsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BalancePropertiesAdjustmentDetailsItem'
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
