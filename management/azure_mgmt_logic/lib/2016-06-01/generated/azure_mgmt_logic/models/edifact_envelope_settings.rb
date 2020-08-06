# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The Edifact agreement envelope settings.
    #
    class EdifactEnvelopeSettings

      include MsRestAzure

      # @return [String] The group association assigned code.
      attr_accessor :group_association_assigned_code

      # @return [String] The communication agreement id.
      attr_accessor :communication_agreement_id

      # @return [Boolean] The value indicating whether to apply delimiter
      # string advice.
      attr_accessor :apply_delimiter_string_advice

      # @return [Boolean] The value indicating whether to create grouping
      # segments.
      attr_accessor :create_grouping_segments

      # @return [Boolean] The value indicating whether to enable default group
      # headers.
      attr_accessor :enable_default_group_headers

      # @return [String] The recipient reference password value.
      attr_accessor :recipient_reference_password_value

      # @return [String] The recipient reference password qualifier.
      attr_accessor :recipient_reference_password_qualifier

      # @return [String] The application reference id.
      attr_accessor :application_reference_id

      # @return [String] The processing priority code.
      attr_accessor :processing_priority_code

      # @return [Integer] The interchange control number lower bound.
      attr_accessor :interchange_control_number_lower_bound

      # @return [Integer] The interchange control number upper bound.
      attr_accessor :interchange_control_number_upper_bound

      # @return [Boolean] The value indicating whether to rollover interchange
      # control number.
      attr_accessor :rollover_interchange_control_number

      # @return [String] The interchange control number prefix.
      attr_accessor :interchange_control_number_prefix

      # @return [String] The interchange control number suffix.
      attr_accessor :interchange_control_number_suffix

      # @return [String] The sender reverse routing address.
      attr_accessor :sender_reverse_routing_address

      # @return [String] The receiver reverse routing address.
      attr_accessor :receiver_reverse_routing_address

      # @return [String] The functional group id.
      attr_accessor :functional_group_id

      # @return [String] The group controlling agency code.
      attr_accessor :group_controlling_agency_code

      # @return [String] The group message version.
      attr_accessor :group_message_version

      # @return [String] The group message release.
      attr_accessor :group_message_release

      # @return [Integer] The group control number lower bound.
      attr_accessor :group_control_number_lower_bound

      # @return [Integer] The group control number upper bound.
      attr_accessor :group_control_number_upper_bound

      # @return [Boolean] The value indicating whether to rollover group
      # control number.
      attr_accessor :rollover_group_control_number

      # @return [String] The group control number prefix.
      attr_accessor :group_control_number_prefix

      # @return [String] The group control number suffix.
      attr_accessor :group_control_number_suffix

      # @return [String] The group application receiver qualifier.
      attr_accessor :group_application_receiver_qualifier

      # @return [String] The group application receiver id.
      attr_accessor :group_application_receiver_id

      # @return [String] The group application sender qualifier.
      attr_accessor :group_application_sender_qualifier

      # @return [String] The group application sender id.
      attr_accessor :group_application_sender_id

      # @return [String] The group application password.
      attr_accessor :group_application_password

      # @return [Boolean] The value indicating whether to overwrite existing
      # transaction set control number.
      attr_accessor :overwrite_existing_transaction_set_control_number

      # @return [String] The transaction set control number prefix.
      attr_accessor :transaction_set_control_number_prefix

      # @return [String] The transaction set control number suffix.
      attr_accessor :transaction_set_control_number_suffix

      # @return [Integer] The transaction set control number lower bound.
      attr_accessor :transaction_set_control_number_lower_bound

      # @return [Integer] The transaction set control number upper bound.
      attr_accessor :transaction_set_control_number_upper_bound

      # @return [Boolean] The value indicating whether to rollover transaction
      # set control number.
      attr_accessor :rollover_transaction_set_control_number

      # @return [Boolean] The value indicating whether the message is a test
      # interchange.
      attr_accessor :is_test_interchange

      # @return [String] The sender internal identification.
      attr_accessor :sender_internal_identification

      # @return [String] The sender internal sub identification.
      attr_accessor :sender_internal_sub_identification

      # @return [String] The receiver internal identification.
      attr_accessor :receiver_internal_identification

      # @return [String] The receiver internal sub identification.
      attr_accessor :receiver_internal_sub_identification


      #
      # Mapper for EdifactEnvelopeSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EdifactEnvelopeSettings',
          type: {
            name: 'Composite',
            class_name: 'EdifactEnvelopeSettings',
            model_properties: {
              group_association_assigned_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupAssociationAssignedCode',
                type: {
                  name: 'String'
                }
              },
              communication_agreement_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'communicationAgreementId',
                type: {
                  name: 'String'
                }
              },
              apply_delimiter_string_advice: {
                client_side_validation: true,
                required: true,
                serialized_name: 'applyDelimiterStringAdvice',
                type: {
                  name: 'Boolean'
                }
              },
              create_grouping_segments: {
                client_side_validation: true,
                required: true,
                serialized_name: 'createGroupingSegments',
                type: {
                  name: 'Boolean'
                }
              },
              enable_default_group_headers: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enableDefaultGroupHeaders',
                type: {
                  name: 'Boolean'
                }
              },
              recipient_reference_password_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recipientReferencePasswordValue',
                type: {
                  name: 'String'
                }
              },
              recipient_reference_password_qualifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recipientReferencePasswordQualifier',
                type: {
                  name: 'String'
                }
              },
              application_reference_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'applicationReferenceId',
                type: {
                  name: 'String'
                }
              },
              processing_priority_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'processingPriorityCode',
                type: {
                  name: 'String'
                }
              },
              interchange_control_number_lower_bound: {
                client_side_validation: true,
                required: true,
                serialized_name: 'interchangeControlNumberLowerBound',
                type: {
                  name: 'Number'
                }
              },
              interchange_control_number_upper_bound: {
                client_side_validation: true,
                required: true,
                serialized_name: 'interchangeControlNumberUpperBound',
                type: {
                  name: 'Number'
                }
              },
              rollover_interchange_control_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rolloverInterchangeControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              interchange_control_number_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'interchangeControlNumberPrefix',
                type: {
                  name: 'String'
                }
              },
              interchange_control_number_suffix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'interchangeControlNumberSuffix',
                type: {
                  name: 'String'
                }
              },
              sender_reverse_routing_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'senderReverseRoutingAddress',
                type: {
                  name: 'String'
                }
              },
              receiver_reverse_routing_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'receiverReverseRoutingAddress',
                type: {
                  name: 'String'
                }
              },
              functional_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'functionalGroupId',
                type: {
                  name: 'String'
                }
              },
              group_controlling_agency_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupControllingAgencyCode',
                type: {
                  name: 'String'
                }
              },
              group_message_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupMessageVersion',
                type: {
                  name: 'String'
                }
              },
              group_message_release: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupMessageRelease',
                type: {
                  name: 'String'
                }
              },
              group_control_number_lower_bound: {
                client_side_validation: true,
                required: true,
                serialized_name: 'groupControlNumberLowerBound',
                type: {
                  name: 'Number'
                }
              },
              group_control_number_upper_bound: {
                client_side_validation: true,
                required: true,
                serialized_name: 'groupControlNumberUpperBound',
                type: {
                  name: 'Number'
                }
              },
              rollover_group_control_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rolloverGroupControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              group_control_number_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupControlNumberPrefix',
                type: {
                  name: 'String'
                }
              },
              group_control_number_suffix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupControlNumberSuffix',
                type: {
                  name: 'String'
                }
              },
              group_application_receiver_qualifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupApplicationReceiverQualifier',
                type: {
                  name: 'String'
                }
              },
              group_application_receiver_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupApplicationReceiverId',
                type: {
                  name: 'String'
                }
              },
              group_application_sender_qualifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupApplicationSenderQualifier',
                type: {
                  name: 'String'
                }
              },
              group_application_sender_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupApplicationSenderId',
                type: {
                  name: 'String'
                }
              },
              group_application_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupApplicationPassword',
                type: {
                  name: 'String'
                }
              },
              overwrite_existing_transaction_set_control_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'overwriteExistingTransactionSetControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              transaction_set_control_number_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'transactionSetControlNumberPrefix',
                type: {
                  name: 'String'
                }
              },
              transaction_set_control_number_suffix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'transactionSetControlNumberSuffix',
                type: {
                  name: 'String'
                }
              },
              transaction_set_control_number_lower_bound: {
                client_side_validation: true,
                required: true,
                serialized_name: 'transactionSetControlNumberLowerBound',
                type: {
                  name: 'Number'
                }
              },
              transaction_set_control_number_upper_bound: {
                client_side_validation: true,
                required: true,
                serialized_name: 'transactionSetControlNumberUpperBound',
                type: {
                  name: 'Number'
                }
              },
              rollover_transaction_set_control_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rolloverTransactionSetControlNumber',
                type: {
                  name: 'Boolean'
                }
              },
              is_test_interchange: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isTestInterchange',
                type: {
                  name: 'Boolean'
                }
              },
              sender_internal_identification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'senderInternalIdentification',
                type: {
                  name: 'String'
                }
              },
              sender_internal_sub_identification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'senderInternalSubIdentification',
                type: {
                  name: 'String'
                }
              },
              receiver_internal_identification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'receiverInternalIdentification',
                type: {
                  name: 'String'
                }
              },
              receiver_internal_sub_identification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'receiverInternalSubIdentification',
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
