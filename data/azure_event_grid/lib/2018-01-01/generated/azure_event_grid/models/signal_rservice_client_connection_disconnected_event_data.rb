# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a
    # Microsoft.SignalRService.ClientConnectionDisconnected event.
    #
    class SignalRServiceClientConnectionDisconnectedEventData

      include MsRestAzure

      # @return [DateTime] The time at which the event occurred.
      attr_accessor :timestamp

      # @return [String] The hub of connected client connection.
      attr_accessor :hub_name

      # @return [String] The connection Id of connected client connection.
      attr_accessor :connection_id

      # @return [String] The user Id of connected client connection.
      attr_accessor :user_id

      # @return [String] The message of error that cause the client connection
      # disconnected.
      attr_accessor :error_message


      #
      # Mapper for SignalRServiceClientConnectionDisconnectedEventData class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SignalRServiceClientConnectionDisconnectedEventData',
          type: {
            name: 'Composite',
            class_name: 'SignalRServiceClientConnectionDisconnectedEventData',
            model_properties: {
              timestamp: {
                required: false,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              hub_name: {
                required: false,
                serialized_name: 'hubName',
                type: {
                  name: 'String'
                }
              },
              connection_id: {
                required: false,
                serialized_name: 'connectionId',
                type: {
                  name: 'String'
                }
              },
              user_id: {
                required: false,
                serialized_name: 'userId',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                required: false,
                serialized_name: 'errorMessage',
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