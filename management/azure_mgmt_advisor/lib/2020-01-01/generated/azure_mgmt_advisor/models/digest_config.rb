# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Advisor::Mgmt::V2020_01_01
  module Models
    #
    # Advisor Digest configuration entity
    #
    class DigestConfig

      include MsRestAzure

      # @return [String] Name of digest configuration. Value is
      # case-insensitive and must be unique within a subscription.
      attr_accessor :name

      # @return [String] Action group resource id used by digest.
      attr_accessor :action_group_resource_id

      # @return [Integer] Frequency that digest will be triggered, in days.
      # Value must be between 7 and 30 days inclusive.
      attr_accessor :frequency

      # @return [Array<Category>] Categories to send digest for. If categories
      # are not provided, then digest will be sent for all categories.
      attr_accessor :categories

      # @return [String] Language for digest content body. Value must be ISO
      # 639-1 code for one of Azure portal supported languages. Otherwise, it
      # will be converted into one. Default value is English (en).
      attr_accessor :language

      # @return [DigestConfigState] State of digest configuration. Possible
      # values include: 'Active', 'Disabled'
      attr_accessor :state


      #
      # Mapper for DigestConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DigestConfig',
          type: {
            name: 'Composite',
            class_name: 'DigestConfig',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              action_group_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionGroupResourceId',
                type: {
                  name: 'String'
                }
              },
              frequency: {
                client_side_validation: true,
                required: false,
                serialized_name: 'frequency',
                type: {
                  name: 'Number'
                }
              },
              categories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'categories',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CategoryElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'language',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
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
