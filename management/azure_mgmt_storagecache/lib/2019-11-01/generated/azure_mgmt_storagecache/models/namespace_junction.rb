# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2019_11_01
  module Models
    #
    # A namespace junction.
    #
    class NamespaceJunction

      include MsRestAzure

      # @return [String] Namespace path on a Cache for a Storage Target.
      attr_accessor :namespace_path

      # @return [String] Path in Storage Target to which namespacePath points.
      attr_accessor :target_path

      # @return [String] NFS export where targetPath exists.
      attr_accessor :nfs_export


      #
      # Mapper for NamespaceJunction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NamespaceJunction',
          type: {
            name: 'Composite',
            class_name: 'NamespaceJunction',
            model_properties: {
              namespace_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'namespacePath',
                type: {
                  name: 'String'
                }
              },
              target_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetPath',
                type: {
                  name: 'String'
                }
              },
              nfs_export: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nfsExport',
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
