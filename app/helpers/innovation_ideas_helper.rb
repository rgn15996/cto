module InnovationIdeasHelper
  
  def rating_stars(score)
    capture_haml do
      haml_tag :span, class: "rating" do 
        1.upto(5) do |element|
          haml_tag :span, class: "small-star" do
            if element < score then
              haml_tag :i, {class: "icon-star", style: "color: red"}
            else
              haml_tag :i, class: "icon-star"
            end
          end
        end
      end
    end
  end

end
