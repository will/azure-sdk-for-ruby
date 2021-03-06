# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # A copy activity source.
    #
    class CopySource

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AmazonRedshiftSource"] = "AmazonRedshiftSource"
      @@discriminatorMap["ResponsysSource"] = "ResponsysSource"
      @@discriminatorMap["SalesforceMarketingCloudSource"] = "SalesforceMarketingCloudSource"
      @@discriminatorMap["VerticaSource"] = "VerticaSource"
      @@discriminatorMap["NetezzaSource"] = "NetezzaSource"
      @@discriminatorMap["ZohoSource"] = "ZohoSource"
      @@discriminatorMap["XeroSource"] = "XeroSource"
      @@discriminatorMap["SquareSource"] = "SquareSource"
      @@discriminatorMap["SparkSource"] = "SparkSource"
      @@discriminatorMap["ShopifySource"] = "ShopifySource"
      @@discriminatorMap["ServiceNowSource"] = "ServiceNowSource"
      @@discriminatorMap["QuickBooksSource"] = "QuickBooksSource"
      @@discriminatorMap["PrestoSource"] = "PrestoSource"
      @@discriminatorMap["PhoenixSource"] = "PhoenixSource"
      @@discriminatorMap["PaypalSource"] = "PaypalSource"
      @@discriminatorMap["MarketoSource"] = "MarketoSource"
      @@discriminatorMap["MariaDBSource"] = "MariaDBSource"
      @@discriminatorMap["MagentoSource"] = "MagentoSource"
      @@discriminatorMap["JiraSource"] = "JiraSource"
      @@discriminatorMap["ImpalaSource"] = "ImpalaSource"
      @@discriminatorMap["HubspotSource"] = "HubspotSource"
      @@discriminatorMap["HiveSource"] = "HiveSource"
      @@discriminatorMap["HBaseSource"] = "HBaseSource"
      @@discriminatorMap["GreenplumSource"] = "GreenplumSource"
      @@discriminatorMap["GoogleBigQuerySource"] = "GoogleBigQuerySource"
      @@discriminatorMap["EloquaSource"] = "EloquaSource"
      @@discriminatorMap["DrillSource"] = "DrillSource"
      @@discriminatorMap["CouchbaseSource"] = "CouchbaseSource"
      @@discriminatorMap["ConcurSource"] = "ConcurSource"
      @@discriminatorMap["AzurePostgreSqlSource"] = "AzurePostgreSqlSource"
      @@discriminatorMap["AmazonMWSSource"] = "AmazonMWSSource"
      @@discriminatorMap["HttpSource"] = "HttpSource"
      @@discriminatorMap["AzureDataLakeStoreSource"] = "AzureDataLakeStoreSource"
      @@discriminatorMap["MongoDbSource"] = "MongoDbSource"
      @@discriminatorMap["CassandraSource"] = "CassandraSource"
      @@discriminatorMap["WebSource"] = "WebSource"
      @@discriminatorMap["OracleSource"] = "OracleSource"
      @@discriminatorMap["AzureMySqlSource"] = "AzureMySqlSource"
      @@discriminatorMap["HdfsSource"] = "HdfsSource"
      @@discriminatorMap["FileSystemSource"] = "FileSystemSource"
      @@discriminatorMap["SqlDWSource"] = "SqlDWSource"
      @@discriminatorMap["SqlSource"] = "SqlSource"
      @@discriminatorMap["SapEccSource"] = "SapEccSource"
      @@discriminatorMap["SapCloudForCustomerSource"] = "SapCloudForCustomerSource"
      @@discriminatorMap["SalesforceSource"] = "SalesforceSource"
      @@discriminatorMap["RelationalSource"] = "RelationalSource"
      @@discriminatorMap["DynamicsSource"] = "DynamicsSource"
      @@discriminatorMap["DocumentDbCollectionSource"] = "DocumentDbCollectionSource"
      @@discriminatorMap["BlobSource"] = "BlobSource"
      @@discriminatorMap["AzureTableSource"] = "AzureTableSource"

      def initialize
        @type = "CopySource"
      end

      attr_accessor :type

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return Source retry count. Type: integer (or Expression with
      # resultType integer).
      attr_accessor :source_retry_count

      # @return Source retry wait. Type: string (or Expression with resultType
      # string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
      attr_accessor :source_retry_wait


      #
      # Mapper for CopySource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CopySource',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'CopySource',
            class_name: 'CopySource',
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
              }
            }
          }
        }
      end
    end
  end
end
