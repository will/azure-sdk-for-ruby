# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_10_01
  module Models
    #
    # The credential result response.
    #
    class CredentialResult

      include MsRestAzure

      # @return [String] The name of the credential.
      attr_accessor :name

      # @return [Array<Integer>] Base64-encoded Kubernetes configuration file.
      attr_accessor :value


      #
      # Mapper for CredentialResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CredentialResult',
          type: {
            name: 'Composite',
            class_name: 'CredentialResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'ByteArray'
                }
              }
            }
          }
        }
      end
    end
  end
end
