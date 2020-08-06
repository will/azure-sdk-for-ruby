# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity SAP Cloud for Customer sink.
    #
    class SapCloudForCustomerSink < CopySink

      include MsRestAzure


      def initialize
        @type = "SapCloudForCustomerSink"
      end

      attr_accessor :type

      # @return [SapCloudForCustomerSinkWriteBehavior] The write behavior for
      # the operation. Default is 'Insert'. Possible values include: 'Insert',
      # 'Update'
      attr_accessor :write_behavior

      # @return The timeout (TimeSpan) to get an HTTP response. It is the
      # timeout to get a response, not the timeout to read response data.
      # Default value: 00:05:00. Type: string (or Expression with resultType
      # string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
      attr_accessor :http_request_timeout


      #
      # Mapper for SapCloudForCustomerSink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SapCloudForCustomerSink',
          type: {
            name: 'Composite',
            class_name: 'SapCloudForCustomerSink',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              write_batch_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchSize',
                type: {
                  name: 'Object'
                }
              },
              write_batch_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchTimeout',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryCount',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              write_behavior: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBehavior',
                type: {
                  name: 'String'
                }
              },
              http_request_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'httpRequestTimeout',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
