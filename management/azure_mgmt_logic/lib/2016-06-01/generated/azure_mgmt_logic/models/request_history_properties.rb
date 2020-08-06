# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The request history.
    #
    class RequestHistoryProperties

      include MsRestAzure

      # @return [DateTime] The time the request started.
      attr_accessor :start_time

      # @return [DateTime] The time the request ended.
      attr_accessor :end_time

      # @return [Request] The request.
      attr_accessor :request

      # @return [Response] The response.
      attr_accessor :response


      #
      # Mapper for RequestHistoryProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequestHistoryProperties',
          type: {
            name: 'Composite',
            class_name: 'RequestHistoryProperties',
            model_properties: {
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              request: {
                client_side_validation: true,
                required: false,
                serialized_name: 'request',
                type: {
                  name: 'Composite',
                  class_name: 'Request'
                }
              },
              response: {
                client_side_validation: true,
                required: false,
                serialized_name: 'response',
                type: {
                  name: 'Composite',
                  class_name: 'Response'
                }
              }
            }
          }
        }
      end
    end
  end
end
