# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # File Server mounting configuration.
    #
    class FileServerReference

      include MsRestAzure

      # @return [ResourceId] File server. Resource ID of the existing File
      # Server to be mounted.
      attr_accessor :file_server

      # @return [String] Source directory. File Server directory that needs to
      # be mounted. If this property is not specified, the entire File Server
      # will be mounted.
      attr_accessor :source_directory

      # @return [String] Relative mount path. The relative path on the compute
      # node where the File Server will be mounted. Note that all cluster level
      # file servers will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and
      # all job level file servers will be mounted under
      # $AZ_BATCHAI_JOB_MOUNT_ROOT.
      attr_accessor :relative_mount_path

      # @return [String] Mount options. Mount options to be passed to mount
      # command.
      attr_accessor :mount_options


      #
      # Mapper for FileServerReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileServerReference',
          type: {
            name: 'Composite',
            class_name: 'FileServerReference',
            model_properties: {
              file_server: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fileServer',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              source_directory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceDirectory',
                type: {
                  name: 'String'
                }
              },
              relative_mount_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'relativeMountPath',
                type: {
                  name: 'String'
                }
              },
              mount_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mountOptions',
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
