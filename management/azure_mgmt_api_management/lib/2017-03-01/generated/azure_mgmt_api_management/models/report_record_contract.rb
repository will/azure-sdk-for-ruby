# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Report data.
    #
    class ReportRecordContract

      include MsRestAzure

      # @return [String] Name depending on report endpoint specifies product,
      # API, operation or developer name.
      attr_accessor :name

      # @return [DateTime] Start of aggregation period. The date conforms to
      # the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO
      # 8601 standard.
      #
      attr_accessor :timestamp

      # @return [String] Length of aggregation period.  Interval must be
      # multiple of 15 minutes and may not be zero. The value should be in ISO
      # 8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).
      attr_accessor :interval

      # @return [String] Country to which this record data is related.
      attr_accessor :country

      # @return [String] Country region to which this record data is related.
      attr_accessor :region

      # @return [String] Zip code to which this record data is related.
      attr_accessor :zip

      # @return [String] User identifier path. /users/{userId}
      attr_accessor :user_id

      # @return [String] Product identifier path. /products/{productId}
      attr_accessor :product_id

      # @return [String] API identifier path. /apis/{apiId}
      attr_accessor :api_id

      # @return [String] Operation identifier path.
      # /apis/{apiId}/operations/{operationId}
      attr_accessor :operation_id

      # @return [String] API region identifier.
      attr_accessor :api_region

      # @return [String] Subscription identifier path.
      # /subscriptions/{subscriptionId}
      attr_accessor :subscription_id

      # @return [Integer] Number of successful calls. This includes calls
      # returning HttpStatusCode <= 301 and HttpStatusCode.NotModified and
      # HttpStatusCode.TemporaryRedirect
      attr_accessor :call_count_success

      # @return [Integer] Number of calls blocked due to invalid credentials.
      # This includes calls returning HttpStatusCode.Unauthorized and
      # HttpStatusCode.Forbidden and HttpStatusCode.TooManyRequests
      attr_accessor :call_count_blocked

      # @return [Integer] Number of calls failed due to proxy or backend
      # errors. This includes calls returning HttpStatusCode.BadRequest(400)
      # and any Code between HttpStatusCode.InternalServerError (500) and 600
      attr_accessor :call_count_failed

      # @return [Integer] Number of other calls.
      attr_accessor :call_count_other

      # @return [Integer] Total number of calls.
      attr_accessor :call_count_total

      # @return [Integer] Bandwidth consumed.
      attr_accessor :bandwidth

      # @return [Integer] Number of times when content was served from cache
      # policy.
      attr_accessor :cache_hit_count

      # @return [Integer] Number of times content was fetched from backend.
      attr_accessor :cache_miss_count

      # @return [Float] Average time it took to process request.
      attr_accessor :api_time_avg

      # @return [Float] Minimum time it took to process request.
      attr_accessor :api_time_min

      # @return [Float] Maximum time it took to process request.
      attr_accessor :api_time_max

      # @return [Float] Average time it took to process request on backend.
      attr_accessor :service_time_avg

      # @return [Float] Minimum time it took to process request on backend.
      attr_accessor :service_time_min

      # @return [Float] Maximum time it took to process request on backend.
      attr_accessor :service_time_max


      #
      # Mapper for ReportRecordContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportRecordContract',
          type: {
            name: 'Composite',
            class_name: 'ReportRecordContract',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
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
              interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'interval',
                type: {
                  name: 'String'
                }
              },
              country: {
                client_side_validation: true,
                required: false,
                serialized_name: 'country',
                type: {
                  name: 'String'
                }
              },
              region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'region',
                type: {
                  name: 'String'
                }
              },
              zip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zip',
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
              product_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'productId',
                type: {
                  name: 'String'
                }
              },
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
              call_count_success: {
                client_side_validation: true,
                required: false,
                serialized_name: 'callCountSuccess',
                type: {
                  name: 'Number'
                }
              },
              call_count_blocked: {
                client_side_validation: true,
                required: false,
                serialized_name: 'callCountBlocked',
                type: {
                  name: 'Number'
                }
              },
              call_count_failed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'callCountFailed',
                type: {
                  name: 'Number'
                }
              },
              call_count_other: {
                client_side_validation: true,
                required: false,
                serialized_name: 'callCountOther',
                type: {
                  name: 'Number'
                }
              },
              call_count_total: {
                client_side_validation: true,
                required: false,
                serialized_name: 'callCountTotal',
                type: {
                  name: 'Number'
                }
              },
              bandwidth: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bandwidth',
                type: {
                  name: 'Number'
                }
              },
              cache_hit_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cacheHitCount',
                type: {
                  name: 'Number'
                }
              },
              cache_miss_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cacheMissCount',
                type: {
                  name: 'Number'
                }
              },
              api_time_avg: {
                client_side_validation: true,
                required: false,
                serialized_name: 'apiTimeAvg',
                type: {
                  name: 'Double'
                }
              },
              api_time_min: {
                client_side_validation: true,
                required: false,
                serialized_name: 'apiTimeMin',
                type: {
                  name: 'Double'
                }
              },
              api_time_max: {
                client_side_validation: true,
                required: false,
                serialized_name: 'apiTimeMax',
                type: {
                  name: 'Double'
                }
              },
              service_time_avg: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceTimeAvg',
                type: {
                  name: 'Double'
                }
              },
              service_time_min: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceTimeMin',
                type: {
                  name: 'Double'
                }
              },
              service_time_max: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceTimeMax',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
