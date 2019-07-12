# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2015-04-08/generated/azure_mgmt_cosmosdb/module_definition'
require 'ms_rest_azure'

module Azure::Cosmosdb::Mgmt::V2015_04_08
  autoload :DatabaseAccounts,                                   '2015-04-08/generated/azure_mgmt_cosmosdb/database_accounts.rb'
  autoload :Operations,                                         '2015-04-08/generated/azure_mgmt_cosmosdb/operations.rb'
  autoload :Database,                                           '2015-04-08/generated/azure_mgmt_cosmosdb/database.rb'
  autoload :Collection,                                         '2015-04-08/generated/azure_mgmt_cosmosdb/collection.rb'
  autoload :CollectionRegion,                                   '2015-04-08/generated/azure_mgmt_cosmosdb/collection_region.rb'
  autoload :DatabaseAccountRegion,                              '2015-04-08/generated/azure_mgmt_cosmosdb/database_account_region.rb'
  autoload :PercentileSourceTarget,                             '2015-04-08/generated/azure_mgmt_cosmosdb/percentile_source_target.rb'
  autoload :PercentileTarget,                                   '2015-04-08/generated/azure_mgmt_cosmosdb/percentile_target.rb'
  autoload :Percentile,                                         '2015-04-08/generated/azure_mgmt_cosmosdb/percentile.rb'
  autoload :CollectionPartitionRegion,                          '2015-04-08/generated/azure_mgmt_cosmosdb/collection_partition_region.rb'
  autoload :CollectionPartition,                                '2015-04-08/generated/azure_mgmt_cosmosdb/collection_partition.rb'
  autoload :PartitionKeyRangeId,                                '2015-04-08/generated/azure_mgmt_cosmosdb/partition_key_range_id.rb'
  autoload :PartitionKeyRangeIdRegion,                          '2015-04-08/generated/azure_mgmt_cosmosdb/partition_key_range_id_region.rb'
  autoload :CosmosDB,                                           '2015-04-08/generated/azure_mgmt_cosmosdb/cosmos_db.rb'

  module Models
    autoload :ThroughputResource,                                 '2015-04-08/generated/azure_mgmt_cosmosdb/models/throughput_resource.rb'
    autoload :ConsistencyPolicy,                                  '2015-04-08/generated/azure_mgmt_cosmosdb/models/consistency_policy.rb'
    autoload :ThroughputUpdateParameters,                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/throughput_update_parameters.rb'
    autoload :Location,                                           '2015-04-08/generated/azure_mgmt_cosmosdb/models/location.rb'
    autoload :SqlDatabaseResource,                                '2015-04-08/generated/azure_mgmt_cosmosdb/models/sql_database_resource.rb'
    autoload :VirtualNetworkRule,                                 '2015-04-08/generated/azure_mgmt_cosmosdb/models/virtual_network_rule.rb'
    autoload :SqlDatabaseCreateUpdateParameters,                  '2015-04-08/generated/azure_mgmt_cosmosdb/models/sql_database_create_update_parameters.rb'
    autoload :DatabaseAccountsListResult,                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_accounts_list_result.rb'
    autoload :SqlContainerResource,                               '2015-04-08/generated/azure_mgmt_cosmosdb/models/sql_container_resource.rb'
    autoload :SqlDatabaseListResult,                              '2015-04-08/generated/azure_mgmt_cosmosdb/models/sql_database_list_result.rb'
    autoload :SqlContainerCreateUpdateParameters,                 '2015-04-08/generated/azure_mgmt_cosmosdb/models/sql_container_create_update_parameters.rb'
    autoload :IncludedPath,                                       '2015-04-08/generated/azure_mgmt_cosmosdb/models/included_path.rb'
    autoload :MongoDBDatabaseResource,                            '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_resource.rb'
    autoload :IndexingPolicy,                                     '2015-04-08/generated/azure_mgmt_cosmosdb/models/indexing_policy.rb'
    autoload :MongoDBDatabaseCreateUpdateParameters,              '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_create_update_parameters.rb'
    autoload :UniqueKey,                                          '2015-04-08/generated/azure_mgmt_cosmosdb/models/unique_key.rb'
    autoload :MongoIndexKeys,                                     '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_index_keys.rb'
    autoload :ConflictResolutionPolicy,                           '2015-04-08/generated/azure_mgmt_cosmosdb/models/conflict_resolution_policy.rb'
    autoload :MongoIndexOptions,                                  '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_index_options.rb'
    autoload :SqlContainerListResult,                             '2015-04-08/generated/azure_mgmt_cosmosdb/models/sql_container_list_result.rb'
    autoload :MongoIndex,                                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_index.rb'
    autoload :MongoDBDatabaseListResult,                          '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_list_result.rb'
    autoload :MongoDBCollectionResource,                          '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_resource.rb'
    autoload :MongoDBCollectionListResult,                        '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_list_result.rb'
    autoload :MongoDBCollectionCreateUpdateParameters,            '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_create_update_parameters.rb'
    autoload :TableListResult,                                    '2015-04-08/generated/azure_mgmt_cosmosdb/models/table_list_result.rb'
    autoload :TableResource,                                      '2015-04-08/generated/azure_mgmt_cosmosdb/models/table_resource.rb'
    autoload :CassandraKeyspaceListResult,                        '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_list_result.rb'
    autoload :TableCreateUpdateParameters,                        '2015-04-08/generated/azure_mgmt_cosmosdb/models/table_create_update_parameters.rb'
    autoload :CassandraTableListResult,                           '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_table_list_result.rb'
    autoload :CassandraKeyspaceResource,                          '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_resource.rb'
    autoload :GremlinDatabaseListResult,                          '2015-04-08/generated/azure_mgmt_cosmosdb/models/gremlin_database_list_result.rb'
    autoload :CassandraKeyspaceCreateUpdateParameters,            '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_create_update_parameters.rb'
    autoload :GremlinGraphListResult,                             '2015-04-08/generated/azure_mgmt_cosmosdb/models/gremlin_graph_list_result.rb'
    autoload :Column,                                             '2015-04-08/generated/azure_mgmt_cosmosdb/models/column.rb'
    autoload :FailoverPolicies,                                   '2015-04-08/generated/azure_mgmt_cosmosdb/models/failover_policies.rb'
    autoload :CassandraPartitionKey,                              '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_partition_key.rb'
    autoload :Resource,                                           '2015-04-08/generated/azure_mgmt_cosmosdb/models/resource.rb'
    autoload :ClusterKey,                                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/cluster_key.rb'
    autoload :RegionForOnlineOffline,                             '2015-04-08/generated/azure_mgmt_cosmosdb/models/region_for_online_offline.rb'
    autoload :ExtendedResourceProperties,                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/extended_resource_properties.rb'
    autoload :DatabaseAccountListReadOnlyKeysResult,              '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_list_read_only_keys_result.rb'
    autoload :PartitionMetricListResult,                          '2015-04-08/generated/azure_mgmt_cosmosdb/models/partition_metric_list_result.rb'
    autoload :DatabaseAccountConnectionString,                    '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_connection_string.rb'
    autoload :CassandraSchema,                                    '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_schema.rb'
    autoload :DatabaseAccountRegenerateKeyParameters,             '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_regenerate_key_parameters.rb'
    autoload :CassandraTableResource,                             '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_table_resource.rb'
    autoload :FailoverPolicy,                                     '2015-04-08/generated/azure_mgmt_cosmosdb/models/failover_policy.rb'
    autoload :CassandraTableCreateUpdateParameters,               '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_table_create_update_parameters.rb'
    autoload :DatabaseAccountListKeysResult,                      '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_list_keys_result.rb'
    autoload :Indexes,                                            '2015-04-08/generated/azure_mgmt_cosmosdb/models/indexes.rb'
    autoload :DatabaseAccountListConnectionStringsResult,         '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_list_connection_strings_result.rb'
    autoload :ContainerPartitionKey,                              '2015-04-08/generated/azure_mgmt_cosmosdb/models/container_partition_key.rb'
    autoload :Capability,                                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/capability.rb'
    autoload :PercentileMetric,                                   '2015-04-08/generated/azure_mgmt_cosmosdb/models/percentile_metric.rb'
    autoload :MetricListResult,                                   '2015-04-08/generated/azure_mgmt_cosmosdb/models/metric_list_result.rb'
    autoload :UsagesResult,                                       '2015-04-08/generated/azure_mgmt_cosmosdb/models/usages_result.rb'
    autoload :MetricValue,                                        '2015-04-08/generated/azure_mgmt_cosmosdb/models/metric_value.rb'
    autoload :PercentileMetricListResult,                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/percentile_metric_list_result.rb'
    autoload :MetricDefinition,                                   '2015-04-08/generated/azure_mgmt_cosmosdb/models/metric_definition.rb'
    autoload :GremlinDatabaseResource,                            '2015-04-08/generated/azure_mgmt_cosmosdb/models/gremlin_database_resource.rb'
    autoload :PartitionUsagesResult,                              '2015-04-08/generated/azure_mgmt_cosmosdb/models/partition_usages_result.rb'
    autoload :GremlinDatabaseCreateUpdateParameters,              '2015-04-08/generated/azure_mgmt_cosmosdb/models/gremlin_database_create_update_parameters.rb'
    autoload :DatabaseAccountPatchParameters,                     '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_patch_parameters.rb'
    autoload :GremlinGraphResource,                               '2015-04-08/generated/azure_mgmt_cosmosdb/models/gremlin_graph_resource.rb'
    autoload :UniqueKeyPolicy,                                    '2015-04-08/generated/azure_mgmt_cosmosdb/models/unique_key_policy.rb'
    autoload :GremlinGraphCreateUpdateParameters,                 '2015-04-08/generated/azure_mgmt_cosmosdb/models/gremlin_graph_create_update_parameters.rb'
    autoload :MetricDefinitionsListResult,                        '2015-04-08/generated/azure_mgmt_cosmosdb/models/metric_definitions_list_result.rb'
    autoload :OperationDisplay,                                   '2015-04-08/generated/azure_mgmt_cosmosdb/models/operation_display.rb'
    autoload :ErrorResponse,                                      '2015-04-08/generated/azure_mgmt_cosmosdb/models/error_response.rb'
    autoload :Operation,                                          '2015-04-08/generated/azure_mgmt_cosmosdb/models/operation.rb'
    autoload :Metric,                                             '2015-04-08/generated/azure_mgmt_cosmosdb/models/metric.rb'
    autoload :OperationListResult,                                '2015-04-08/generated/azure_mgmt_cosmosdb/models/operation_list_result.rb'
    autoload :ExcludedPath,                                       '2015-04-08/generated/azure_mgmt_cosmosdb/models/excluded_path.rb'
    autoload :MetricName,                                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/metric_name.rb'
    autoload :MetricAvailability,                                 '2015-04-08/generated/azure_mgmt_cosmosdb/models/metric_availability.rb'
    autoload :Usage,                                              '2015-04-08/generated/azure_mgmt_cosmosdb/models/usage.rb'
    autoload :DatabaseAccount,                                    '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account.rb'
    autoload :SqlDatabase,                                        '2015-04-08/generated/azure_mgmt_cosmosdb/models/sql_database.rb'
    autoload :SqlContainer,                                       '2015-04-08/generated/azure_mgmt_cosmosdb/models/sql_container.rb'
    autoload :MongoDBDatabase,                                    '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase.rb'
    autoload :MongoDBCollection,                                  '2015-04-08/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection.rb'
    autoload :Table,                                              '2015-04-08/generated/azure_mgmt_cosmosdb/models/table.rb'
    autoload :CassandraKeyspace,                                  '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace.rb'
    autoload :CassandraTable,                                     '2015-04-08/generated/azure_mgmt_cosmosdb/models/cassandra_table.rb'
    autoload :GremlinDatabase,                                    '2015-04-08/generated/azure_mgmt_cosmosdb/models/gremlin_database.rb'
    autoload :GremlinGraph,                                       '2015-04-08/generated/azure_mgmt_cosmosdb/models/gremlin_graph.rb'
    autoload :Throughput,                                         '2015-04-08/generated/azure_mgmt_cosmosdb/models/throughput.rb'
    autoload :DatabaseAccountCreateUpdateParameters,              '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_create_update_parameters.rb'
    autoload :PartitionUsage,                                     '2015-04-08/generated/azure_mgmt_cosmosdb/models/partition_usage.rb'
    autoload :PercentileMetricValue,                              '2015-04-08/generated/azure_mgmt_cosmosdb/models/percentile_metric_value.rb'
    autoload :PartitionMetric,                                    '2015-04-08/generated/azure_mgmt_cosmosdb/models/partition_metric.rb'
    autoload :DatabaseAccountKind,                                '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_kind.rb'
    autoload :DatabaseAccountOfferType,                           '2015-04-08/generated/azure_mgmt_cosmosdb/models/database_account_offer_type.rb'
    autoload :DefaultConsistencyLevel,                            '2015-04-08/generated/azure_mgmt_cosmosdb/models/default_consistency_level.rb'
    autoload :IndexingMode,                                       '2015-04-08/generated/azure_mgmt_cosmosdb/models/indexing_mode.rb'
    autoload :DataType,                                           '2015-04-08/generated/azure_mgmt_cosmosdb/models/data_type.rb'
    autoload :IndexKind,                                          '2015-04-08/generated/azure_mgmt_cosmosdb/models/index_kind.rb'
    autoload :PartitionKind,                                      '2015-04-08/generated/azure_mgmt_cosmosdb/models/partition_kind.rb'
    autoload :ConflictResolutionMode,                             '2015-04-08/generated/azure_mgmt_cosmosdb/models/conflict_resolution_mode.rb'
    autoload :KeyKind,                                            '2015-04-08/generated/azure_mgmt_cosmosdb/models/key_kind.rb'
    autoload :UnitType,                                           '2015-04-08/generated/azure_mgmt_cosmosdb/models/unit_type.rb'
    autoload :PrimaryAggregationType,                             '2015-04-08/generated/azure_mgmt_cosmosdb/models/primary_aggregation_type.rb'
  end
end
