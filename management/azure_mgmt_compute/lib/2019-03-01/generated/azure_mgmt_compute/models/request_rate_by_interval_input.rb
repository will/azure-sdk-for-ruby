# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Api request input for LogAnalytics getRequestRateByInterval Api.
    #
    class RequestRateByIntervalInput < LogAnalyticsInputBase

      include MsRestAzure

      # @return [IntervalInMins] Interval value in minutes used to create
      # LogAnalytics call rate logs. Possible values include: 'ThreeMins',
      # 'FiveMins', 'ThirtyMins', 'SixtyMins'
      attr_accessor :interval_length


      #
      # Mapper for RequestRateByIntervalInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequestRateByIntervalInput',
          type: {
            name: 'Composite',
            class_name: 'RequestRateByIntervalInput',
            model_properties: {
              blob_container_sas_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'blobContainerSasUri',
                type: {
                  name: 'String'
                }
              },
              from_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fromTime',
                type: {
                  name: 'DateTime'
                }
              },
              to_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'toTime',
                type: {
                  name: 'DateTime'
                }
              },
              group_by_throttle_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupByThrottlePolicy',
                type: {
                  name: 'Boolean'
                }
              },
              group_by_operation_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupByOperationName',
                type: {
                  name: 'Boolean'
                }
              },
              group_by_resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupByResourceName',
                type: {
                  name: 'Boolean'
                }
              },
              interval_length: {
                client_side_validation: true,
                required: true,
                serialized_name: 'intervalLength',
                type: {
                  name: 'Enum',
                  module: 'IntervalInMins'
                }
              }
            }
          }
        }
      end
    end
  end
end
