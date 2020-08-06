# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The parameters supplied to the update webhook operation.
    #
    class WebhookUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the webhook.
      attr_accessor :name

      # @return [Boolean] Gets or sets the value of the enabled flag of
      # webhook.
      attr_accessor :is_enabled

      # @return [String] Gets or sets the name of the hybrid worker group the
      # webhook job will run on.
      attr_accessor :run_on

      # @return [Hash{String => String}] Gets or sets the parameters of the
      # job.
      attr_accessor :parameters

      # @return [String] Gets or sets the description of the webhook.
      attr_accessor :description


      #
      # Mapper for WebhookUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebhookUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'WebhookUpdateParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              run_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runOn',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
