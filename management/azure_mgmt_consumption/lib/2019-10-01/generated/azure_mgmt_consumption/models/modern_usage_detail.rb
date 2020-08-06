# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  module Models
    #
    # Modern usage detail.
    #
    class ModernUsageDetail < UsageDetail

      include MsRestAzure


      def initialize
        @kind = "modern"
      end

      attr_accessor :kind

      # @return [String] Billing Account identifier.
      attr_accessor :billing_account_id

      # @return [String] Name of the Billing Account.
      attr_accessor :billing_account_name

      # @return [DateTime] Billing Period Start Date as in the invoice.
      attr_accessor :billing_period_start_date

      # @return [DateTime] Billing Period End Date as in the invoice.
      attr_accessor :billing_period_end_date

      # @return [String] Identifier for the billing profile that groups costs
      # across invoices in the a singular billing currency across across the
      # customers who have onboarded the Microsoft customer agreement and the
      # customers in CSP who have made entitlement purchases like SaaS,
      # Marketplace, RI, etc.
      attr_accessor :billing_profile_id

      # @return [String] Name of the billing profile that groups costs across
      # invoices in the a singular billing currency across across the customers
      # who have onboarded the Microsoft customer agreement and the customers
      # in CSP who have made entitlement purchases like SaaS, Marketplace, RI,
      # etc.
      attr_accessor :billing_profile_name

      # @return [String] Unique Microsoft generated identifier for the Azure
      # Subscription.
      attr_accessor :subscription_guid

      # @return [String] Name of the Azure Subscription.
      attr_accessor :subscription_name

      # @return [DateTime] Date for the usage record.
      attr_accessor :date

      # @return [String] Name of the product that has accrued charges by
      # consumption or purchase as listed in the invoice. Not available for
      # Marketplace.
      attr_accessor :product

      # @return The meter id (GUID). Not available for marketplace. For
      # reserved instance this represents the primary meter for which the
      # reservation was purchased. For the actual VM Size for which the
      # reservation is purchased see productOrderName.
      attr_accessor :meter_id

      # @return [String] Identifies the name of the meter against which
      # consumption is measured.
      attr_accessor :meter_name

      # @return [String] Identifies the location of the datacenter for certain
      # services that are priced based on datacenter location.
      attr_accessor :meter_region

      # @return [String] Identifies the top-level service for the usage.
      attr_accessor :meter_category

      # @return [String] Defines the type or sub-category of Azure service that
      # can affect the rate.
      attr_accessor :meter_sub_category

      # @return [String] List the service family for the product purchased or
      # charged (Example: Storage ; Compute).
      attr_accessor :service_family

      # @return Measure the quantity purchased or consumed.The amount of the
      # meter used during the billing period.
      attr_accessor :quantity

      # @return [String] Identifies the Unit that the service is charged in.
      # For example, GB, hours, 10,000 s.
      attr_accessor :unit_of_measure

      # @return [String] Instance Name.
      attr_accessor :instance_name

      # @return Estimated extendedCost or blended cost before tax in USD.
      attr_accessor :cost_in_usd

      # @return Unit Price is the price applicable to you. (your EA or other
      # contract price).
      attr_accessor :unit_price

      # @return [String] The currency defining the billed cost.
      attr_accessor :billing_currency_code

      # @return [String] Name of the resource location.
      attr_accessor :resource_location

      # @return [String] Consumed service name. Name of the azure resource
      # provider that emits the usage or was purchased. This value is not
      # provided for marketplace usage.
      attr_accessor :consumed_service

      # @return [String] Service Info 1.
      attr_accessor :service_info1

      # @return [String] Service Info 2.
      attr_accessor :service_info2

      # @return [String] Additional details of this usage item. Use this field
      # to get usage line item specific details such as the actual VM Size
      # (ServiceType) or the ratio in which the reservation discount is
      # applied.
      attr_accessor :additional_info

      # @return [String] Identifier of the project that is being charged in the
      # invoice. Not applicable for Microsoft Customer Agreements onboarded by
      # partners.
      attr_accessor :invoice_section_id

      # @return [String] Name of the project that is being charged in the
      # invoice. Not applicable for Microsoft Customer Agreements onboarded by
      # partners.
      attr_accessor :invoice_section_name

      # @return [String] The cost center of this department if it is a
      # department and a cost center is provided.
      attr_accessor :cost_center

      # @return [String] Name of the Azure resource group used for cohesive
      # lifecycle management of resources.
      attr_accessor :resource_group

      # @return [String] ARM resource id of the reservation. Only applies to
      # records relevant to reservations.
      attr_accessor :reservation_id

      # @return [String] User provided display name of the reservation. Last
      # known name for a particular day is populated in the daily data. Only
      # applies to records relevant to reservations.
      attr_accessor :reservation_name

      # @return [String] The identifier for the asset or Azure plan name that
      # the subscription belongs to. For example: Azure Plan. For reservations
      # this is the Reservation Order ID.
      attr_accessor :product_order_id

      # @return [String] Product Order Name. For reservations this is the SKU
      # that was purchased.
      attr_accessor :product_order_name

      # @return [Boolean] Determines if the cost is eligible to be paid for
      # using Azure credits.
      attr_accessor :is_azure_credit_eligible

      # @return [String] Term (in months). Displays the term for the validity
      # of the offer. For example. In case of reserved instances it displays 12
      # months for yearly term of reserved instance. For one time purchases or
      # recurring purchases, the terms displays 1 month; This is not applicable
      # for Azure consumption.
      attr_accessor :term

      # @return [String] Name of the publisher of the service including
      # Microsoft or Third Party publishers.
      attr_accessor :publisher_name

      # @return [String] Type of publisher that identifies if the publisher is
      # first party, third party reseller or third party agency.
      attr_accessor :publisher_type

      # @return [String] Indicates a charge represents credits, usage, a
      # Marketplace purchase, a reservation fee, or a refund.
      attr_accessor :charge_type

      # @return [String] Indicates how frequently this charge will occur.
      # OneTime for purchases which only happen once, Monthly for fees which
      # recur every month, and UsageBased for charges based on how much a
      # service is used.
      attr_accessor :frequency

      # @return ExtendedCost or blended cost before tax in billed currency.
      attr_accessor :cost_in_billing_currency

      # @return ExtendedCost or blended cost before tax in pricing currency to
      # correlate with prices.
      attr_accessor :cost_in_pricing_currency

      # @return [String] Exchange rate used in conversion from pricing currency
      # to billing currency.
      attr_accessor :exchange_rate

      # @return [DateTime] Date on which exchange rate used in conversion from
      # pricing currency to billing currency.
      attr_accessor :exchange_rate_date

      # @return [String] Invoice ID as on the invoice where the specific
      # transaction appears.
      attr_accessor :invoice_id

      # @return [String] Reference to an original invoice there is a refund
      # (negative cost). This is populated only when there is a refund.
      attr_accessor :previous_invoice_id

      # @return [String] Pricing Billing Currency.
      attr_accessor :pricing_currency_code

      # @return [String] Identifer for the product that has accrued charges by
      # consumption or purchase . This is the concatenated key of productId and
      # SKuId in partner center.
      attr_accessor :product_identifier

      # @return [String] Resource Location Normalized.
      attr_accessor :resource_location_normalized

      # @return [DateTime] Start date for the rating period when the service
      # usage was rated for charges. The prices for Azure services are
      # determined for the rating period.
      attr_accessor :service_period_start_date

      # @return [DateTime] End date for the period when the service usage was
      # rated for charges. The prices for Azure services are determined based
      # on the rating period.
      attr_accessor :service_period_end_date

      # @return [String] Identifier of the customer's AAD tenant.
      attr_accessor :customer_tenant_id

      # @return [String] Name of the customer's AAD tenant.
      attr_accessor :customer_name

      # @return [String] Identifier for the partner's AAD tenant.
      attr_accessor :partner_tenant_id

      # @return [String] Name of the partner' AAD tenant.
      attr_accessor :partner_name

      # @return [String] MPNId for the reseller associated with the
      # subscription.
      attr_accessor :reseller_mpn_id

      # @return [String] Reseller Name.
      attr_accessor :reseller_name

      # @return [String] Publisher Id.
      attr_accessor :publisher_id

      # @return Market Price that's charged for the usage.
      attr_accessor :market_price

      # @return Exchange Rate from pricing currency to billing currency.
      attr_accessor :exchange_rate_pricing_to_billing

      # @return The amount of PayG cost before tax in billing currency.
      attr_accessor :payg_cost_in_billing_currency

      # @return The amount of PayG cost before tax in US Dollar currency.
      attr_accessor :payg_cost_in_usd

      # @return Rate of discount applied if there is a partner earned credit
      # (PEC) based on partner admin link access.
      attr_accessor :partner_earned_credit_rate

      # @return [String] Flag to indicate if partner earned credit has been
      # applied or not.
      attr_accessor :partner_earned_credit_applied


      #
      # Mapper for ModernUsageDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'modern',
          type: {
            name: 'Composite',
            class_name: 'ModernUsageDetail',
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
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              billing_account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingAccountId',
                type: {
                  name: 'String'
                }
              },
              billing_account_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingAccountName',
                type: {
                  name: 'String'
                }
              },
              billing_period_start_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodStartDate',
                type: {
                  name: 'DateTime'
                }
              },
              billing_period_end_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodEndDate',
                type: {
                  name: 'DateTime'
                }
              },
              billing_profile_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingProfileId',
                type: {
                  name: 'String'
                }
              },
              billing_profile_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingProfileName',
                type: {
                  name: 'String'
                }
              },
              subscription_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionGuid',
                type: {
                  name: 'String'
                }
              },
              subscription_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionName',
                type: {
                  name: 'String'
                }
              },
              date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.date',
                type: {
                  name: 'DateTime'
                }
              },
              product: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.product',
                type: {
                  name: 'String'
                }
              },
              meter_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterId',
                type: {
                  name: 'String'
                }
              },
              meter_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterName',
                type: {
                  name: 'String'
                }
              },
              meter_region: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterRegion',
                type: {
                  name: 'String'
                }
              },
              meter_category: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterCategory',
                type: {
                  name: 'String'
                }
              },
              meter_sub_category: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterSubCategory',
                type: {
                  name: 'String'
                }
              },
              service_family: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceFamily',
                type: {
                  name: 'String'
                }
              },
              quantity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.quantity',
                type: {
                  name: 'Number'
                }
              },
              unit_of_measure: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.unitOfMeasure',
                type: {
                  name: 'String'
                }
              },
              instance_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceName',
                type: {
                  name: 'String'
                }
              },
              cost_in_usd: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.costInUSD',
                type: {
                  name: 'Number'
                }
              },
              unit_price: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.unitPrice',
                type: {
                  name: 'Number'
                }
              },
              billing_currency_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingCurrencyCode',
                type: {
                  name: 'String'
                }
              },
              resource_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceLocation',
                type: {
                  name: 'String'
                }
              },
              consumed_service: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.consumedService',
                type: {
                  name: 'String'
                }
              },
              service_info1: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceInfo1',
                type: {
                  name: 'String'
                }
              },
              service_info2: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceInfo2',
                type: {
                  name: 'String'
                }
              },
              additional_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.additionalInfo',
                type: {
                  name: 'String'
                }
              },
              invoice_section_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.invoiceSectionId',
                type: {
                  name: 'String'
                }
              },
              invoice_section_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.invoiceSectionName',
                type: {
                  name: 'String'
                }
              },
              cost_center: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.costCenter',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              reservation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservationId',
                type: {
                  name: 'String'
                }
              },
              reservation_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservationName',
                type: {
                  name: 'String'
                }
              },
              product_order_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.productOrderId',
                type: {
                  name: 'String'
                }
              },
              product_order_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.productOrderName',
                type: {
                  name: 'String'
                }
              },
              is_azure_credit_eligible: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isAzureCreditEligible',
                type: {
                  name: 'Boolean'
                }
              },
              term: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.term',
                type: {
                  name: 'String'
                }
              },
              publisher_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publisherName',
                type: {
                  name: 'String'
                }
              },
              publisher_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publisherType',
                type: {
                  name: 'String'
                }
              },
              charge_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.chargeType',
                type: {
                  name: 'String'
                }
              },
              frequency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.frequency',
                type: {
                  name: 'String'
                }
              },
              cost_in_billing_currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.costInBillingCurrency',
                type: {
                  name: 'Number'
                }
              },
              cost_in_pricing_currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.costInPricingCurrency',
                type: {
                  name: 'Number'
                }
              },
              exchange_rate: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.exchangeRate',
                type: {
                  name: 'String'
                }
              },
              exchange_rate_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.exchangeRateDate',
                type: {
                  name: 'DateTime'
                }
              },
              invoice_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.invoiceId',
                type: {
                  name: 'String'
                }
              },
              previous_invoice_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.previousInvoiceId',
                type: {
                  name: 'String'
                }
              },
              pricing_currency_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.pricingCurrencyCode',
                type: {
                  name: 'String'
                }
              },
              product_identifier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.productIdentifier',
                type: {
                  name: 'String'
                }
              },
              resource_location_normalized: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceLocationNormalized',
                type: {
                  name: 'String'
                }
              },
              service_period_start_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.servicePeriodStartDate',
                type: {
                  name: 'DateTime'
                }
              },
              service_period_end_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.servicePeriodEndDate',
                type: {
                  name: 'DateTime'
                }
              },
              customer_tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.customerTenantId',
                type: {
                  name: 'String'
                }
              },
              customer_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.customerName',
                type: {
                  name: 'String'
                }
              },
              partner_tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerTenantId',
                type: {
                  name: 'String'
                }
              },
              partner_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerName',
                type: {
                  name: 'String'
                }
              },
              reseller_mpn_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resellerMpnId',
                type: {
                  name: 'String'
                }
              },
              reseller_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resellerName',
                type: {
                  name: 'String'
                }
              },
              publisher_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publisherId',
                type: {
                  name: 'String'
                }
              },
              market_price: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.marketPrice',
                type: {
                  name: 'Number'
                }
              },
              exchange_rate_pricing_to_billing: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.exchangeRatePricingToBilling',
                type: {
                  name: 'Number'
                }
              },
              payg_cost_in_billing_currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.paygCostInBillingCurrency',
                type: {
                  name: 'Number'
                }
              },
              payg_cost_in_usd: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.paygCostInUSD',
                type: {
                  name: 'Number'
                }
              },
              partner_earned_credit_rate: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerEarnedCreditRate',
                type: {
                  name: 'Number'
                }
              },
              partner_earned_credit_applied: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerEarnedCreditApplied',
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
