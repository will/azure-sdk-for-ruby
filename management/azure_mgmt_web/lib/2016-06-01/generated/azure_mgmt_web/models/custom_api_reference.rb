# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_06_01
  module Models
    #
    # The custom API reference
    #
    class CustomApiReference < ApiReference

      include MsRestAzure


      #
      # Mapper for CustomApiReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomApiReference',
          type: {
            name: 'Composite',
            class_name: 'CustomApiReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              swagger: {
                client_side_validation: true,
                required: false,
                serialized_name: 'swagger',
                type: {
                  name: 'Object'
                }
              },
              brand_color: {
                client_side_validation: true,
                required: false,
                serialized_name: 'brandColor',
                type: {
                  name: 'String'
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
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              icon_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'iconUri',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
