# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Status information about a virtual machine.
    #
    class ComputeVmInstanceViewStatusFragment

      include MsRestAzure

      # @return [String] Gets the status Code.
      attr_accessor :code

      # @return [String] Gets the short localizable label for the status.
      attr_accessor :display_status

      # @return [String] Gets the message associated with the status.
      attr_accessor :message


      #
      # Mapper for ComputeVmInstanceViewStatusFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ComputeVmInstanceViewStatusFragment',
          type: {
            name: 'Composite',
            class_name: 'ComputeVmInstanceViewStatusFragment',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              display_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayStatus',
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
              }
            }
          }
        }
      end
    end
  end
end
