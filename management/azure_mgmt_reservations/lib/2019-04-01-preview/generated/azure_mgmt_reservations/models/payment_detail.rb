# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_04_01_preview
  module Models
    #
    # Information about payment related to a reservation order.
    #
    class PaymentDetail

      include MsRestAzure

      # @return [Date] Date when the payment needs to be done.
      attr_accessor :due_date

      # @return [Date] Date when the transaction is completed. Is null when it
      # is scheduled.
      attr_accessor :payment_date

      # @return [Price] Amount in pricing currency. Tax not included.
      attr_accessor :pricing_currency_total

      # @return [Price] Amount charged in Billing currency. Tax not included.
      # Is null for future payments
      attr_accessor :billing_currency_total

      # @return [String] Shows the Account that is charged for this payment.
      attr_accessor :billing_account

      # @return [PaymentStatus] Possible values include: 'Succeeded', 'Failed',
      # 'Scheduled', 'Cancelled'
      attr_accessor :status

      # @return [ExtendedStatusInfo]
      attr_accessor :extended_status_info


      #
      # Mapper for PaymentDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PaymentDetail',
          type: {
            name: 'Composite',
            class_name: 'PaymentDetail',
            model_properties: {
              due_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dueDate',
                type: {
                  name: 'Date'
                }
              },
              payment_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'paymentDate',
                type: {
                  name: 'Date'
                }
              },
              pricing_currency_total: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pricingCurrencyTotal',
                type: {
                  name: 'Composite',
                  class_name: 'Price'
                }
              },
              billing_currency_total: {
                client_side_validation: true,
                required: false,
                serialized_name: 'billingCurrencyTotal',
                type: {
                  name: 'Composite',
                  class_name: 'Price'
                }
              },
              billing_account: {
                client_side_validation: true,
                required: false,
                serialized_name: 'billingAccount',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              extended_status_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedStatusInfo',
                type: {
                  name: 'Composite',
                  class_name: 'ExtendedStatusInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
