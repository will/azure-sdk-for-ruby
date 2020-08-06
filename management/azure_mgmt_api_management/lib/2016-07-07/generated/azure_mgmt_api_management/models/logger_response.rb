# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # The Logger entity in API Management represents an event sink that you can
    # use to log API Management events. Currently the Logger entity supports
    # logging API Management events to Azure Event Hubs.
    #
    class LoggerResponse

      include MsRestAzure

      # @return [String] Uniquely identifies the logger within the current API
      # Management service instance. The value is a valid relative URL in the
      # format of /loggers/{loggerId} where {loggerId} is a logger identifier.
      attr_accessor :id

      # @return [String] Logger type. Default value: 'AzureEventHub' .
      attr_accessor :type

      # @return [String] Logger description.
      attr_accessor :description

      # @return [Hash{String => String}] The name and SendRule connection
      # string of the event hub.
      attr_accessor :credentials

      # @return [Boolean] Whether records are buffered in the logger before
      # publishing. Default is assumed to be true. Default value: true .
      attr_accessor :is_buffered


      #
      # Mapper for LoggerResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoggerResponse',
          type: {
            name: 'Composite',
            class_name: 'LoggerResponse',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'AzureEventHub',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 256
                },
                type: {
                  name: 'String'
                }
              },
              credentials: {
                client_side_validation: true,
                required: true,
                serialized_name: 'credentials',
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
              is_buffered: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isBuffered',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
