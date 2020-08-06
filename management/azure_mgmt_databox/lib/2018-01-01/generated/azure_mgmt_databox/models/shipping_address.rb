# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # Shipping address where customer wishes to receive the device.
    #
    class ShippingAddress

      include MsRestAzure

      # @return [String] Street Address line 1.
      attr_accessor :street_address1

      # @return [String] Street Address line 2.
      attr_accessor :street_address2

      # @return [String] Street Address line 3.
      attr_accessor :street_address3

      # @return [String] Name of the City.
      attr_accessor :city

      # @return [String] Name of the State or Province.
      attr_accessor :state_or_province

      # @return [String] Name of the Country.
      attr_accessor :country

      # @return [String] Postal code.
      attr_accessor :postal_code

      # @return [String] Extended Zip Code.
      attr_accessor :zip_extended_code

      # @return [String] Name of the company.
      attr_accessor :company_name

      # @return [AddressType] Type of address. Possible values include: 'None',
      # 'Residential', 'Commercial'
      attr_accessor :address_type


      #
      # Mapper for ShippingAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ShippingAddress',
          type: {
            name: 'Composite',
            class_name: 'ShippingAddress',
            model_properties: {
              street_address1: {
                client_side_validation: true,
                required: true,
                serialized_name: 'streetAddress1',
                type: {
                  name: 'String'
                }
              },
              street_address2: {
                client_side_validation: true,
                required: false,
                serialized_name: 'streetAddress2',
                type: {
                  name: 'String'
                }
              },
              street_address3: {
                client_side_validation: true,
                required: false,
                serialized_name: 'streetAddress3',
                type: {
                  name: 'String'
                }
              },
              city: {
                client_side_validation: true,
                required: false,
                serialized_name: 'city',
                type: {
                  name: 'String'
                }
              },
              state_or_province: {
                client_side_validation: true,
                required: false,
                serialized_name: 'stateOrProvince',
                type: {
                  name: 'String'
                }
              },
              country: {
                client_side_validation: true,
                required: true,
                serialized_name: 'country',
                type: {
                  name: 'String'
                }
              },
              postal_code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'postalCode',
                type: {
                  name: 'String'
                }
              },
              zip_extended_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zipExtendedCode',
                type: {
                  name: 'String'
                }
              },
              company_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'companyName',
                type: {
                  name: 'String'
                }
              },
              address_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addressType',
                type: {
                  name: 'Enum',
                  module: 'AddressType'
                }
              }
            }
          }
        }
      end
    end
  end
end
