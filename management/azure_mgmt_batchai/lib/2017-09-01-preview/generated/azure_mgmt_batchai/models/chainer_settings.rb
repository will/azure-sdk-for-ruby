# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # Specifies the settings for Chainer job.
    #
    class ChainerSettings

      include MsRestAzure

      # @return [String] The path and file name of the python script to execute
      # the job.
      attr_accessor :python_script_file_path

      # @return [String] The path to python interpreter.
      attr_accessor :python_interpreter_path

      # @return [String] Command line arguments that needs to be passed to the
      # python script.
      attr_accessor :command_line_args

      # @return [Integer] Number of processes parameter that is passed to MPI
      # runtime. The default value for this property is equal to nodeCount
      # property
      attr_accessor :process_count


      #
      # Mapper for ChainerSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChainerSettings',
          type: {
            name: 'Composite',
            class_name: 'ChainerSettings',
            model_properties: {
              python_script_file_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'pythonScriptFilePath',
                type: {
                  name: 'String'
                }
              },
              python_interpreter_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pythonInterpreterPath',
                type: {
                  name: 'String'
                }
              },
              command_line_args: {
                client_side_validation: true,
                required: false,
                serialized_name: 'commandLineArgs',
                type: {
                  name: 'String'
                }
              },
              process_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'processCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
