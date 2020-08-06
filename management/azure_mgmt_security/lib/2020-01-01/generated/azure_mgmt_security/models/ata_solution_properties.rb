# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # The external security solution properties for ATA solutions
    #
    #
    class AtaSolutionProperties < ExternalSecuritySolutionProperties

      include MsRestAzure

      # @return [String]
      attr_accessor :last_event_received


      #
      # Mapper for AtaSolutionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AtaSolutionProperties',
          type: {
            name: 'Composite',
            class_name: 'AtaSolutionProperties',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
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
              last_event_received: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastEventReceived',
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
