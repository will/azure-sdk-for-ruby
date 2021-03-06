# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # The mapping between a particular client IP and the type of access client
    # has on the NFS share.
    #
    class ClientAccessRight

      include MsRestAzure

      # @return [String] IP of the client.
      attr_accessor :client

      # @return [ClientPermissionType] Type of access to be allowed for the
      # client. Possible values include: 'NoAccess', 'ReadOnly', 'ReadWrite'
      attr_accessor :access_permission


      #
      # Mapper for ClientAccessRight class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClientAccessRight',
          type: {
            name: 'Composite',
            class_name: 'ClientAccessRight',
            model_properties: {
              client: {
                client_side_validation: true,
                required: true,
                serialized_name: 'client',
                type: {
                  name: 'String'
                }
              },
              access_permission: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accessPermission',
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
