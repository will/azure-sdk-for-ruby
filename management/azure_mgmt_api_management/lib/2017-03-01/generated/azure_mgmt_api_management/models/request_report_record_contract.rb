# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Request Report data.
    #
    class RequestReportRecordContract

      include MsRestAzure

      # @return [String] API identifier path. /apis/{apiId}
      attr_accessor :api_id

      # @return [String] Operation identifier path.
      # /apis/{apiId}/operations/{operationId}
      attr_accessor :operation_id

      # @return [String] Product identifier path. /products/{productId}
      attr_accessor :product_id

      # @return [String] User identifier path. /users/{userId}
      attr_accessor :user_id

      # @return [String] The HTTP method associated with this request..
      attr_accessor :method

      # @return [String] The full URL associated with this request.
      attr_accessor :url

      # @return [String] The client IP address associated with this request.
      attr_accessor :ip_address

      # @return [String] The HTTP status code received by the gateway as a
      # result of forwarding this request to the backend.
      attr_accessor :backend_response_code

      # @return [Integer] The HTTP status code returned by the gateway.
      attr_accessor :response_code

      # @return [Integer] The size of the response returned by the gateway.
      attr_accessor :response_size

      # @return [DateTime] The date and time when this request was received by
      # the gateway in ISO 8601 format.
      attr_accessor :timestamp

      # @return [String] Specifies if response cache was involved in generating
      # the response. If the value is none, the cache was not used. If the
      # value is hit, cached response was returned. If the value is miss, the
      # cache was used but lookup resulted in a miss and request was fulfilled
      # by the backend.
      attr_accessor :cache

      # @return [Float] The total time it took to process this request.
      attr_accessor :api_time

      # @return [Float] he time it took to forward this request to the backend
      # and get the response back.
      attr_accessor :service_time

      # @return [String] Azure region where the gateway that processed this
      # request is located.
      attr_accessor :api_region

      # @return [String] Subscription identifier path.
      # /subscriptions/{subscriptionId}
      attr_accessor :subscription_id

      # @return [String] Request Identifier.
      attr_accessor :request_id

      # @return [Integer] The size of this request..
      attr_accessor :request_size


      #
      # Mapper for RequestReportRecordContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequestReportRecordContract',
          type: {
            name: 'Composite',
            class_name: 'RequestReportRecordContract',
            model_properties: {
              api_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'apiId',
                type: {
                  name: 'String'
                }
              },
              operation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operationId',
                type: {
                  name: 'String'
                }
              },
              product_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'productId',
                type: {
                  name: 'String'
                }
              },
              user_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'userId',
                type: {
                  name: 'String'
                }
              },
              method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'method',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              backend_response_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backendResponseCode',
                type: {
                  name: 'String'
                }
              },
              response_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'responseCode',
                type: {
                  name: 'Number'
                }
              },
              response_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'responseSize',
                type: {
                  name: 'Number'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              cache: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cache',
                type: {
                  name: 'String'
                }
              },
              api_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'apiTime',
                type: {
                  name: 'Double'
                }
              },
              service_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceTime',
                type: {
                  name: 'Double'
                }
              },
              api_region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'apiRegion',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              request_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestSize',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
