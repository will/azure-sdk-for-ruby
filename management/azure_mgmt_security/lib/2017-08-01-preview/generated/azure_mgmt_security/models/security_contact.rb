# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01_preview
  module Models
    #
    # Contact details for security issues
    #
    class SecurityContact < Resource

      include MsRestAzure

      # @return [String] The email of this security contact
      attr_accessor :email

      # @return [String] The phone number of this security contact
      attr_accessor :phone

      # @return [AlertNotifications] Whether to send security alerts
      # notifications to the security contact. Possible values include: 'On',
      # 'Off'
      attr_accessor :alert_notifications

      # @return [AlertsToAdmins] Whether to send security alerts notifications
      # to subscription admins. Possible values include: 'On', 'Off'
      attr_accessor :alerts_to_admins


      #
      # Mapper for SecurityContact class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityContact',
          type: {
            name: 'Composite',
            class_name: 'SecurityContact',
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
              email: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.email',
                type: {
                  name: 'String'
                }
              },
              phone: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.phone',
                type: {
                  name: 'String'
                }
              },
              alert_notifications: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.alertNotifications',
                type: {
                  name: 'String'
                }
              },
              alerts_to_admins: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.alertsToAdmins',
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
