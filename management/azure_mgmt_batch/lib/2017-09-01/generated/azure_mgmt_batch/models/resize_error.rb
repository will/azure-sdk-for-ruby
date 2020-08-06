# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # An error that occurred when resizing a pool.
    #
    #
    class ResizeError

      include MsRestAzure

      # @return [String] An identifier for the error. Codes are invariant and
      # are intended to be consumed programmatically.
      attr_accessor :code

      # @return [String] A message describing the error, intended to be
      # suitable for display in a user interface.
      attr_accessor :message

      # @return [Array<ResizeError>] Additional details about the error.
      attr_accessor :details


      #
      # Mapper for ResizeError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResizeError',
          type: {
            name: 'Composite',
            class_name: 'ResizeError',
            model_properties: {
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResizeErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResizeError'
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
