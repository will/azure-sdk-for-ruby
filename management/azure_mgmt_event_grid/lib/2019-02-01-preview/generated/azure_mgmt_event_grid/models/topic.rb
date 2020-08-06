# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # EventGrid Topic
    #
    class Topic < TrackedResource

      include MsRestAzure

      # @return [TopicProvisioningState] Provisioning state of the topic.
      # Possible values include: 'Creating', 'Updating', 'Deleting',
      # 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Endpoint for the topic.
      attr_accessor :endpoint

      # @return [InputSchema] This determines the format that Event Grid should
      # expect for incoming events published to the topic. Possible values
      # include: 'EventGridSchema', 'CustomEventSchema', 'CloudEventV01Schema'.
      # Default value: 'EventGridSchema' .
      attr_accessor :input_schema

      # @return [InputSchemaMapping] This enables publishing using custom event
      # schemas. An InputSchemaMapping can be specified to map various
      # properties of a source schema to various required properties of the
      # EventGridEvent schema.
      attr_accessor :input_schema_mapping


      #
      # Mapper for Topic class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Topic',
          type: {
            name: 'Composite',
            class_name: 'Topic',
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
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endpoint',
                type: {
                  name: 'String'
                }
              },
              input_schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inputSchema',
                default_value: 'EventGridSchema',
                type: {
                  name: 'String'
                }
              },
              input_schema_mapping: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inputSchemaMapping',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'inputSchemaMappingType',
                  uber_parent: 'InputSchemaMapping',
                  class_name: 'InputSchemaMapping'
                }
              }
            }
          }
        }
      end
    end
  end
end
