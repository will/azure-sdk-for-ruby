# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2017_10_01
  module Models
    #
    # Parameters supplied to the Update Redis operation.
    #
    class RedisUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] All Redis Settings. Few possible keys:
      # rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta,maxmemory-policy,notify-keyspace-events,maxmemory-samples,slowlog-log-slower-than,slowlog-max-len,list-max-ziplist-entries,list-max-ziplist-value,hash-max-ziplist-entries,hash-max-ziplist-value,set-max-intset-entries,zset-max-ziplist-entries,zset-max-ziplist-value
      # etc.
      attr_accessor :redis_configuration

      # @return [Boolean] Specifies whether the non-ssl Redis server port
      # (6379) is enabled.
      attr_accessor :enable_non_ssl_port

      # @return [Hash{String => String}] A dictionary of tenant settings
      attr_accessor :tenant_settings

      # @return [Integer] The number of shards to be created on a Premium
      # Cluster Cache.
      attr_accessor :shard_count

      # @return [Sku] The SKU of the Redis cache to deploy.
      attr_accessor :sku

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags


      #
      # Mapper for RedisUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'RedisUpdateParameters',
            model_properties: {
              redis_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.redisConfiguration',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              enable_non_ssl_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableNonSslPort',
                type: {
                  name: 'Boolean'
                }
              },
              tenant_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tenantSettings',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              shard_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.shardCount',
                type: {
                  name: 'Number'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
