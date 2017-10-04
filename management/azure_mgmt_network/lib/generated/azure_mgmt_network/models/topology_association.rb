# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Resources that have an association with the parent resource.
    #
    class TopologyAssociation

      include MsRestAzure

      # @return [String] The name of the resource that is associated with the
      # parent resource.
      attr_accessor :name

      # @return [String] The ID of the resource that is associated with the
      # parent resource.
      attr_accessor :resource_id

      # @return [AssociationType] The association type of the child resource to
      # the parent resource. Possible values include: 'Associated', 'Contains'
      attr_accessor :association_type


      #
      # Mapper for TopologyAssociation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TopologyAssociation',
          type: {
            name: 'Composite',
            class_name: 'TopologyAssociation',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              association_type: {
                required: false,
                serialized_name: 'associationType',
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
