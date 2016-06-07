class Visitante < ActiveRecord::Base
      has_many :visitum
      validates_presence_of :nome, message: 'O campo não pode estar em branco'
   	  validates_presence_of :cpf, message: 'O campo não pode estar em branco'
    	validates_presence_of :rg, message: 'O campo não pode estar em branco'
    	validates_presence_of :telefone, message: 'O campo não pode estar em branco'
    	validates_length_of :cpf, is: 11, message: "O campo deve ter no mínimo 11 caracteres"
    	validates_length_of :rg, in: 8..9, message: "O campo deve ter no mínimo 8 caracteres e no máximo 9"
    	validates_length_of :telefone, in: 8..9, message: "O campo deve ter no mínimo de 8 a 9 caracteres"
      validates_uniqueness_of :cpf, message: "Deve ser único"
      validates_uniqueness_of :rg, message: "Deve ser único"
    	validates_numericality_of :cpf, message: "Deve ser um número"
      validates_numericality_of :rg, message: "Deve ser um número"
    	validates_numericality_of :telefone, message: "Deve ser um número"
      before_destroy :validate_visitum_existance

      private
        def validate_visitum_existance

          if !visitum.empty?
            return false
        end
      end

end
