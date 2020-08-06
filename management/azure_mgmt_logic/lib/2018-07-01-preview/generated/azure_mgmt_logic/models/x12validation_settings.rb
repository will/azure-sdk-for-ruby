# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The X12 agreement validation settings.
    #
    class X12ValidationSettings

      include MsRestAzure

      # @return [Boolean] The value indicating whether to validate character
      # set in the message.
      attr_accessor :validate_character_set

      # @return [Boolean] The value indicating whether to check for duplicate
      # interchange control number.
      attr_accessor :check_duplicate_interchange_control_number

      # @return [Integer] The validity period of interchange control number.
      attr_accessor :interchange_control_number_validity_days

      # @return [Boolean] The value indicating whether to check for duplicate
      # group control number.
      attr_accessor :check_duplicate_group_control_number

      # @return [Boolean] The value indicating whether to check for duplicate
      # transaction set control number.
      attr_accessor :check_duplicate_transaction_set_control_number

      # @return [Boolean] The value indicating whether to Whether to validate
      # EDI types.
      attr_accessor :validate_editypes

      # @return [Boolean] The value indicating whether to Whether to validate
      # XSD types.
      attr_accessor :validate_xsdtypes

      # @return [Boolean] The value indicating whether to allow leading and
      # trailing spaces and zeroes.
      attr_accessor :allow_leading_and_trailing_spaces_and_zeroes

      # @return [Boolean] The value indicating whether to trim leading and
      # trailing spaces and zeroes.
      attr_accessor :trim_leading_and_trailing_spaces_and_zeroes

      # @return [TrailingSeparatorPolicy] The trailing separator policy.
      # Possible values include: 'NotSpecified', 'NotAllowed', 'Optional',
      # 'Mandatory'
      attr_accessor :trailing_separator_policy


      #
      # Mapper for X12ValidationSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'X12ValidationSettings',
          type: {
            name: 'Composite',
            class_name: 'X12ValidationSettings',
            model_properties: {
              validate_character_set: {
                client_side_validation: true,
                required: true,
                serialized_name: 'validateCharacterSet',
                type: {
                  name: 'Boolean'
                }
              },
              check_duplicate_interchange_control_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'checkDuplicateInterchangeControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              interchange_control_number_validity_days: {
                client_side_validation: true,
                required: true,
                serialized_name: 'interchangeControlNumberValidityDays',
                type: {
                  name: 'Number'
                }
              },
              check_duplicate_group_control_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'checkDuplicateGroupControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              check_duplicate_transaction_set_control_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'checkDuplicateTransactionSetControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              validate_editypes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'validateEDITypes',
                type: {
                  name: 'Boolean'
                }
              },
              validate_xsdtypes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'validateXSDTypes',
                type: {
                  name: 'Boolean'
                }
              },
              allow_leading_and_trailing_spaces_and_zeroes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'allowLeadingAndTrailingSpacesAndZeroes',
                type: {
                  name: 'Boolean'
                }
              },
              trim_leading_and_trailing_spaces_and_zeroes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'trimLeadingAndTrailingSpacesAndZeroes',
                type: {
                  name: 'Boolean'
                }
              },
              trailing_separator_policy: {
                client_side_validation: true,
                required: true,
                serialized_name: 'trailingSeparatorPolicy',
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
