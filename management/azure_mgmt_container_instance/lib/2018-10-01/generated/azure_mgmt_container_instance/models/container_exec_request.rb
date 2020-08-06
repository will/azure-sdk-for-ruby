# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_10_01
  module Models
    #
    # The container exec request.
    #
    class ContainerExecRequest

      include MsRestAzure

      # @return [String] The command to be executed.
      attr_accessor :command

      # @return [ContainerExecRequestTerminalSize] The size of the terminal.
      attr_accessor :terminal_size


      #
      # Mapper for ContainerExecRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerExecRequest',
          type: {
            name: 'Composite',
            class_name: 'ContainerExecRequest',
            model_properties: {
              command: {
                client_side_validation: true,
                required: false,
                serialized_name: 'command',
                type: {
                  name: 'String'
                }
              },
              terminal_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'terminalSize',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerExecRequestTerminalSize'
                }
              }
            }
          }
        }
      end
    end
  end
end
