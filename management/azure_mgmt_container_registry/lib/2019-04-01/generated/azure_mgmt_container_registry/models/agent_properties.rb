# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_04_01
  module Models
    #
    # The properties that determine the run agent configuration.
    #
    class AgentProperties

      include MsRestAzure

      # @return [Integer] The CPU configuration in terms of number of cores
      # required for the run.
      attr_accessor :cpu


      #
      # Mapper for AgentProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AgentProperties',
          type: {
            name: 'Composite',
            class_name: 'AgentProperties',
            model_properties: {
              cpu: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cpu',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
