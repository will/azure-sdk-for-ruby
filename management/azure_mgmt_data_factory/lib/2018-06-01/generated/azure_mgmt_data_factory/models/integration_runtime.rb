# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Azure Data Factory nested object which serves as a compute resource for
    # activities.
    #
    class IntegrationRuntime

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["SelfHosted"] = "SelfHostedIntegrationRuntime"
      @@discriminatorMap["Managed"] = "ManagedIntegrationRuntime"

      def initialize
        @type = "IntegrationRuntime"
      end

      attr_accessor :type

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] Integration runtime description.
      attr_accessor :description


      #
      # Mapper for IntegrationRuntime class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntime',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'IntegrationRuntime',
            class_name: 'IntegrationRuntime',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
