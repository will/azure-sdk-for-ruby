# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_07_19_preview
  module Models
    #
    # The email actions.
    #
    class EmailActions

      include MsRestAzure

      # @return [Array<EmailAction>] The list of email actions.
      attr_accessor :email_addresses


      #
      # Mapper for EmailActions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EmailActions',
          type: {
            name: 'Composite',
            class_name: 'EmailActions',
            model_properties: {
              email_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'emailAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EmailActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EmailAction'
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
