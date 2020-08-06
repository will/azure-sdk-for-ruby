# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Generate SSO Url operations response details.
    #
    class GenerateSsoUrlResult

      include MsRestAzure

      # @return [String] Redirect Url containing the SSO URL value.
      attr_accessor :value


      #
      # Mapper for GenerateSsoUrlResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GenerateSsoUrlResult',
          type: {
            name: 'Composite',
            class_name: 'GenerateSsoUrlResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
