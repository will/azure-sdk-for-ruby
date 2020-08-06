# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of usage counter name.
    #
    class UsageCounterName

      include MsRestAzure

      # @return [String] Gets or sets the usage counter name.
      attr_accessor :value

      # @return [String] Gets or sets the localized usage counter name.
      attr_accessor :localized_value


      #
      # Mapper for UsageCounterName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UsageCounterName',
          type: {
            name: 'Composite',
            class_name: 'UsageCounterName',
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
