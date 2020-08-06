# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_06_01
  module Models
    #
    # One property of operation, include metric specifications.
    #
    class ServiceSpecification

      include MsRestAzure

      # @return [Array<MetricSpecification>] Metric specifications of
      # operation.
      attr_accessor :metric_specifications


      #
      # Mapper for ServiceSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceSpecification',
          type: {
            name: 'Composite',
            class_name: 'ServiceSpecification',
            model_properties: {
              metric_specifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricSpecification'
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
