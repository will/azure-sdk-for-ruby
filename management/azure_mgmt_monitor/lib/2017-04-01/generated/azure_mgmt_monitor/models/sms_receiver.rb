# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_04_01
  module Models
    #
    # An SMS receiver.
    #
    class SmsReceiver

      include MsRestAzure

      # @return [String] The name of the SMS receiver. Names must be unique
      # across all receivers within an action group.
      attr_accessor :name

      # @return [String] The country code of the SMS receiver.
      attr_accessor :country_code

      # @return [String] The phone number of the SMS receiver.
      attr_accessor :phone_number

      # @return [ReceiverStatus] The status of the receiver. Possible values
      # include: 'NotSpecified', 'Enabled', 'Disabled'
      attr_accessor :status


      #
      # Mapper for SmsReceiver class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SmsReceiver',
          type: {
            name: 'Composite',
            class_name: 'SmsReceiver',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              country_code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'countryCode',
                type: {
                  name: 'String'
                }
              },
              phone_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'phoneNumber',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'ReceiverStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
