# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # The event response message received from the service URI.
    #
    class EventResponseMessage

      include MsRestAzure

      # @return [String] The content of the event response message.
      attr_accessor :content

      # @return [Hash{String => String}] The headers of the event response
      # message.
      attr_accessor :headers

      # @return [String] The reason phrase of the event response message.
      attr_accessor :reason_phrase

      # @return [String] The status code of the event response message.
      attr_accessor :status_code

      # @return [String] The HTTP message version.
      attr_accessor :version


      #
      # Mapper for EventResponseMessage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventResponseMessage',
          type: {
            name: 'Composite',
            class_name: 'EventResponseMessage',
            model_properties: {
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'content',
                type: {
                  name: 'String'
                }
              },
              headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'headers',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              reason_phrase: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reasonPhrase',
                type: {
                  name: 'String'
                }
              },
              status_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statusCode',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
