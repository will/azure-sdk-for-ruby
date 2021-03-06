# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_01_01_preview
  module Models
    #
    # Properties of a topic type info.
    #
    class TopicTypeInfo < Resource

      include MsRestAzure

      # @return [String] Namespace of the provider of the topic type.
      attr_accessor :provider

      # @return [String] Display Name for the topic type.
      attr_accessor :display_name

      # @return [String] Description of the topic type.
      attr_accessor :description

      # @return [ResourceRegionType] Region type of the resource. Possible
      # values include: 'RegionalResource', 'GlobalResource'
      attr_accessor :resource_region_type

      # @return [TopicTypeProvisioningState] Provisioning state of the topic
      # type. Possible values include: 'Creating', 'Updating', 'Deleting',
      # 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state

      # @return [Array<String>] List of locations supported by this topic type.
      attr_accessor :supported_locations


      #
      # Mapper for TopicTypeInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TopicTypeInfo',
          type: {
            name: 'Composite',
            class_name: 'TopicTypeInfo',
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
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provider',
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
              resource_region_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceRegionType',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              supported_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportedLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
