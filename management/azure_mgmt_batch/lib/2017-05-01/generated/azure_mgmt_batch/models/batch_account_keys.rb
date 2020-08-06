# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_05_01
  module Models
    #
    # A set of Azure Batch account keys.
    #
    class BatchAccountKeys

      include MsRestAzure

      # @return [String] The Batch account name.
      attr_accessor :account_name

      # @return [String] The primary key associated with the account.
      attr_accessor :primary

      # @return [String] The secondary key associated with the account.
      attr_accessor :secondary


      #
      # Mapper for BatchAccountKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BatchAccountKeys',
          type: {
            name: 'Composite',
            class_name: 'BatchAccountKeys',
            model_properties: {
              account_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              primary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'primary',
                type: {
                  name: 'String'
                }
              },
              secondary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'secondary',
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
