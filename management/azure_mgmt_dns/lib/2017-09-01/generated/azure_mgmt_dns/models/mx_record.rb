# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2017_09_01
  module Models
    #
    # An MX record.
    #
    class MxRecord

      include MsRestAzure

      # @return [Integer] The preference value for this MX record.
      attr_accessor :preference

      # @return [String] The domain name of the mail host for this MX record.
      attr_accessor :exchange


      #
      # Mapper for MxRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MxRecord',
          type: {
            name: 'Composite',
            class_name: 'MxRecord',
            model_properties: {
              preference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preference',
                type: {
                  name: 'Number'
                }
              },
              exchange: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exchange',
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
