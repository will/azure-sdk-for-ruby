# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # Cosmos DB Gremlin graph resource object
    #
    class GremlinGraphResource

      include MsRestAzure

      # @return [String] Name of the Cosmos DB Gremlin graph
      attr_accessor :id

      # @return [IndexingPolicy] The configuration of the indexing policy. By
      # default, the indexing is automatic for all document paths within the
      # graph
      attr_accessor :indexing_policy

      # @return [ContainerPartitionKey] The configuration of the partition key
      # to be used for partitioning data into multiple partitions
      attr_accessor :partition_key

      # @return [Integer] Default time to live
      attr_accessor :default_ttl

      # @return [UniqueKeyPolicy] The unique key policy configuration for
      # specifying uniqueness constraints on documents in the collection in the
      # Azure Cosmos DB service.
      attr_accessor :unique_key_policy

      # @return [ConflictResolutionPolicy] The conflict resolution policy for
      # the graph.
      attr_accessor :conflict_resolution_policy


      #
      # Mapper for GremlinGraphResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GremlinGraphResource',
          type: {
            name: 'Composite',
            class_name: 'GremlinGraphResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              indexing_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'indexingPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'IndexingPolicy'
                }
              },
              partition_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionKey',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerPartitionKey'
                }
              },
              default_ttl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultTtl',
                type: {
                  name: 'Number'
                }
              },
              unique_key_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uniqueKeyPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'UniqueKeyPolicy'
                }
              },
              conflict_resolution_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'conflictResolutionPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ConflictResolutionPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
