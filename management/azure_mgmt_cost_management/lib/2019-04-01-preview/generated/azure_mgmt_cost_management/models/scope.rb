# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_04_01_preview
  module Models
    #
    # The Scope model definition
    #
    class Scope

      include MsRestAzure

      # @return [String] Scope id
      attr_accessor :id

      # @return [String] Scope name
      attr_accessor :name

      # @return [String] Scope type
      attr_accessor :type

      # @return [Scope]
      attr_accessor :child_scope


      #
      # Mapper for Scope class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Scope',
          type: {
            name: 'Composite',
            class_name: 'Scope',
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
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              child_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'childScope',
                type: {
                  name: 'Composite',
                  class_name: 'Scope'
                }
              }
            }
          }
        }
      end
    end
  end
end
