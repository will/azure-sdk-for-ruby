# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The integration account map.
    #
    class IntegrationAccountMap < Resource

      include MsRestAzure

      # @return [MapType] The map type. Possible values include:
      # 'NotSpecified', 'Xslt', 'Xslt20', 'Xslt30', 'Liquid'
      attr_accessor :map_type

      # @return [IntegrationAccountMapPropertiesParametersSchema] The
      # parameters schema of integration account map.
      attr_accessor :parameters_schema

      # @return [DateTime] The created time.
      attr_accessor :created_time

      # @return [DateTime] The changed time.
      attr_accessor :changed_time

      # @return [String] The content.
      attr_accessor :content

      # @return [String] The content type.
      attr_accessor :content_type

      # @return [ContentLink] The content link.
      attr_accessor :content_link

      # @return The metadata.
      attr_accessor :metadata


      #
      # Mapper for IntegrationAccountMap class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationAccountMap',
          type: {
            name: 'Composite',
            class_name: 'IntegrationAccountMap',
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
              map_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.mapType',
                type: {
                  name: 'String'
                }
              },
              parameters_schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parametersSchema',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationAccountMapPropertiesParametersSchema'
                }
              },
              created_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              changed_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.changedTime',
                type: {
                  name: 'DateTime'
                }
              },
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.content',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.contentType',
                type: {
                  name: 'String'
                }
              },
              content_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.contentLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
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
