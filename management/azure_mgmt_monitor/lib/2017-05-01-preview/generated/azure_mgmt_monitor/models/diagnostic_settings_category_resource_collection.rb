# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_05_01_preview
  module Models
    #
    # Represents a collection of diagnostic setting category resources.
    #
    class DiagnosticSettingsCategoryResourceCollection

      include MsRestAzure

      # @return [Array<DiagnosticSettingsCategoryResource>] The collection of
      # diagnostic settings category resources.
      attr_accessor :value


      #
      # Mapper for DiagnosticSettingsCategoryResourceCollection class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiagnosticSettingsCategoryResourceCollection',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticSettingsCategoryResourceCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiagnosticSettingsCategoryResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiagnosticSettingsCategoryResource'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
