# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Diagnostics for an App Service Environment.
    #
    class HostingEnvironmentDiagnostics

      include MsRestAzure

      # @return [String] Name/identifier of the diagnostics.
      attr_accessor :name

      # @return [String] Diagnostics output.
      attr_accessor :diagnosics_output


      #
      # Mapper for HostingEnvironmentDiagnostics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HostingEnvironmentDiagnostics',
          type: {
            name: 'Composite',
            class_name: 'HostingEnvironmentDiagnostics',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              diagnosics_output: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diagnosicsOutput',
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
