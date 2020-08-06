# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_03_22_preview
  module Models
    #
    # Result of testing one route
    #
    class TestRouteResult

      include MsRestAzure

      # @return [TestResultStatus] Result of testing route. Possible values
      # include: 'undefined', 'false', 'true'
      attr_accessor :result

      # @return [TestRouteResultDetails] Detailed result of testing route
      attr_accessor :details


      #
      # Mapper for TestRouteResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TestRouteResult',
          type: {
            name: 'Composite',
            class_name: 'TestRouteResult',
            model_properties: {
              result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'result',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Composite',
                  class_name: 'TestRouteResultDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
