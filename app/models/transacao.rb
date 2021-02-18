class Transacao < ActiveRecord::Base
    def self.sanitizacao_transacao(transacao)
        transacao_sanitizada = {}
        transacao_sanitizada['tipo'] = transacao[0]
        transacao_sanitizada['data_ocorrencia'] = transacao[1..8].to_date
        transacao_sanitizada['valor] = '%.2f' % transacao[9..18].to_f/100.00
        transacao_sanitizada['cpf'] = transacao[19..29]
        transacao_sanitizada['cartao'] = transacao[30..41]
        transacao_sanitizada['hora_ocorrencia'] = transacao[42..47]
        transacao_sanitizada['representante_loja'] = transacao[48..61]
        transacao_sanitizada['nome_loja'] = transacao[62..80]
    end

    def self.cria_transacao(transacao)
        transacao = sanitizacao_transacao(transacao)
        Transacao.create(transacao)
    end

    def self.saldo_por_loja
    end
end
