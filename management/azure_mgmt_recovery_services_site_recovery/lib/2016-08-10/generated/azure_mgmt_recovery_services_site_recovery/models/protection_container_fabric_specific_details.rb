# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Base class for fabric specific details of container.
    #
    class ProtectionContainerFabricSpecificDetails

      include MsRestAzure

      # @return [String] Gets the class type. Overriden in derived classes.
      attr_accessor :instance_type


      #
      # Mapper for ProtectionContainerFabricSpecificDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectionContainerFabricSpecificDetails',
          type: {
            name: 'Composite',
            class_name: 'ProtectionContainerFabricSpecificDetails',
            model_properties: {
              instance_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'instanceType',
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
