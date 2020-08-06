# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # Map a field of profile to its corresponding StrongId in Related Profile.
    #
    class RelationshipTypeFieldMapping

      include MsRestAzure

      # @return [String] Specifies the fieldName in profile.
      attr_accessor :profile_field_name

      # @return [String] Specifies the KeyProperty (from StrongId) of the
      # related profile.
      attr_accessor :related_profile_key_property


      #
      # Mapper for RelationshipTypeFieldMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RelationshipTypeFieldMapping',
          type: {
            name: 'Composite',
            class_name: 'RelationshipTypeFieldMapping',
            model_properties: {
              profile_field_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'profileFieldName',
                type: {
                  name: 'String'
                }
              },
              related_profile_key_property: {
                client_side_validation: true,
                required: true,
                serialized_name: 'relatedProfileKeyProperty',
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
