# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_11_01_preview
  module Models
    #
    # An event summary resource.
    #
    class EventSummary < Resource

      include MsRestAzure

      # @return [DateTime] Transaction Date.
      attr_accessor :transaction_date

      # @return [String] Transaction description.
      attr_accessor :description

      # @return [Amount] New Credit.
      attr_accessor :new_credit

      # @return [Amount] Credit Adjustments.
      attr_accessor :adjustments

      # @return [Amount] Credit Expired.
      attr_accessor :credit_expired

      # @return [Amount] Credit Eligible Charges.
      attr_accessor :charges

      # @return [Amount] Closed Balance.
      attr_accessor :closed_balance

      # @return [EventType] The type of event. Possible values include:
      # 'NewCredit', 'ExpiredCredit', 'SettledCharges'
      attr_accessor :event_type

      # @return [String] Invoice Number.
      attr_accessor :invoice_number


      #
      # Mapper for EventSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSummary',
          type: {
            name: 'Composite',
            class_name: 'EventSummary',
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
              transaction_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.transactionDate',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              new_credit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.newCredit',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              adjustments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.adjustments',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              credit_expired: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creditExpired',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              charges: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.charges',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              closed_balance: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.closedBalance',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              event_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eventType',
                type: {
                  name: 'String'
                }
              },
              invoice_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.invoiceNumber',
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
