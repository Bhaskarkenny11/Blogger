class Categoroy < ApplicationRecord
    has_many :articles, optional: true
end
