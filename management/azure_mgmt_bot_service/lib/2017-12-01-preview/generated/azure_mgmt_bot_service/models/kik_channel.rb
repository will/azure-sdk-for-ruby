# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2017_12_01_preview
  module Models
    #
    # Kik channel definition
    #
    class KikChannel < Channel

      include MsRestAzure


      def initialize
        @channelName = "KikChannel"
      end

      attr_accessor :channelName

      # @return [KikChannelProperties] The set of properties specific to Kik
      # channel resource
      attr_accessor :properties


      #
      # Mapper for KikChannel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KikChannel',
          type: {
            name: 'Composite',
            class_name: 'KikChannel',
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
                  class_name: 'KikChannelProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
