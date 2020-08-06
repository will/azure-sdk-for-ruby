# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Trigger based on total requests.
    #
    class RequestsBasedTrigger

      include MsRestAzure

      # @return [Integer] Request Count.
      attr_accessor :count

      # @return [String] Time interval.
      attr_accessor :time_interval


      #
      # Mapper for RequestsBasedTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequestsBasedTrigger',
          type: {
            name: 'Composite',
            class_name: 'RequestsBasedTrigger',
            model_properties: {
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              time_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeInterval',
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
