# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The credential for a given server.
    #
    class Credential

      include MsRestAzure

      # @return [String] The credential identifier.
      attr_accessor :identifier

      # @return [String] The type of credential.
      attr_accessor :type

      # @return [Array<String>] The credential data.
      attr_accessor :credential_data


      #
      # Mapper for Credential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Credential',
          type: {
            name: 'Composite',
            class_name: 'Credential',
            model_properties: {
              identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identifier',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              credential_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'credentialData',
                type: {
                  name: 'Sequence',
                  element: {
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
