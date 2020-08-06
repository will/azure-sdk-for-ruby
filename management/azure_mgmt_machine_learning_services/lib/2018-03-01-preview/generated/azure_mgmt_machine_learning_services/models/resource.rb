# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2018_03_01_preview
  module Models
    #
    # Azure Resource Manager resource envelope.
    #
    class Resource

      include MsRestAzure

      # @return [String] Specifies the resource ID.
      attr_accessor :id

      # @return [String] Specifies the name of the resource.
      attr_accessor :name

      # @return [Identity] The identity of the resource.
      attr_accessor :identity

      # @return [String] Specifies the location of the resource.
      attr_accessor :location

      # @return [String] Specifies the type of the resource.
      attr_accessor :type

      # @return [Hash{String => String}] Contains resource tags defined as
      # key/value pairs.
      attr_accessor :tags


      # @return [String] the name of the resource group of the resource.
      def resource_group
        unless self.id.nil?
          groups = self.id.match(/.+\/resourceGroups\/([^\/]+)\/.+/)
          groups.captures[0].strip if groups
        end
      end


      #
      # Mapper for Resource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Resource',
          type: {
            name: 'Composite',
            class_name: 'Resource',
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
              identity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              }
            }
          }
        }
      end
    end
  end
end
