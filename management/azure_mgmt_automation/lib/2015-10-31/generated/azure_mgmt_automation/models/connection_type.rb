# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the connection type.
    #
    class ConnectionType

      include MsRestAzure

      # @return [String] Gets the id of the resource.
      attr_accessor :id

      # @return [String] Gets the name of the connection type.
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [Boolean] Gets or sets a Boolean value to indicate if the
      # connection type is global.
      attr_accessor :is_global

      # @return [Hash{String => FieldDefinition}] Gets the field definitions of
      # the connection type.
      attr_accessor :field_definitions

      # @return [DateTime] Gets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets or sets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description


      #
      # Mapper for ConnectionType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionType',
          type: {
            name: 'Composite',
            class_name: 'ConnectionType',
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
              is_global: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isGlobal',
                type: {
                  name: 'Boolean'
                }
              },
              field_definitions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.fieldDefinitions',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FieldDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FieldDefinition'
                      }
                  }
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
