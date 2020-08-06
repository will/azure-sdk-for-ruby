# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2016_09_30
  module Models
    #
    # Profile for diagnostics on the container service VMs.
    #
    class ContainerServiceVMDiagnostics

      include MsRestAzure

      # @return [Boolean] Whether the VM diagnostic agent is provisioned on the
      # VM.
      attr_accessor :enabled

      # @return [String] The URI of the storage account where diagnostics are
      # stored.
      attr_accessor :storage_uri


      #
      # Mapper for ContainerServiceVMDiagnostics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerServiceVMDiagnostics',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceVMDiagnostics',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              storage_uri: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'storageUri',
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
