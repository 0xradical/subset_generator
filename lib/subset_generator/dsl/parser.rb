module SubsetGenerator
  module DSL
    class Parser
      def parse(&block)
        @options = SubsetGenerator::DSL::Options.new

        instance_eval(&block)

        return @options
      end

      private

      def all(association)
        @options.add_option(:all, association)
      end

      def some(association, options = {})
        @options.add_option(:some, association, options)
      end

      def no(association)
        @options.add_option(:none, association)
      end
    end
  end
end
