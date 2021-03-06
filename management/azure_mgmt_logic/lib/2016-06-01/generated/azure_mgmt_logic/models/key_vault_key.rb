# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The key vault key.
    #
    class KeyVaultKey

      include MsRestAzure

      # @return [String] The key id.
      attr_accessor :kid

      # @return [KeyVaultKeyAttributes] The key attributes.
      attr_accessor :attributes


      #
      # Mapper for KeyVaultKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultKey',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultKey',
            model_properties: {
              kid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kid',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultKeyAttributes'
                }
              }
            }
          }
        }
      end
    end
  end
end
