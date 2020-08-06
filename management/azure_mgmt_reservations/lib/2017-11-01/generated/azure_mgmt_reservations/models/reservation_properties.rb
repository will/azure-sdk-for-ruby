# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2017_11_01
  module Models
    #
    # Model object.
    #
    #
    class ReservationProperties

      include MsRestAzure

      # @return [String] Friendly name for user to easily identify the
      # reservation
      attr_accessor :display_name

      # @return [Array<String>]
      attr_accessor :applied_scopes

      # @return [Enum] Possible values include: 'Single', 'Shared'
      attr_accessor :applied_scope_type

      # @return [Integer] Quantity of the SKUs that are part of the
      # Reservation.
      attr_accessor :quantity

      # @return [Enum] Possible values include: 'Creating',
      # 'PendingResourceHold', 'ConfirmedResourceHold', 'PendingBilling',
      # 'ConfirmedBilling', 'Created', 'Succeeded', 'Cancelled', 'Expired',
      # 'BillingFailed', 'Failed', 'Split', 'Merged'
      attr_accessor :provisioning_state

      # @return [DateTime] DateTime of the Reservation starting when this
      # version is effective from.
      attr_accessor :effective_date_time

      # @return [DateTime] DateTime of the last time the Reservation was
      # updated.
      attr_accessor :last_updated_date_time

      # @return [Date] This is the date when the Reservation will expire.
      attr_accessor :expiry_date

      # @return [ExtendedStatusInfo]
      attr_accessor :extended_status_info

      # @return [ReservationSplitProperties]
      attr_accessor :split_properties

      # @return [ReservationMergeProperties]
      attr_accessor :merge_properties


      #
      # Mapper for ReservationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReservationProperties',
          type: {
            name: 'Composite',
            class_name: 'ReservationProperties',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              applied_scopes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appliedScopes',
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
              applied_scope_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appliedScopeType',
                type: {
                  name: 'String'
                }
              },
              quantity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'quantity',
                type: {
                  name: 'Number'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              effective_date_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'effectiveDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_updated_date_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastUpdatedDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              expiry_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expiryDate',
                type: {
                  name: 'Date'
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
              },
              split_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'splitProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ReservationSplitProperties'
                }
              },
              merge_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mergeProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ReservationMergeProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
