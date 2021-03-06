# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_08_01
  module Models
    #
    # Profile for diagnostics on the container service cluster.
    #
    class ContainerServiceDiagnosticsProfile

      include MsRestAzure

      # @return [ContainerServiceVMDiagnostics] Profile for diagnostics on the
      # container service VMs.
      attr_accessor :vm_diagnostics


      #
      # Mapper for ContainerServiceDiagnosticsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerServiceDiagnosticsProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceDiagnosticsProfile',
            model_properties: {
              vm_diagnostics: {
                client_side_validation: true,
                required: true,
                serialized_name: 'vmDiagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceVMDiagnostics'
                }
              }
            }
          }
        }
      end
    end
  end
end
