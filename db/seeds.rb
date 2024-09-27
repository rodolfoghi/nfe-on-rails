# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Uf.create([
  { codigo: 12, descricao: 'Acre' },
  { codigo: 27, descricao: 'Alagoas' },
  { codigo: 13, descricao: 'Amazonas' },
  { codigo: 29, descricao: 'Bahia' },
  { codigo: 23, descricao: 'Ceará' },
  { codigo: 53, descricao: 'Distrito Federal' },
  { codigo: 32, descricao: 'Espírito Santo' },
  { codigo: 52, descricao: 'Goiás' },
  { codigo: 21, descricao: 'Maranhão' },
  { codigo: 51, descricao: 'Mato Grosso' },
  { codigo: 50, descricao: 'Mato Grosso do Sul' },
  { codigo: 31, descricao: 'Minas Gerais' },
  { codigo: 15, descricao: 'Pará' },
  { codigo: 25, descricao: 'Paraíba' },
  { codigo: 41, descricao: 'Paraná' },
  { codigo: 26, descricao: 'Pernambuco' },
  { codigo: 22, descricao: 'Piauí' },
  { codigo: 33, descricao: 'Rio de Janeiro' },
  { codigo: 24, descricao: 'Rio Grande do Norte' },
  { codigo: 43, descricao: 'Rio Grande do Sul' },
  { codigo: 11, descricao: 'Rondônia' },
  { codigo: 14, descricao: 'Roraima' },
  { codigo: 42, descricao: 'Santa Catarina' },
  { codigo: 35, descricao: 'São Paulo' },
  { codigo: 28, descricao: 'Sergipe' },
  { codigo: 17, descricao: 'Tocantins' }
])
