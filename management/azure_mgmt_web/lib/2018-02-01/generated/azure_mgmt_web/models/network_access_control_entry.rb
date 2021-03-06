# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Network access control entry.
    #
    class NetworkAccessControlEntry

      include MsRestAzure

      # @return [AccessControlEntryAction] Action object. Possible values
      # include: 'Permit', 'Deny'
      attr_accessor :action

      # @return [String] Description of network access control entry.
      attr_accessor :description

      # @return [Integer] Order of precedence.
      attr_accessor :order

      # @return [String] Remote subnet.
      attr_accessor :remote_subnet


      #
      # Mapper for NetworkAccessControlEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkAccessControlEntry',
          type: {
            name: 'Composite',
            class_name: 'NetworkAccessControlEntry',
            model_properties: {
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'Enum',
                  module: 'AccessControlEntryAction'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              order: {
                client_side_validation: true,
                required: false,
                serialized_name: 'order',
                type: {
                  name: 'Number'
                }
              },
              remote_subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteSubnet',
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
