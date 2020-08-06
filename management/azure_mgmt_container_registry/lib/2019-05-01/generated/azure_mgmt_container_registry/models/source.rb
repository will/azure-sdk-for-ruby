# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01
  module Models
    #
    # The registry node that generated the event. Put differently, while the
    # actor initiates the event, the source generates it.
    #
    class Source

      include MsRestAzure

      # @return [String] The IP or hostname and the port of the registry node
      # that generated the event. Generally, this will be resolved by
      # os.Hostname() along with the running port.
      attr_accessor :addr

      # @return [String] The running instance of an application. Changes after
      # each restart.
      attr_accessor :instance_id


      #
      # Mapper for Source class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Source',
          type: {
            name: 'Composite',
            class_name: 'Source',
            model_properties: {
              addr: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addr',
                type: {
                  name: 'String'
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceID',
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
