# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Postgresql::Mgmt::V2017_12_01
  module Models
    #
    # Represents a server to be created.
    #
    class ServerForCreate

      include MsRestAzure

      # @return [Sku] The SKU (pricing tier) of the server.
      attr_accessor :sku

      # @return [ServerPropertiesForCreate] Properties of the server.
      attr_accessor :properties

      # @return [String] The location the resource resides in.
      attr_accessor :location

      # @return [Hash{String => String}] Application-specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags


      #
      # Mapper for ServerForCreate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerForCreate',
          type: {
            name: 'Composite',
            class_name: 'ServerForCreate',
            model_properties: {
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'createMode',
                  uber_parent: 'ServerPropertiesForCreate',
                  class_name: 'ServerPropertiesForCreate'
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
              }
            }
          }
        }
      end
    end
  end
end
