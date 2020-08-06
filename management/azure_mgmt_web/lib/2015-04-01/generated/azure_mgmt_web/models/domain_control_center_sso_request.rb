# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_04_01
  module Models
    #
    # Single sign-on request information for domain management.
    #
    class DomainControlCenterSsoRequest

      include MsRestAzure

      # @return [String] URL where the single sign-on request is to be made.
      attr_accessor :url

      # @return [String] Post parameter key.
      attr_accessor :post_parameter_key

      # @return [String] Post parameter value. Client should use
      # 'application/x-www-form-urlencoded' encoding for this value.
      attr_accessor :post_parameter_value


      #
      # Mapper for DomainControlCenterSsoRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainControlCenterSsoRequest',
          type: {
            name: 'Composite',
            class_name: 'DomainControlCenterSsoRequest',
            model_properties: {
              url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              post_parameter_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'postParameterKey',
                type: {
                  name: 'String'
                }
              },
              post_parameter_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'postParameterValue',
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
