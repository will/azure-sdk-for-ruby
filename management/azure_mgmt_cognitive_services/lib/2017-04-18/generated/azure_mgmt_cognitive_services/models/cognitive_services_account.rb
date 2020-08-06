# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # Cognitive Services Account is an Azure resource representing the
    # provisioned account, its type, location and SKU.
    #
    class CognitiveServicesAccount

      include MsRestAzure

      # @return [String] Entity Tag
      attr_accessor :etag

      # @return [String] The id of the created account
      attr_accessor :id

      # @return [String] The Kind of the resource.
      attr_accessor :kind

      # @return [String] The location of the resource
      attr_accessor :location

      # @return [String] The name of the created account
      attr_accessor :name

      # @return [CognitiveServicesAccountProperties] Properties of Cognitive
      # Services account.
      attr_accessor :properties

      # @return [Sku] The SKU of Cognitive Services account.
      attr_accessor :sku

      # @return [Hash{String => String}] Gets or sets a list of key value pairs
      # that describe the resource. These tags can be used in viewing and
      # grouping this resource (across resource groups). A maximum of 15 tags
      # can be provided for a resource. Each tag must have a key no greater
      # than 128 characters and value no greater than 256 characters.
      attr_accessor :tags

      # @return [String] Resource type
      attr_accessor :type

      # @return [Identity] The identity of Cognitive Services account.
      attr_accessor :identity


      #
      # Mapper for CognitiveServicesAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CognitiveServicesAccount',
          type: {
            name: 'Composite',
            class_name: 'CognitiveServicesAccount',
            model_properties: {
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CognitiveServicesAccountProperties'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              }
            }
          }
        }
      end
    end
  end
end
