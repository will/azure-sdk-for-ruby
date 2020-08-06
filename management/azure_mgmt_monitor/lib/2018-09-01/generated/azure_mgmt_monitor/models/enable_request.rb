# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_09_01
  module Models
    #
    # Describes a receiver that should be resubscribed.
    #
    class EnableRequest

      include MsRestAzure

      # @return [String] The name of the receiver to resubscribe.
      attr_accessor :receiver_name


      #
      # Mapper for EnableRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnableRequest',
          type: {
            name: 'Composite',
            class_name: 'EnableRequest',
            model_properties: {
              receiver_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'receiverName',
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
