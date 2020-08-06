# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_11_01_preview
  module Models
    #
    # Intelligence Pack containing a string name and boolean indicating if it's
    # enabled.
    #
    class IntelligencePack

      include MsRestAzure

      # @return [String] The name of the intelligence pack.
      attr_accessor :name

      # @return [Boolean] The enabled boolean for the intelligence pack.
      attr_accessor :enabled

      # @return [String] The display name of the intelligence pack.
      attr_accessor :display_name


      #
      # Mapper for IntelligencePack class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntelligencePack',
          type: {
            name: 'Composite',
            class_name: 'IntelligencePack',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
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
