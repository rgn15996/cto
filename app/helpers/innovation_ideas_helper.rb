module InnovationIdeasHelper
  
  def rating_stars(score)
    capture_haml do
      haml_concat(text='= "Hello World"')
      haml_tag :span, {class: "rating", data: { score: score}} do 
        1.upto(5) do |element|
          haml_tag :span, class: "star", id: "score-#{element}" do
            haml_tag :i, class: "icon-star"
          end
        end
      end
    end
  end

end
