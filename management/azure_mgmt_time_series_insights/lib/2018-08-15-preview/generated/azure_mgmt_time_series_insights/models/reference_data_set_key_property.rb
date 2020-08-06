# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # A key property for the reference data set. A reference data set can have
    # multiple key properties.
    #
    class ReferenceDataSetKeyProperty

      include MsRestAzure

      # @return [String] The name of the key property.
      attr_accessor :name

      # @return [ReferenceDataKeyPropertyType] The type of the key property.
      # Possible values include: 'String', 'Double', 'Bool', 'DateTime'
      attr_accessor :type


      #
      # Mapper for ReferenceDataSetKeyProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReferenceDataSetKeyProperty',
          type: {
            name: 'Composite',
            class_name: 'ReferenceDataSetKeyProperty',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
