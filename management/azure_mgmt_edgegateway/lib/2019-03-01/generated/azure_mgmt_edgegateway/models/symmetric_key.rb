# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # Symmetric key for authentication.
    #
    class SymmetricKey

      include MsRestAzure

      # @return [AsymmetricEncryptedSecret] Connection string based on the
      # symmetric key.
      attr_accessor :connection_string


      #
      # Mapper for SymmetricKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SymmetricKey',
          type: {
            name: 'Composite',
            class_name: 'SymmetricKey',
            model_properties: {
              connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectionString',
                type: {
                  name: 'Composite',
                  class_name: 'AsymmetricEncryptedSecret'
                }
              }
            }
          }
        }
      end
    end
  end
end
