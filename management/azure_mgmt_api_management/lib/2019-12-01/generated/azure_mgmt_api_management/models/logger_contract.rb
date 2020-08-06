# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Logger details.
    #
    class LoggerContract < Resource

      include MsRestAzure

      # @return [LoggerType] Logger type. Possible values include:
      # 'azureEventHub', 'applicationInsights'
      attr_accessor :logger_type

      # @return [String] Logger description.
      attr_accessor :description

      # @return [Hash{String => String}] The name and SendRule connection
      # string of the event hub for azureEventHub logger.
      # Instrumentation key for applicationInsights logger.
      attr_accessor :credentials

      # @return [Boolean] Whether records are buffered in the logger before
      # publishing. Default is assumed to be true.
      attr_accessor :is_buffered

      # @return [String] Azure Resource Id of a log target (either Azure Event
      # Hub resource or Azure Application Insights resource).
      attr_accessor :resource_id


      #
      # Mapper for LoggerContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoggerContract',
          type: {
            name: 'Composite',
            class_name: 'LoggerContract',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              logger_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.loggerType',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
                serialized_name: 'properties.credentials',
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
                serialized_name: 'properties.isBuffered',
                type: {
                  name: 'Boolean'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceId',
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
