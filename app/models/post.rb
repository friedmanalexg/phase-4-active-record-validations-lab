class Post < ApplicationRecord
    include ActiveModel::Validations
    
    validates :title, presence: true
    validates :content, length:{minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
    validate :validate_for_clickbait


    def validate_for_clickbait
        # puts "hello"
        unless self.title.include? "Won't Believe" || "Secret" || "Top" || "Guess"
          self.errors.add :title, "Needs to be clickbait!"
        end
      
    end
end
