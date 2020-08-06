# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2018_11_01_preview
  module Models
    #
    # Response for long running operation
    #
    class OperationResponse

      include MsRestAzure

      # @return [DateTime] start time
      attr_accessor :end_time

      # @return [DataShareErrorInfo] The error property when status is failed.
      attr_accessor :error

      # @return [DateTime] start time
      attr_accessor :start_time

      # @return [Status] Operation state of the long running operation.
      # Possible values include: 'Accepted', 'InProgress', 'TransientFailure',
      # 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :status


      #
      # Mapper for OperationResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationResponse',
          type: {
            name: 'Composite',
            class_name: 'OperationResponse',
            model_properties: {
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'DataShareErrorInfo'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'status',
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
