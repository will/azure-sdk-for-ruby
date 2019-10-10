# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01_preview
  module Models
    #
    # The information type keyword.
    #
    class InformationProtectionKeyword

      include MsRestAzure

      # @return [String] The keyword pattern.
      attr_accessor :pattern

      # @return [Boolean] Indicates whether the keyword is custom or not.
      attr_accessor :custom

      # @return [Boolean] Indicates whether the keyword can be applied on
      # numeric types or not.
      attr_accessor :can_be_numeric

      # @return [Boolean] Indicates whether the keyword is excluded or not.
      attr_accessor :excluded


      #
      # Mapper for InformationProtectionKeyword class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InformationProtectionKeyword',
          type: {
            name: 'Composite',
            class_name: 'InformationProtectionKeyword',
            model_properties: {
              pattern: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pattern',
                type: {
                  name: 'String'
                }
              },
              custom: {
                client_side_validation: true,
                required: false,
                serialized_name: 'custom',
                type: {
                  name: 'Boolean'
                }
              },
              can_be_numeric: {
                client_side_validation: true,
                required: false,
                serialized_name: 'canBeNumeric',
                type: {
                  name: 'Boolean'
                }
              },
              excluded: {
                client_side_validation: true,
                required: false,
                serialized_name: 'excluded',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end