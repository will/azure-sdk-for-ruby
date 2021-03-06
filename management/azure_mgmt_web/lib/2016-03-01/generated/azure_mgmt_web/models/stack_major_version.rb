# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Application stack major version.
    #
    class StackMajorVersion

      include MsRestAzure

      # @return [String] Application stack major version (display only).
      attr_accessor :display_version

      # @return [String] Application stack major version (runtime only).
      attr_accessor :runtime_version

      # @return [Boolean] <code>true</code> if this is the default major
      # version; otherwise, <code>false</code>.
      attr_accessor :is_default

      # @return [Array<StackMinorVersion>] Minor versions associated with the
      # major version.
      attr_accessor :minor_versions


      #
      # Mapper for StackMajorVersion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StackMajorVersion',
          type: {
            name: 'Composite',
            class_name: 'StackMajorVersion',
            model_properties: {
              display_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayVersion',
                type: {
                  name: 'String'
                }
              },
              runtime_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'runtimeVersion',
                type: {
                  name: 'String'
                }
              },
              is_default: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isDefault',
                type: {
                  name: 'Boolean'
                }
              },
              minor_versions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minorVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StackMinorVersionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StackMinorVersion'
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
