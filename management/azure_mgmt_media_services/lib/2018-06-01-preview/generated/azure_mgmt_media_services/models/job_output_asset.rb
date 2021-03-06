# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Represents an Asset used as a JobOutput.
    #
    class JobOutputAsset < JobOutput

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.JobOutputAsset"
      end

      attr_accessor :odatatype

      # @return [String] The name of the output Asset.
      attr_accessor :asset_name


      #
      # Mapper for JobOutputAsset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.JobOutputAsset',
          type: {
            name: 'Composite',
            class_name: 'JobOutputAsset',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'JobError'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'JobState'
                }
              },
              progress: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'progress',
                type: {
                  name: 'Number'
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              asset_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'assetName',
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
