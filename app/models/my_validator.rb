class MyValidator < ActiveModel::Validator
    def validate(post)
      unless post.title.include? "Won't Believe" || "Secret" || "Top" || "Guess"
        post.errors.add :title, "Needs to be clickbaity!"
      end
    end
  end

# "Won't Believe"
# "Secret"
# "Top [number]"
# "Guess"