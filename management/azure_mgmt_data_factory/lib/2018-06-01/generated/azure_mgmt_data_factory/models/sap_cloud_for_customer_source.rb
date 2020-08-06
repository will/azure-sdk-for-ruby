# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity source for SAP Cloud for Customer source.
    #
    class SapCloudForCustomerSource < TabularSource

      include MsRestAzure


      def initialize
        @type = "SapCloudForCustomerSource"
      end

      attr_accessor :type

      # @return SAP Cloud for Customer OData query. For example, "$top=1".
      # Type: string (or Expression with resultType string).
      attr_accessor :query

      # @return The timeout (TimeSpan) to get an HTTP response. It is the
      # timeout to get a response, not the timeout to read response data.
      # Default value: 00:05:00. Type: string (or Expression with resultType
      # string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
      attr_accessor :http_request_timeout


      #
      # Mapper for SapCloudForCustomerSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SapCloudForCustomerSource',
          type: {
            name: 'Composite',
            class_name: 'SapCloudForCustomerSource',
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
              },
              query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'query',
                type: {
                  name: 'Object'
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
