# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # Describes how data from an input is serialized or how data is serialized
    # when written to an output in CSV format.
    #
    class CsvSerialization < Serialization

      include MsRestAzure


      def initialize
        @type = "Csv"
      end

      attr_accessor :type

      # @return [String] Specifies the delimiter that will be used to separate
      # comma-separated value (CSV) records. See
      # https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input
      # or
      # https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output
      # for a list of supported values. Required on PUT (CreateOrReplace)
      # requests.
      attr_accessor :field_delimiter

      # @return [Encoding] Specifies the encoding of the incoming data in the
      # case of input and the encoding of outgoing data in the case of output.
      # Required on PUT (CreateOrReplace) requests. Possible values include:
      # 'UTF8'
      attr_accessor :encoding


      #
      # Mapper for CsvSerialization class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Csv',
          type: {
            name: 'Composite',
            class_name: 'CsvSerialization',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              field_delimiter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fieldDelimiter',
                type: {
                  name: 'String'
                }
              },
              encoding: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encoding',
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
