# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # Metric Dimension v1.
    #
    class MetricDimensionV1

      include MsRestAzure

      # @return [String] Name of the metrics dimension.
      attr_accessor :name

      # @return [String] Display name of the metrics dimension.
      attr_accessor :display_name

      # @return [Boolean] To be exported to shoe box.
      attr_accessor :to_be_exported_for_shoebox


      #
      # Mapper for MetricDimensionV1 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricDimension_V1',
          type: {
            name: 'Composite',
            class_name: 'MetricDimensionV1',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              to_be_exported_for_shoebox: {
                client_side_validation: true,
                required: false,
                serialized_name: 'toBeExportedForShoebox',
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
