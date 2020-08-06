# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Self-hosted integration runtime.
    #
    class SelfHostedIntegrationRuntime < IntegrationRuntime

      include MsRestAzure


      def initialize
        @type = "SelfHosted"
      end

      attr_accessor :type

      # @return [LinkedIntegrationRuntimeProperties]
      attr_accessor :linked_info


      #
      # Mapper for SelfHostedIntegrationRuntime class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SelfHosted',
          type: {
            name: 'Composite',
            class_name: 'SelfHostedIntegrationRuntime',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              linked_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.linkedInfo',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'authorizationType',
                  uber_parent: 'LinkedIntegrationRuntimeProperties',
                  class_name: 'LinkedIntegrationRuntimeProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
