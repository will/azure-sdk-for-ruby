# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The connection type property associated with the entity.
    #
    class ConnectionTypeAssociationProperty

      include MsRestAzure

      # @return [String] Gets or sets the name of the connection type.
      attr_accessor :name


      #
      # Mapper for ConnectionTypeAssociationProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionTypeAssociationProperty',
          type: {
            name: 'Composite',
            class_name: 'ConnectionTypeAssociationProperty',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
