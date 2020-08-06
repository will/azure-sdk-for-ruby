# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Body logging settings.
    #
    class BodyDiagnosticSettings

      include MsRestAzure

      # @return [Integer] Number of request body bytes to log.
      attr_accessor :bytes


      #
      # Mapper for BodyDiagnosticSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BodyDiagnosticSettings',
          type: {
            name: 'Composite',
            class_name: 'BodyDiagnosticSettings',
            model_properties: {
              bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bytes',
                constraints: {
                  InclusiveMaximum: 8192
                },
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
