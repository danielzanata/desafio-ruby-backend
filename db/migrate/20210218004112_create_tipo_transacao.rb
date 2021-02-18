class CreateTipoTransacao < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_transacaos do |t|
      t.integer :tipo, limit: 1
      t.string :descricao, limit: 20
      t.string :natureza, limit: 10
      t.string :sinal, limit: 1

      t.timestamp
    end
  end
end
