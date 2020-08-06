# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2017_12_01_preview
  module Models
    #
    # Microsoft Teams channel definition
    #
    class MsTeamsChannel < Channel

      include MsRestAzure


      def initialize
        @channelName = "MsTeamsChannel"
      end

      attr_accessor :channelName

      # @return [MsTeamsChannelProperties] The set of properties specific to
      # Microsoft Teams channel resource
      attr_accessor :properties


      #
      # Mapper for MsTeamsChannel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MsTeamsChannel',
          type: {
            name: 'Composite',
            class_name: 'MsTeamsChannel',
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
                  class_name: 'MsTeamsChannelProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
