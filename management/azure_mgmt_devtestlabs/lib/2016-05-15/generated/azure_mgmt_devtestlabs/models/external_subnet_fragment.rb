# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Subnet information as returned by the Microsoft.Network API.
    #
    class ExternalSubnetFragment

      include MsRestAzure

      # @return [String] Gets or sets the identifier.
      attr_accessor :id

      # @return [String] Gets or sets the name.
      attr_accessor :name


      #
      # Mapper for ExternalSubnetFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExternalSubnetFragment',
          type: {
            name: 'Composite',
            class_name: 'ExternalSubnetFragment',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
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
