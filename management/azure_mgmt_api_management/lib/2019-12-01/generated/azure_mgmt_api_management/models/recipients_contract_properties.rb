# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Notification Parameter contract.
    #
    class RecipientsContractProperties

      include MsRestAzure

      # @return [Array<String>] List of Emails subscribed for the notification.
      attr_accessor :emails

      # @return [Array<String>] List of Users subscribed for the notification.
      attr_accessor :users


      #
      # Mapper for RecipientsContractProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecipientsContractProperties',
          type: {
            name: 'Composite',
            class_name: 'RecipientsContractProperties',
            model_properties: {
              emails: {
                client_side_validation: true,
                required: false,
                serialized_name: 'emails',
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
              users: {
                client_side_validation: true,
                required: false,
                serialized_name: 'users',
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
