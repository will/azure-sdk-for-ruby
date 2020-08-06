# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Billing::Mgmt::V2018_03_01_preview
  module Models
    #
    # An enrollment account resource.
    #
    class EnrollmentAccount < Resource

      include MsRestAzure

      # @return [String] The account owner's principal name.
      attr_accessor :principal_name


      #
      # Mapper for EnrollmentAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnrollmentAccount',
          type: {
            name: 'Composite',
            class_name: 'EnrollmentAccount',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              principal_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.principalName',
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
