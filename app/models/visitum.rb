class Visitum < ActiveRecord::Base
  belongs_to :visitante
  validates_presence_of :responsavel, message: 'O campo não pode estar em branco'
  validates_presence_of :conjunto, message: 'O campo não pode estar em branco'
  
end
