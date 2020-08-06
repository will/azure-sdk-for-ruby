# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Localizable string object containing the name and a localized value.
    #
    class LocalizableString

      include MsRestAzure

      # @return [String] Non-localized name.
      attr_accessor :value

      # @return [String] Localized name.
      attr_accessor :localized_value


      #
      # Mapper for LocalizableString class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LocalizableString',
          type: {
            name: 'Composite',
            class_name: 'LocalizableString',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              localized_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localizedValue',
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
