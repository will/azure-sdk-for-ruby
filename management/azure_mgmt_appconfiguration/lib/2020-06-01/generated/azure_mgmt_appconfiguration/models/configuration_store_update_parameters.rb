# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2020_06_01
  module Models
    #
    # The parameters for updating a configuration store.
    #
    class ConfigurationStoreUpdateParameters

      include MsRestAzure

      # @return [EncryptionProperties] The encryption settings of the
      # configuration store.
      attr_accessor :encryption

      # @return [ResourceIdentity] The managed identity information for the
      # configuration store.
      attr_accessor :identity

      # @return [Sku] The SKU of the configuration store.
      attr_accessor :sku

      # @return [Hash{String => String}] The ARM resource tags.
      attr_accessor :tags


      #
      # Mapper for ConfigurationStoreUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConfigurationStoreUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ConfigurationStoreUpdateParameters',
            model_properties: {
              encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryption',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionProperties'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceIdentity'
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
              }
            }
          }
        }
      end
    end
  end
end
