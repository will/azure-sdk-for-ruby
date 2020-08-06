# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Fabric properties.
    #
    class FabricProperties

      include MsRestAzure

      # @return [String] Friendly name of the fabric.
      attr_accessor :friendly_name

      # @return [EncryptionDetails] Encryption details for the fabric.
      attr_accessor :encryption_details

      # @return [EncryptionDetails] Rollover encryption details for the fabric.
      attr_accessor :rollover_encryption_details

      # @return [String] Dra Registration Id.
      attr_accessor :internal_identifier

      # @return [String] BCDR state of the fabric.
      attr_accessor :bcdr_state

      # @return [FabricSpecificDetails] Fabric specific settings.
      attr_accessor :custom_details

      # @return [Array<HealthError>] Fabric health error details.
      attr_accessor :health_error_details

      # @return [String] Health of fabric.
      attr_accessor :health


      #
      # Mapper for FabricProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FabricProperties',
          type: {
            name: 'Composite',
            class_name: 'FabricProperties',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              encryption_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionDetails',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionDetails'
                }
              },
              rollover_encryption_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rolloverEncryptionDetails',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionDetails'
                }
              },
              internal_identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'internalIdentifier',
                type: {
                  name: 'String'
                }
              },
              bcdr_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bcdrState',
                type: {
                  name: 'String'
                }
              },
              custom_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'FabricSpecificDetails',
                  class_name: 'FabricSpecificDetails'
                }
              },
              health_error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthErrorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
                      }
                  }
                }
              },
              health: {
                client_side_validation: true,
                required: false,
                serialized_name: 'health',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
