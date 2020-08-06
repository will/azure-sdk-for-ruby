# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # The name of the quota
    #
    class QuotaName

      include MsRestAzure

      # @return [String] The localized name of the quota
      attr_accessor :localized_value

      # @return [String] The unlocalized name (or ID) of the quota
      attr_accessor :value


      #
      # Mapper for QuotaName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Quota_name',
          type: {
            name: 'Composite',
            class_name: 'QuotaName',
            model_properties: {
              localized_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localizedValue',
                type: {
                  name: 'String'
                }
              },
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
