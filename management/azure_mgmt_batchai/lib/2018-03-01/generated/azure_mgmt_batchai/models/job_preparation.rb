# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Specifies the settings for job preparation.
    #
    class JobPreparation

      include MsRestAzure

      # @return [String] The command line to execute. If containerSettings is
      # specified on the job, this commandLine will be executed in the same
      # container as job. Otherwise it will be executed on the node.
      attr_accessor :command_line


      #
      # Mapper for JobPreparation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobPreparation',
          type: {
            name: 'Composite',
            class_name: 'JobPreparation',
            model_properties: {
              command_line: {
                client_side_validation: true,
                required: true,
                serialized_name: 'commandLine',
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
