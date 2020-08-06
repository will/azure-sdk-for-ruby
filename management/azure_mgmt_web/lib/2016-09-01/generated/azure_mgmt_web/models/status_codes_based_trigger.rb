# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Trigger based on status code.
    #
    class StatusCodesBasedTrigger

      include MsRestAzure

      # @return [Integer] HTTP status code.
      attr_accessor :status

      # @return [Integer] Request Sub Status.
      attr_accessor :sub_status

      # @return [Integer] Win32 error code.
      attr_accessor :win32status

      # @return [Integer] Request Count.
      attr_accessor :count

      # @return [String] Time interval.
      attr_accessor :time_interval


      #
      # Mapper for StatusCodesBasedTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StatusCodesBasedTrigger',
          type: {
            name: 'Composite',
            class_name: 'StatusCodesBasedTrigger',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Number'
                }
              },
              sub_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subStatus',
                type: {
                  name: 'Number'
                }
              },
              win32status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'win32Status',
                type: {
                  name: 'Number'
                }
              },
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
