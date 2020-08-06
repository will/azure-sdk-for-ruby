# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Diagnostic details.
    #
    class DiagnosticContract < Resource

      include MsRestAzure

      # @return [Boolean] Indicates whether a diagnostic should receive data or
      # not.
      attr_accessor :enabled


      #
      # Mapper for DiagnosticContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiagnosticContract',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
