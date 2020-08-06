# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # The secrets related to a DataBox job.
    #
    class DataboxJobSecrets < JobSecrets

      include MsRestAzure


      def initialize
        @jobSecretsType = "DataBox"
      end

      attr_accessor :jobSecretsType

      # @return [Array<DataBoxSecret>] Contains the list of secret objects for
      # a job.
      attr_accessor :pod_secrets


      #
      # Mapper for DataboxJobSecrets class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataBox',
          type: {
            name: 'Composite',
            class_name: 'DataboxJobSecrets',
            model_properties: {
              jobSecretsType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'jobSecretsType',
                type: {
                  name: 'String'
                }
              },
              pod_secrets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'podSecrets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataBoxSecretElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataBoxSecret'
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
