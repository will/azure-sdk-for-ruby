# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # Specifies the boot diagnostic settings state. <br><br>Minimum
    # api-version: 2015-06-15.
    #
    class DiagnosticsProfile

      include MsRestAzure

      # @return [BootDiagnostics] Boot Diagnostics is a debugging feature which
      # allows you to view Console Output and Screenshot to diagnose VM status.
      # <br><br> You can easily view the output of your console log. <br><br>
      # Azure also enables you to see a screenshot of the VM from the
      # hypervisor.
      attr_accessor :boot_diagnostics


      #
      # Mapper for DiagnosticsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiagnosticsProfile',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticsProfile',
            model_properties: {
              boot_diagnostics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bootDiagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'BootDiagnostics'
                }
              }
            }
          }
        }
      end
    end
  end
end
