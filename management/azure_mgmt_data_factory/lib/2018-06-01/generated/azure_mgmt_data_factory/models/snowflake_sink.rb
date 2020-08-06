# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity snowflake sink.
    #
    class SnowflakeSink < CopySink

      include MsRestAzure


      def initialize
        @type = "SnowflakeSink"
      end

      attr_accessor :type

      # @return SQL pre-copy script. Type: string (or Expression with
      # resultType string).
      attr_accessor :pre_copy_script

      # @return [SnowflakeImportCopyCommand] Snowflake import settings.
      attr_accessor :import_settings


      #
      # Mapper for SnowflakeSink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SnowflakeSink',
          type: {
            name: 'Composite',
            class_name: 'SnowflakeSink',
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
              pre_copy_script: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preCopyScript',
                type: {
                  name: 'Object'
                }
              },
              import_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'importSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SnowflakeImportCopyCommand'
                }
              }
            }
          }
        }
      end
    end
  end
end
