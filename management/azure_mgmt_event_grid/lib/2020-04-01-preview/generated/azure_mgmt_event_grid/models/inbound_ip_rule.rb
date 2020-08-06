# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # Model object.
    #
    #
    class InboundIpRule

      include MsRestAzure

      # @return [String] IP Address in CIDR notation e.g., 10.0.0.0/8.
      attr_accessor :ip_mask

      # @return [IpActionType] Action to perform based on the match or no match
      # of the IpMask. Possible values include: 'Allow'
      attr_accessor :action


      #
      # Mapper for InboundIpRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InboundIpRule',
          type: {
            name: 'Composite',
            class_name: 'InboundIpRule',
            model_properties: {
              ip_mask: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipMask',
                type: {
                  name: 'String'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
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
