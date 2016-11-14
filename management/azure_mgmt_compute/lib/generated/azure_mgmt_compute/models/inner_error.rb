# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Inner error details.
    #
    class InnerError

      include MsRestAzure

      # @return [String] the exception type.
      attr_accessor :exceptiontype

      # @return [String] the internal error message or exception dump.
      attr_accessor :errordetail


      #
      # Mapper for InnerError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InnerError',
          type: {
            name: 'Composite',
            class_name: 'InnerError',
            model_properties: {
              exceptiontype: {
                required: false,
                serialized_name: 'exceptiontype',
                type: {
                  name: 'String'
                }
              },
              errordetail: {
                required: false,
                serialized_name: 'errordetail',
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