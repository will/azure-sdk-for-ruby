# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Describes a database within a MongoDB data source
    #
    class MongoDbDatabaseInfo < MongoDbObjectInfo

      include MsRestAzure

      # @return [Array<MongoDbCollectionInfo>] A list of supported collections
      # in a MongoDB database
      attr_accessor :collections

      # @return [Boolean] Whether the database has sharding enabled. Note that
      # the migration task will enable sharding on the target if necessary.
      attr_accessor :supports_sharding


      #
      # Mapper for MongoDbDatabaseInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoDbDatabaseInfo',
          type: {
            name: 'Composite',
            class_name: 'MongoDbDatabaseInfo',
            model_properties: {
              average_document_size: {
                client_side_validation: true,
                required: true,
                serialized_name: 'averageDocumentSize',
                type: {
                  name: 'Number'
                }
              },
              data_size: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dataSize',
                type: {
                  name: 'Number'
                }
              },
              document_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'documentCount',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              qualified_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'qualifiedName',
                type: {
                  name: 'String'
                }
              },
              collections: {
                client_side_validation: true,
                required: true,
                serialized_name: 'collections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MongoDbCollectionInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MongoDbCollectionInfo'
                      }
                  }
                }
              },
              supports_sharding: {
                client_side_validation: true,
                required: true,
                serialized_name: 'supportsSharding',
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
