# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Capture Virtual Machine parameters.
    #
    class RunCommandInput

      include MsRestAzure

      # @return [String] The run command id.
      attr_accessor :command_id

      # @return [Array<String>] Optional. The script to be executed.  When this
      # value is given, the given script will override the default script of
      # the command.
      attr_accessor :script

      # @return [Array<RunCommandInputParameter>] The run command parameters.
      attr_accessor :parameters


      #
      # Mapper for RunCommandInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunCommandInput',
          type: {
            name: 'Composite',
            class_name: 'RunCommandInput',
            model_properties: {
              command_id: {
                required: true,
                serialized_name: 'commandId',
                type: {
                  name: 'String'
                }
              },
              script: {
                required: false,
                serialized_name: 'script',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RunCommandInputParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RunCommandInputParameter'
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
