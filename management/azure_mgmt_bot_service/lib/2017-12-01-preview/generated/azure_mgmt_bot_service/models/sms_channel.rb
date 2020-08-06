# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2017_12_01_preview
  module Models
    #
    # Sms channel definition
    #
    class SmsChannel < Channel

      include MsRestAzure


      def initialize
        @channelName = "SmsChannel"
      end

      attr_accessor :channelName

      # @return [SmsChannelProperties] The set of properties specific to Sms
      # channel resource
      attr_accessor :properties


      #
      # Mapper for SmsChannel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SmsChannel',
          type: {
            name: 'Composite',
            class_name: 'SmsChannel',
            model_properties: {
              channelName: {
                client_side_validation: true,
                required: true,
                serialized_name: 'channelName',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'SmsChannelProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
