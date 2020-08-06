# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_06_01
  module Models
    #
    # The resource limits.
    #
    class ResourceLimits

      include MsRestAzure

      # @return [Float] The memory limit in GB of this container instance.
      attr_accessor :memory_in_gb

      # @return [Float] The CPU limit of this container instance.
      attr_accessor :cpu


      #
      # Mapper for ResourceLimits class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceLimits',
          type: {
            name: 'Composite',
            class_name: 'ResourceLimits',
            model_properties: {
              memory_in_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'memoryInGB',
                type: {
                  name: 'Double'
                }
              },
              cpu: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cpu',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
