# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # Supplementary contextual messages during a rollout.
    #
    class Message

      include MsRestAzure

      # @return [DateTime] Time in UTC this message was provided.
      attr_accessor :time_stamp

      # @return [String] The actual message text.
      attr_accessor :message


      #
      # Mapper for Message class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Message',
          type: {
            name: 'Composite',
            class_name: 'Message',
            model_properties: {
              time_stamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
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
