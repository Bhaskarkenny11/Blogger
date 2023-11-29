class Article < ApplicationRecord
    belongs_to :Categoroy, optional: true
    belongs_to :author,  optional:  true
end
