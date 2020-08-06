# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Operations discovery class.
    #
    class OperationsDiscovery

      include MsRestAzure

      # @return [String] Name of the API. The name of the operation being
      # performed on this particular object. It should match the action name
      # that appears in RBAC / the event service. Examples of operations
      # include: * Microsoft.Compute/virtualMachine/capture/action *
      # Microsoft.Compute/virtualMachine/restart/action *
      # Microsoft.Compute/virtualMachine/write *
      # Microsoft.Compute/virtualMachine/read *
      # Microsoft.Compute/virtualMachine/delete Each action should include, in
      # order: (1) Resource Provider Namespace (2) Type hierarchy for which the
      # action applies (e.g. server/databases for a SQL Azure database) (3)
      # Read, Write, Action or Delete indicating which type applies. If it is a
      # PUT/PATCH on a collection or named value, Write should be used. If it
      # is a GET, Read should be used. If it is a DELETE, Delete should be
      # used. If it is a POST, Action should be used. As a note: all resource
      # providers would need to include the "{Resource Provider
      # Namespace}/register/action" operation in their response. This API is
      # used to register for their service, and should include details about
      # the operation (e.g. a localized name for the resource provider + any
      # special considerations like PII release)
      attr_accessor :name

      # @return [Display] Object type
      attr_accessor :display

      # @return [String] Origin. The intended executor of the operation;
      # governs the display of the operation in the RBAC UX and the audit logs
      # UX. Default value is "user,system"
      attr_accessor :origin

      # @return Properties. Reserved for future use.
      attr_accessor :properties


      #
      # Mapper for OperationsDiscovery class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationsDiscovery',
          type: {
            name: 'Composite',
            class_name: 'OperationsDiscovery',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'Display'
                }
              },
              origin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
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
