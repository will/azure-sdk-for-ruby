# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Microsoft Azure CosmosDB (SQL API) Collection dataset.
    #
    class CosmosDbSqlApiCollectionDataset < Dataset

      include MsRestAzure


      def initialize
        @type = "CosmosDbSqlApiCollection"
      end

      attr_accessor :type

      # @return CosmosDB (SQL API) collection name. Type: string (or Expression
      # with resultType string).
      attr_accessor :collection_name


      #
      # Mapper for CosmosDbSqlApiCollectionDataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CosmosDbSqlApiCollection',
          type: {
            name: 'Composite',
            class_name: 'CosmosDbSqlApiCollectionDataset',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              structure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'structure',
                type: {
                  name: 'Object'
                }
              },
              schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schema',
                type: {
                  name: 'Object'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'linkedServiceName',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              folder: {
                client_side_validation: true,
                required: false,
                serialized_name: 'folder',
                type: {
                  name: 'Composite',
                  class_name: 'DatasetFolder'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              collection_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.collectionName',
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
