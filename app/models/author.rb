class Author < ApplicationRecord
    has_many :articles :optional => true
end
