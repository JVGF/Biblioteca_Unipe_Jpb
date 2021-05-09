class Aluguel < ApplicationRecord
    has_one :livro
    has_one :cliente
    belongs_to :sinistro
end
