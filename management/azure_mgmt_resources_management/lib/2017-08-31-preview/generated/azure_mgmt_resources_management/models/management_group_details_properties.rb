# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2017_08_31_preview
  module Models
    #
    # The details properties of a management group.
    #
    class ManagementGroupDetailsProperties

      include MsRestAzure

      # @return [Float] The version number of the object.
      attr_accessor :version

      # @return [DateTime] The date and time when this object was last updated.
      attr_accessor :updated_time

      # @return [String] The identity of the principal or process that updated
      # the object.
      attr_accessor :updated_by

      # @return [ParentGroupInfo] Parent.
      attr_accessor :parent

      # @return [Enum] Management Group Type. Possible values include:
      # 'Enrollment', 'Department', 'Account', 'Subscription'
      attr_accessor :management_group_type


      #
      # Mapper for ManagementGroupDetailsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementGroupDetailsProperties',
          type: {
            name: 'Composite',
            class_name: 'ManagementGroupDetailsProperties',
            model_properties: {
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'Double'
                }
              },
              updated_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'updatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              updated_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'updatedBy',
                type: {
                  name: 'String'
                }
              },
              parent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parent',
                type: {
                  name: 'Composite',
                  class_name: 'ParentGroupInfo'
                }
              },
              management_group_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managementGroupType',
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
