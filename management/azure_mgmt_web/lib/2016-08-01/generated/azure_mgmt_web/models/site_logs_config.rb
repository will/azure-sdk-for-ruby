# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Configuration of App Service site logs.
    #
    class SiteLogsConfig < ProxyOnlyResource

      include MsRestAzure

      # @return [ApplicationLogsConfig] Application logs configuration.
      attr_accessor :application_logs

      # @return [HttpLogsConfig] HTTP logs configuration.
      attr_accessor :http_logs

      # @return [EnabledConfig] Failed requests tracing configuration.
      attr_accessor :failed_requests_tracing

      # @return [EnabledConfig] Detailed error messages configuration.
      attr_accessor :detailed_error_messages


      #
      # Mapper for SiteLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SiteLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'SiteLogsConfig',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              application_logs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationLogs',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationLogsConfig'
                }
              },
              http_logs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpLogs',
                type: {
                  name: 'Composite',
                  class_name: 'HttpLogsConfig'
                }
              },
              failed_requests_tracing: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.failedRequestsTracing',
                type: {
                  name: 'Composite',
                  class_name: 'EnabledConfig'
                }
              },
              detailed_error_messages: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.detailedErrorMessages',
                type: {
                  name: 'Composite',
                  class_name: 'EnabledConfig'
                }
              }
            }
          }
        }
      end
    end
  end
end
