# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Specifies the billing related details of a Azure Spot VM or VMSS.
    # <br><br>Minimum api-version: 2019-03-01.
    #
    class BillingProfile

      include MsRestAzure

      # @return [Float] Specifies the maximum price you are willing to pay for
      # a Azure Spot VM/VMSS. This price is in US Dollars. <br><br> This price
      # will be compared with the current Azure Spot price for the VM size.
      # Also, the prices are compared at the time of create/update of Azure
      # Spot VM/VMSS and the operation will only succeed if  the maxPrice is
      # greater than the current Azure Spot price. <br><br> The maxPrice will
      # also be used for evicting a Azure Spot VM/VMSS if the current Azure
      # Spot price goes beyond the maxPrice after creation of VM/VMSS. <br><br>
      # Possible values are: <br><br> - Any decimal value greater than zero.
      # Example: 0.01538 <br><br> -1 – indicates default price to be up-to
      # on-demand. <br><br> You can set the maxPrice to -1 to indicate that the
      # Azure Spot VM/VMSS should not be evicted for price reasons. Also, the
      # default max price is -1 if it is not provided by you. <br><br>Minimum
      # api-version: 2019-03-01.
      attr_accessor :max_price


      #
      # Mapper for BillingProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BillingProfile',
          type: {
            name: 'Composite',
            class_name: 'BillingProfile',
            model_properties: {
              max_price: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxPrice',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
