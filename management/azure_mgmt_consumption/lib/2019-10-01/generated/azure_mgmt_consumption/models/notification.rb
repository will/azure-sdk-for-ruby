# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  module Models
    #
    # The notification associated with a budget.
    #
    class Notification

      include MsRestAzure

      # @return [Boolean] The notification is enabled or not.
      attr_accessor :enabled

      # @return [OperatorType] The comparison operator. Possible values
      # include: 'EqualTo', 'GreaterThan', 'GreaterThanOrEqualTo'
      attr_accessor :operator

      # @return Threshold value associated with a notification. Notification is
      # sent when the cost exceeded the threshold. It is always percent and has
      # to be between 0 and 1000.
      attr_accessor :threshold

      # @return [Array<String>] Email addresses to send the budget notification
      # to when the threshold is exceeded.
      attr_accessor :contact_emails

      # @return [Array<String>] Contact roles to send the budget notification
      # to when the threshold is exceeded.
      attr_accessor :contact_roles

      # @return [Array<String>] Action groups to send the budget notification
      # to when the threshold is exceeded.
      attr_accessor :contact_groups


      #
      # Mapper for Notification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Notification',
          type: {
            name: 'Composite',
            class_name: 'Notification',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              operator: {
                client_side_validation: true,
                required: true,
                serialized_name: 'operator',
                type: {
                  name: 'String'
                }
              },
              threshold: {
                client_side_validation: true,
                required: true,
                serialized_name: 'threshold',
                type: {
                  name: 'Number'
                }
              },
              contact_emails: {
                client_side_validation: true,
                required: true,
                serialized_name: 'contactEmails',
                constraints: {
                  MaxItems: 50,
                  MinItems: 1
                },
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
              contact_roles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contactRoles',
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
              contact_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contactGroups',
                constraints: {
                  MaxItems: 50,
                  MinItems: 0
                },
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
              }
            }
          }
        }
      end
    end
  end
end
