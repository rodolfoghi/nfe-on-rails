class GrupoDeItem < ApplicationRecord
  validates :codigo, presence: true, length: { maximum: 10 }, uniqueness: { case_sensitive: false, message: "Já existe um grupo com este código" }
  validates :descricao, presence: true, length: { maximum: 100 }
end
