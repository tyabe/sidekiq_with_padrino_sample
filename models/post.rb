class Post < ActiveRecord::Base
  # Fields
  field :title, :as => :string
  field :body,  :as => :text

  def long_method
    puts "#Long method [#{self.id}] start"
    sleep 5
    puts "#Long method [#{self.id}] finished"
  end
end
