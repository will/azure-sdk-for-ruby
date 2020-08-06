# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # Custom MPI job settings.
    #
    class CustomMpiSettings

      include MsRestAzure

      # @return [String] Command line. The command line to be executed by mpi
      # runtime on each compute node.
      attr_accessor :command_line

      # @return [Integer] Process count. Number of processes to launch for the
      # job execution. The default value for this property is equal to
      # nodeCount property
      attr_accessor :process_count


      #
      # Mapper for CustomMpiSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomMpiSettings',
          type: {
            name: 'Composite',
            class_name: 'CustomMpiSettings',
            model_properties: {
              command_line: {
                client_side_validation: true,
                required: true,
                serialized_name: 'commandLine',
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
