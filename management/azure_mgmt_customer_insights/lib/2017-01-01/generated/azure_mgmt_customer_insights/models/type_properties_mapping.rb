# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # Metadata for a Link's property mapping.
    #
    class TypePropertiesMapping

      include MsRestAzure

      # @return [String]  Property name on the source Interaction Type.
      attr_accessor :interaction_type_property_name

      # @return [String] Property name on the target Profile Type.
      attr_accessor :profile_type_property_name

      # @return [Boolean] Flag to indicate whether the Profile Type property is
      # an id on the Profile Type.
      attr_accessor :is_profile_type_id

      # @return [LinkTypes] Link type. Possible values include: 'UpdateAlways',
      # 'CopyIfNull'
      attr_accessor :link_type


      #
      # Mapper for TypePropertiesMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TypePropertiesMapping',
          type: {
            name: 'Composite',
            class_name: 'TypePropertiesMapping',
            model_properties: {
              interaction_type_property_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'interactionTypePropertyName',
                type: {
                  name: 'String'
                }
              },
              profile_type_property_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'profileTypePropertyName',
                type: {
                  name: 'String'
                }
              },
              is_profile_type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isProfileTypeId',
                type: {
                  name: 'Boolean'
                }
              },
              link_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkType',
                type: {
                  name: 'Enum',
                  module: 'LinkTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end
