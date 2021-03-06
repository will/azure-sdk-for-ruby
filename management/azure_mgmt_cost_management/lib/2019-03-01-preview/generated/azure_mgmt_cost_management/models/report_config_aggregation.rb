# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  module Models
    #
    # The aggregation expression to be used in the report.
    #
    class ReportConfigAggregation

      include MsRestAzure

      # @return [String] The name of the column to aggregate.
      attr_accessor :name

      # @return [String] The name of the aggregation function to use. Default
      # value: 'Sum' .
      attr_accessor :function


      #
      # Mapper for ReportConfigAggregation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportConfigAggregation',
          type: {
            name: 'Composite',
            class_name: 'ReportConfigAggregation',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              function: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'function',
                default_value: 'Sum',
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
