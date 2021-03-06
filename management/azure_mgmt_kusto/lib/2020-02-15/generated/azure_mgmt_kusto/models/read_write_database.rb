# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_02_15
  module Models
    #
    # Class representing a read write database.
    #
    class ReadWriteDatabase < Database

      include MsRestAzure


      def initialize
        @kind = "ReadWrite"
      end

      attr_accessor :kind

      # @return [ProvisioningState] The provisioned state of the resource.
      # Possible values include: 'Running', 'Creating', 'Deleting',
      # 'Succeeded', 'Failed', 'Moving'
      attr_accessor :provisioning_state

      # @return [Duration] The time the data should be kept before it stops
      # being accessible to queries in TimeSpan.
      attr_accessor :soft_delete_period

      # @return [Duration] The time the data should be kept in cache for fast
      # queries in TimeSpan.
      attr_accessor :hot_cache_period

      # @return [DatabaseStatistics] The statistics of the database.
      attr_accessor :statistics

      # @return [Boolean] Indicates whether the database is followed.
      attr_accessor :is_followed


      #
      # Mapper for ReadWriteDatabase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReadWrite',
          type: {
            name: 'Composite',
            class_name: 'ReadWriteDatabase',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              soft_delete_period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.softDeletePeriod',
                type: {
                  name: 'TimeSpan'
                }
              },
              hot_cache_period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hotCachePeriod',
                type: {
                  name: 'TimeSpan'
                }
              },
              statistics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.statistics',
                type: {
                  name: 'Composite',
                  class_name: 'DatabaseStatistics'
                }
              },
              is_followed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isFollowed',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
