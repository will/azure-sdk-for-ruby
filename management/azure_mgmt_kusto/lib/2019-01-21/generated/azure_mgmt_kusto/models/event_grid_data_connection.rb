# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_01_21
  module Models
    #
    # Class representing an Event Grid data connection.
    #
    class EventGridDataConnection < DataConnection

      include MsRestAzure


      def initialize
        @kind = "EventGrid"
      end

      attr_accessor :kind

      # @return [String] The resource ID of the storage account where the data
      # resides.
      attr_accessor :storage_account_resource_id

      # @return [String] The resource ID where the event grid is configured to
      # send events.
      attr_accessor :event_hub_resource_id

      # @return [String] The event hub consumer group.
      attr_accessor :consumer_group

      # @return [String] The table where the data should be ingested.
      # Optionally the table information can be added to each message.
      attr_accessor :table_name

      # @return [String] The mapping rule to be used to ingest the data.
      # Optionally the mapping information can be added to each message.
      attr_accessor :mapping_rule_name

      # @return [DataFormat] The data format of the message. Optionally the
      # data format can be added to each message. Possible values include:
      # 'MULTIJSON', 'JSON', 'CSV', 'TSV', 'SCSV', 'SOHSV', 'PSV', 'TXT',
      # 'RAW', 'SINGLEJSON', 'AVRO'
      attr_accessor :data_format


      #
      # Mapper for EventGridDataConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventGrid',
          type: {
            name: 'Composite',
            class_name: 'EventGridDataConnection',
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
              storage_account_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.storageAccountResourceId',
                type: {
                  name: 'String'
                }
              },
              event_hub_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.eventHubResourceId',
                type: {
                  name: 'String'
                }
              },
              consumer_group: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.consumerGroup',
                type: {
                  name: 'String'
                }
              },
              table_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.tableName',
                type: {
                  name: 'String'
                }
              },
              mapping_rule_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mappingRuleName',
                type: {
                  name: 'String'
                }
              },
              data_format: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.dataFormat',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
