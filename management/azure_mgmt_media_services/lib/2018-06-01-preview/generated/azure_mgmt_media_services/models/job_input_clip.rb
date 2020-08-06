# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Represents input files for a Job.
    #
    class JobInputClip < JobInput

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.JobInputClip"
      end

      attr_accessor :odatatype

      # @return [Array<String>] List of files. Required for JobInputHttp.
      attr_accessor :files


      #
      # Mapper for JobInputClip class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.JobInputClip',
          type: {
            name: 'Composite',
            class_name: 'JobInputClip',
            model_properties: {
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
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
              files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'files',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
