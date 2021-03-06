# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_04_01_preview
  module Models
    #
    # The comparison expression to be used in the report.
    #
    class ReportConfigComparisonExpression

      include MsRestAzure

      # @return [String] The name of the column to use in comparison.
      attr_accessor :name

      # @return [OperatorType] The operator to use for comparison. Possible
      # values include: 'In', 'Contains'
      attr_accessor :operator

      # @return [Array<String>] Array of values to use for comparison
      attr_accessor :values


      #
      # Mapper for ReportConfigComparisonExpression class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportConfigComparisonExpression',
          type: {
            name: 'Composite',
            class_name: 'ReportConfigComparisonExpression',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              operator: {
                client_side_validation: true,
                required: true,
                serialized_name: 'operator',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: true,
                serialized_name: 'values',
                constraints: {
                  MinItems: 1
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
