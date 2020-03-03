module Parser
  class Word
    class Entry
      class Inflection
        class DerivationType
          def initialize(doc)
            @content = doc.inner_html
          end

          def bamboo_xml
            @bamboo_xml ||= "<derivtype>#{content}</derivtype>"
          end

          private

          attr_reader :content
        end
      end
    end
  end
end
