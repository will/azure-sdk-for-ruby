# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_06_01
  module Models
    #
    # Event Type for a subject under a topic
    #
    class EventType < Resource

      include MsRestAzure

      # @return [String] Display name of the event type.
      attr_accessor :display_name

      # @return [String] Description of the event type.
      attr_accessor :description

      # @return [String] Url of the schema for this event type.
      attr_accessor :schema_url

      # @return [Boolean] IsInDefaultSet flag of the event type.
      attr_accessor :is_in_default_set


      #
      # Mapper for EventType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventType',
          type: {
            name: 'Composite',
            class_name: 'EventType',
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
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              schema_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.schemaUrl',
                type: {
                  name: 'String'
                }
              },
              is_in_default_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isInDefaultSet',
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
