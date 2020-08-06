# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity Azure Data Explorer (Kusto) source.
    #
    class AzureDataExplorerSource < CopySource

      include MsRestAzure


      def initialize
        @type = "AzureDataExplorerSource"
      end

      attr_accessor :type

      # @return Database query. Should be a Kusto Query Language (KQL) query.
      # Type: string (or Expression with resultType string).
      attr_accessor :query

      # @return The name of the Boolean option that controls whether truncation
      # is applied to result-sets that go beyond a certain row-count limit.
      attr_accessor :no_truncation

      # @return Query timeout. Type: string (or Expression with resultType
      # string), pattern:
      # ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9]))..
      attr_accessor :query_timeout

      # @return [Array<AdditionalColumns>] Specifies the additional columns to
      # be added to source data. Type: array of objects (or Expression with
      # resultType array of objects).
      attr_accessor :additional_columns


      #
      # Mapper for AzureDataExplorerSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureDataExplorerSource',
          type: {
            name: 'Composite',
            class_name: 'AzureDataExplorerSource',
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
              source_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryCount',
                type: {
                  name: 'Object'
                }
              },
              source_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryWait',
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
              query: {
                client_side_validation: true,
                required: true,
                serialized_name: 'query',
                type: {
                  name: 'Object'
                }
              },
              no_truncation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noTruncation',
                type: {
                  name: 'Object'
                }
              },
              query_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queryTimeout',
                type: {
                  name: 'Object'
                }
              },
              additional_columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalColumns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdditionalColumnsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalColumns'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
