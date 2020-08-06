# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # The external security solution properties for AAD solutions
    #
    #
    class AadSolutionProperties

      include MsRestAzure

      # @return [String]
      attr_accessor :device_vendor

      # @return [String]
      attr_accessor :device_type

      # @return [ConnectedWorkspace]
      attr_accessor :workspace

      # @return [AadConnectivityState] The connectivity state of the external
      # AAD solution . Possible values include: 'Discovered', 'NotLicensed',
      # 'Connected'
      attr_accessor :connectivity_state


      #
      # Mapper for AadSolutionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AadSolutionProperties',
          type: {
            name: 'Composite',
            class_name: 'AadSolutionProperties',
            model_properties: {
              device_vendor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deviceVendor',
                type: {
                  name: 'String'
                }
              },
              device_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deviceType',
                type: {
                  name: 'String'
                }
              },
              workspace: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workspace',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectedWorkspace'
                }
              },
              connectivity_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectivityState',
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
