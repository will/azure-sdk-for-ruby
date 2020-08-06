# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Describes a Virtual Machine Extension.
    #
    class VirtualMachineExtensionUpdate < UpdateResource

      include MsRestAzure

      # @return [String] How the extension handler should be forced to update
      # even if the extension configuration has not changed.
      attr_accessor :force_update_tag

      # @return [String] The name of the extension handler publisher.
      attr_accessor :publisher

      # @return [String] Specifies the type of the extension; an example is
      # "CustomScriptExtension".
      attr_accessor :type

      # @return [String] Specifies the version of the script handler.
      attr_accessor :type_handler_version

      # @return [Boolean] Indicates whether the extension should use a newer
      # minor version if one is available at deployment time. Once deployed,
      # however, the extension will not upgrade minor versions unless
      # redeployed, even with this property set to true.
      attr_accessor :auto_upgrade_minor_version

      # @return Json formatted public settings for the extension.
      attr_accessor :settings

      # @return The extension can contain either protectedSettings or
      # protectedSettingsFromKeyVault or no protected settings at all.
      attr_accessor :protected_settings


      #
      # Mapper for VirtualMachineExtensionUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineExtensionUpdate',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineExtensionUpdate',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              force_update_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.forceUpdateTag',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publisher',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              type_handler_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.typeHandlerVersion',
                type: {
                  name: 'String'
                }
              },
              auto_upgrade_minor_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoUpgradeMinorVersion',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Object'
                }
              },
              protected_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protectedSettings',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
