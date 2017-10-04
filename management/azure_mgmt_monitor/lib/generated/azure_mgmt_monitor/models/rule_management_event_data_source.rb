# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # A rule management event data source. The discriminator fields is always
    # RuleManagementEventDataSource in this case.
    #
    class RuleManagementEventDataSource < RuleDataSource

      include MsRestAzure


      def initialize
        @odata.type = "Microsoft.Azure.Management.Insights.Models.RuleManagementEventDataSource"
      end

      attr_accessor :odata.type

      # @return [String] the event name.
      attr_accessor :event_name

      # @return [String] the event source.
      attr_accessor :event_source

      # @return [String] the level.
      attr_accessor :level

      # @return [String] The name of the operation that should be checked for.
      # If no name is provided, any operation will match.
      attr_accessor :operation_name

      # @return [String] the resource group name.
      attr_accessor :resource_group_name

      # @return [String] the resource provider name.
      attr_accessor :resource_provider_name

      # @return [String] The status of the operation that should be checked
      # for. If no status is provided, any status will match.
      attr_accessor :status

      # @return [String] the substatus.
      attr_accessor :sub_status

      # @return [RuleManagementEventClaimsDataSource] the claims.
      attr_accessor :claims


      #
      # Mapper for RuleManagementEventDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.RuleManagementEventDataSource',
          type: {
            name: 'Composite',
            class_name: 'RuleManagementEventDataSource',
            model_properties: {
              resource_uri: {
                required: false,
                serialized_name: 'resourceUri',
                type: {
                  name: 'String'
                }
              },
              odata.type: {
                required: true,
                serialized_name: 'odata\\.type',
                type: {
                  name: 'String'
                }
              },
              event_name: {
                required: false,
                serialized_name: 'eventName',
                type: {
                  name: 'String'
                }
              },
              event_source: {
                required: false,
                serialized_name: 'eventSource',
                type: {
                  name: 'String'
                }
              },
              level: {
                required: false,
                serialized_name: 'level',
                type: {
                  name: 'String'
                }
              },
              operation_name: {
                required: false,
                serialized_name: 'operationName',
                type: {
                  name: 'String'
                }
              },
              resource_group_name: {
                required: false,
                serialized_name: 'resourceGroupName',
                type: {
                  name: 'String'
                }
              },
              resource_provider_name: {
                required: false,
                serialized_name: 'resourceProviderName',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              sub_status: {
                required: false,
                serialized_name: 'subStatus',
                type: {
                  name: 'String'
                }
              },
              claims: {
                required: false,
                serialized_name: 'claims',
                type: {
                  name: 'Composite',
                  class_name: 'RuleManagementEventClaimsDataSource'
                }
              }
            }
          }
        }
      end
    end
  end
end
