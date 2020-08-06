# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # TensorFlow job settings.
    #
    class TensorFlowSettings

      include MsRestAzure

      # @return [String] Python script file path. The python script to execute.
      attr_accessor :python_script_file_path

      # @return [String] Python interpreter path. The path to the Python
      # interpreter.
      attr_accessor :python_interpreter_path

      # @return [String] Master command line arguments. Command line arguments
      # that need to be passed to the python script for the master task.
      attr_accessor :master_command_line_args

      # @return [String] Worker command line arguments. Command line arguments
      # that need to be passed to the python script for the worker task.
      # Optional for single process jobs.
      attr_accessor :worker_command_line_args

      # @return [String] Parameter server command line arguments. Command line
      # arguments that need to be passed to the python script for the parameter
      # server. Optional for single process jobs.
      attr_accessor :parameter_server_command_line_args

      # @return [Integer] Worker count. The number of worker tasks. If
      # specified, the value must be less than or equal to (nodeCount *
      # numberOfGPUs per VM). If not specified, the default value is equal to
      # nodeCount. This property can be specified only for distributed
      # TensorFlow training.
      attr_accessor :worker_count

      # @return [Integer] Parameter server count. The number of parameter
      # server tasks. If specified, the value must be less than or equal to
      # nodeCount. If not specified, the default value is equal to 1 for
      # distributed TensorFlow training. This property can be specified only
      # for distributed TensorFlow training.
      attr_accessor :parameter_server_count


      #
      # Mapper for TensorFlowSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TensorFlowSettings',
          type: {
            name: 'Composite',
            class_name: 'TensorFlowSettings',
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
              master_command_line_args: {
                client_side_validation: true,
                required: false,
                serialized_name: 'masterCommandLineArgs',
                type: {
                  name: 'String'
                }
              },
              worker_command_line_args: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workerCommandLineArgs',
                type: {
                  name: 'String'
                }
              },
              parameter_server_command_line_args: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameterServerCommandLineArgs',
                type: {
                  name: 'String'
                }
              },
              worker_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workerCount',
                type: {
                  name: 'Number'
                }
              },
              parameter_server_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameterServerCount',
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
