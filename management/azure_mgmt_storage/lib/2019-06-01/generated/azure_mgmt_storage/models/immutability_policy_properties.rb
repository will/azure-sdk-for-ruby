# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The properties of an ImmutabilityPolicy of a blob container.
    #
    class ImmutabilityPolicyProperties

      include MsRestAzure

      # @return [Integer] The immutability period for the blobs in the
      # container since the policy creation, in days.
      attr_accessor :immutability_period_since_creation_in_days

      # @return [ImmutabilityPolicyState] The ImmutabilityPolicy state of a
      # blob container, possible values include: Locked and Unlocked. Possible
      # values include: 'Locked', 'Unlocked'
      attr_accessor :state

      # @return [Boolean] This property can only be changed for unlocked
      # time-based retention policies. When enabled, new blocks can be written
      # to an append blob while maintaining immutability protection and
      # compliance. Only new blocks can be added and any existing blocks cannot
      # be modified or deleted. This property cannot be changed with
      # ExtendImmutabilityPolicy API
      attr_accessor :allow_protected_append_writes

      # @return [String] ImmutabilityPolicy Etag.
      attr_accessor :etag

      # @return [Array<UpdateHistoryProperty>] The ImmutabilityPolicy update
      # history of the blob container.
      attr_accessor :update_history


      #
      # Mapper for ImmutabilityPolicyProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImmutabilityPolicyProperties',
          type: {
            name: 'Composite',
            class_name: 'ImmutabilityPolicyProperties',
            model_properties: {
              immutability_period_since_creation_in_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.immutabilityPeriodSinceCreationInDays',
                type: {
                  name: 'Number'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              allow_protected_append_writes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowProtectedAppendWrites',
                type: {
                  name: 'Boolean'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              update_history: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'updateHistory',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UpdateHistoryPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UpdateHistoryProperty'
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
