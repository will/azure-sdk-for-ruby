# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_03_22_preview
  module Models
    #
    # Position where the route error happened
    #
    class RouteErrorPosition

      include MsRestAzure

      # @return [Integer] Line where the route error happened
      attr_accessor :line

      # @return [Integer] Column where the route error happened
      attr_accessor :column


      #
      # Mapper for RouteErrorPosition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RouteErrorPosition',
          type: {
            name: 'Composite',
            class_name: 'RouteErrorPosition',
            model_properties: {
              line: {
                client_side_validation: true,
                required: false,
                serialized_name: 'line',
                type: {
                  name: 'Number'
                }
              },
              column: {
                client_side_validation: true,
                required: false,
                serialized_name: 'column',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
