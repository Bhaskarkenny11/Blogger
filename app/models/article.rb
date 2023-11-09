class Article < ApplicationRecord
    belongs_to :Categoroy
    belongs_to :author
end
