# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_02_01
  module Models
    #
    # Contains information about orchestrator.
    #
    class OrchestratorProfile

      include MsRestAzure

      # @return [String] Orchestrator type.
      attr_accessor :orchestrator_type

      # @return [String] Orchestrator version (major, minor, patch).
      attr_accessor :orchestrator_version


      #
      # Mapper for OrchestratorProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OrchestratorProfile',
          type: {
            name: 'Composite',
            class_name: 'OrchestratorProfile',
            model_properties: {
              orchestrator_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'orchestratorType',
                type: {
                  name: 'String'
                }
              },
              orchestrator_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'orchestratorVersion',
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
