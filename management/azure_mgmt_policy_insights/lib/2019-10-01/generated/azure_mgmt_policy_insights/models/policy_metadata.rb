# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2019_10_01
  module Models
    #
    # Policy metadata resource definition.
    #
    class PolicyMetadata

      include MsRestAzure

      # @return [String] The policy metadata identifier.
      attr_accessor :metadata_id

      # @return [String] The category of the policy metadata.
      attr_accessor :category

      # @return [String] The title of the policy metadata.
      attr_accessor :title

      # @return [String] The owner of the policy metadata.
      attr_accessor :owner

      # @return [String] Url for getting additional content about the resource
      # metadata.
      attr_accessor :additional_content_url

      # @return Additional metadata.
      attr_accessor :metadata

      # @return [String] The description of the policy metadata.
      attr_accessor :description

      # @return [String] The requirements of the policy metadata.
      attr_accessor :requirements

      # @return [String] The ID of the policy metadata.
      attr_accessor :id

      # @return [String] The type of the policy metadata.
      attr_accessor :type

      # @return [String] The name of the policy metadata.
      attr_accessor :name


      #
      # Mapper for PolicyMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyMetadata',
          type: {
            name: 'Composite',
            class_name: 'PolicyMetadata',
            model_properties: {
              metadata_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.metadataId',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.category',
                type: {
                  name: 'String'
                }
              },
              title: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.title',
                type: {
                  name: 'String'
                }
              },
              owner: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.owner',
                type: {
                  name: 'String'
                }
              },
              additional_content_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.additionalContentUrl',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Object'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              requirements: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.requirements',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
