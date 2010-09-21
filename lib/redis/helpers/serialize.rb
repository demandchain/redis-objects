class Redis
  module Helpers
    module Serialize
      def to_redis(value)
        Yajl::Encoder.encode(value)
      end

      def from_redis(value)
        Yajl::Parser.parse(value)
      end
    end
  end
end