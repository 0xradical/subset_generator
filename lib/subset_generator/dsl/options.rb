module SubsetGenerator
  module DSL
    class Options
      def initialize
        @container = Hash.new do |h,k|
          h[k] = {quantity: :none, options: {}}
        end
      end

      def add_option(quantity, association, options = {})
        @container[association].merge!({
          quantity: quantity,
          options: options
        })
      end

      def [](association)
        @container[association]
      end
    end
  end
end
