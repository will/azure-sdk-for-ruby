# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # An error response from the Batch service.
    #
    class DeleteCertificateError

      include MsRestAzure

      # @return [String] An identifier for the error. Codes are invariant and
      # are intended to be consumed programmatically.
      attr_accessor :code

      # @return [String] A message describing the error, intended to be
      # suitable for display in a user interface.
      attr_accessor :message

      # @return [String] The target of the particular error. For example, the
      # name of the property in error.
      attr_accessor :target

      # @return [Array<DeleteCertificateError>] A list of additional details
      # about the error.
      attr_accessor :details


      #
      # Mapper for DeleteCertificateError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeleteCertificateError',
          type: {
            name: 'Composite',
            class_name: 'DeleteCertificateError',
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
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
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
                      serialized_name: 'DeleteCertificateErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeleteCertificateError'
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
