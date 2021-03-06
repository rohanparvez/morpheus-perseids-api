class Parser
  class Word
    class Entry
      class Inflection
        class Person
          def initialize(doc)
            @content = doc.inner_html
          end

          def bamboo_xml
            @bamboo_xml ||= %(<pers>#{content}</pers>)
          end

          def bamboo_json
            @bamboo_json ||= {
              pers: {
                '$': content,
              },
            }
          end

          private

          attr_reader :content
        end
      end
    end
  end
end
