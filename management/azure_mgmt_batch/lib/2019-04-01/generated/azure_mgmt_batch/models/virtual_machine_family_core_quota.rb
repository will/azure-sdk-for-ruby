# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_04_01
  module Models
    #
    # A VM Family and its associated core quota for the Batch account.
    #
    class VirtualMachineFamilyCoreQuota

      include MsRestAzure

      # @return [String] The Virtual Machine family name.
      attr_accessor :name

      # @return [Integer] The core quota for the VM family for the Batch
      # account.
      attr_accessor :core_quota


      #
      # Mapper for VirtualMachineFamilyCoreQuota class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineFamilyCoreQuota',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineFamilyCoreQuota',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              core_quota: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'coreQuota',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
