# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # A collection of environment variables with secret values to set.
    #
    class EnvironmentVariableWithSecretValue

      include MsRestAzure

      # @return [String] The name of the environment variable to store the
      # secret value.
      attr_accessor :name

      # @return [String] The value of the environment variable. This value will
      # never be reported back by Batch AI.
      attr_accessor :value

      # @return [KeyVaultSecretReference] Specifies the location of the Azure
      # KeyVault secret which will be used as the environment variable value.
      # Specifies KeyVault Store and Secret which contains the value for the
      # environment variable. One of value or valueSecretReference must be
      # provided.
      attr_accessor :value_secret_reference


      #
      # Mapper for EnvironmentVariableWithSecretValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnvironmentVariableWithSecretValue',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentVariableWithSecretValue',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              value_secret_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'valueSecretReference',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultSecretReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
