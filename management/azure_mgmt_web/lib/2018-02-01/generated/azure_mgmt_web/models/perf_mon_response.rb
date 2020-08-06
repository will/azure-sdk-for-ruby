# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Performance monitor API response.
    #
    class PerfMonResponse

      include MsRestAzure

      # @return [String] The response code.
      attr_accessor :code

      # @return [String] The message.
      attr_accessor :message

      # @return [PerfMonSet] The performance monitor counters.
      attr_accessor :data


      #
      # Mapper for PerfMonResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PerfMonResponse',
          type: {
            name: 'Composite',
            class_name: 'PerfMonResponse',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'data',
                type: {
                  name: 'Composite',
                  class_name: 'PerfMonSet'
                }
              }
            }
          }
        }
      end
    end
  end
end
