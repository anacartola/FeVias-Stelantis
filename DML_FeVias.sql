-- POPULANDO AS TABELAS LOCOMOTIVA, CONCESSIONARIA, LINHA E TRECHO
INSERT INTO T_SIF_LOCOMOTIVA (id_locomotiva, nm_locomotiva, nr_vagoes)
    VALUES (sq_sif_locomotiva.nextval, 'Ferrovia Transnordestina Log�stica', 13);

INSERT INTO T_SIF_CONCESSIONARIA (id_concessionaria, nm_concessionaria)
    VALUES (sq_sif_concessionaria.nextval, 'Malha Nordeste da Rede Ferrovi�ria Federal S.A.');
    INSERT INTO T_SIF_LINHA (id_linha, id_concessionaria, nm_linha)
        VALUES (sq_sif_linha.nextval, sq_sif_concessionaria.currval, 'Malha 1');
        INSERT INTO T_SIF_TRECHO (id_trecho, T_SIF_LINHA_id_linha, nm_trecho, nr_tamanhokm)
            VALUES(sq_sif_trecho.nextval, sq_sif_linha.currval, 'Itaqui a Pec�m', 1000);
        INSERT INTO T_SIF_TRECHO (id_trecho, T_SIF_LINHA_id_linha, nm_trecho, nr_tamanhokm)
            VALUES(sq_sif_trecho.nextval, sq_sif_linha.currval, 'Itaqui a Mucuripe', 1000);

INSERT INTO T_SIF_LOCOMOTIVA (id_locomotiva, nm_locomotiva, nr_vagoes)
    VALUES (sq_sif_locomotiva.nextval, 'Locomotiva Malha Norte', 56);

INSERT INTO T_SIF_CONCESSIONARIA (id_concessionaria, nm_concessionaria)
        VALUES(sq_sif_concessionaria.nextval, 'Rumo S/A');
        INSERT INTO T_SIF_LINHA (id_linha, id_concessionaria, nm_linha)
            VALUES (sq_sif_linha.nextval, sq_sif_concessionaria.currval, 'Malha Norte');
            INSERT INTO T_SIF_TRECHO (id_trecho, T_SIF_LINHA_id_linha, nm_trecho, nr_tamanhokm)
                VALUES (sq_sif_trecho.nextval, sq_sif_linha.currval, 'Rondon�polis a Santa F� do Sul', 696);


INSERT INTO T_SIF_LOCOMOTIVA (id_locomotiva, nm_locomotiva, nr_vagoes)
    VALUES (sq_sif_locomotiva.nextval, 'Estrada de Ferro Caraj�s', 33);
    
INSERT INTO T_SIF_CONCESSIONARIA (id_concessionaria, nm_concessionaria)
       VALUES (sq_sif_concessionaria.nextval, 'Vale S/A');
       INSERT INTO T_SIF_LINHA (id_linha, id_concessionaria, nm_linha)
           VALUES (sq_sif_linha.nextval, sq_sif_concessionaria.currval, 'Estrada de Ferro Caraj�s');
           INSERT INTO T_SIF_TRECHO (id_trecho, T_SIF_LINHA_id_linha, nm_trecho, nr_tamanhokm)
               VALUES (sq_sif_trecho.nextval, sq_sif_linha.currval, 'Caraj�s a S�o Lu�s', 892);


INSERT INTO T_SIF_LOCOMOTIVA (id_locomotiva, nm_locomotiva, nr_vagoes)
    VALUES (sq_sif_locomotiva.nextval, 'Ferrovia Transnordestina Log�stica (FTL)', 13);
    
INSERT INTO T_SIF_CONCESSIONARIA (id_concessionaria, nm_concessionaria)
       VALUES (sq_sif_concessionaria.nextval, 'Rumo S/A');
       INSERT INTO T_SIF_LINHA (id_linha, id_concessionaria, nm_linha)
           VALUES (sq_sif_linha.nextval, sq_sif_linha.currval, 'Malha Paulista');
           INSERT INTO T_SIF_TRECHO (id_trecho, T_SIF_LINHA_id_linha, nm_trecho, nr_tamanhokm)
               VALUES (sq_sif_trecho.nextval, sq_sif_linha.currval, 'Itaqui a Mucuripe', 1000);

COMMIT;

-- POPULANDO A TABELA ESTADO, CIDADE, LOCALIZA ESTACAO E ESTACAO
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('AC', 'Acre');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('AP', 'Amap�');

INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('MA', 'Maranh�o');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'MA', 'S�o Luiz');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Porto de Itaqu�');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 1, sq_sif_localiza_estacao.currval, 'Porto de Itaqu�', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Ros�rio');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Ros�rio a 1,8km do bairro do Carmo');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 1, sq_sif_localiza_estacao.currval, 'Esta��o de Ros�rio a 1,8km do bairro do Carmo', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Coroat�');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Coroat�, Peritor�');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 2, sq_sif_localiza_estacao.currval, 'Esta��o de Coroat�, Peritor�', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Cod�');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Cod�');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 2, sq_sif_localiza_estacao.currval, 'Esta��o de Cod�', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Caxias');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Caxias');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 3, sq_sif_localiza_estacao.currval, 'Esta��o de Caxias', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Timon');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Timon');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 3, sq_sif_localiza_estacao.currval, 'Esta��o de Timon', 'S');
    
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'S�o Pedro da �gua Branca');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Porto de S�o Lu�s');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'A�a�l�ndia');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Buriticupu');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Alto Alegre do Pindar�');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Santa In�s');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Vit�ria do Mearim');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES(sq_sif_cidade.nextval, 'MA', 'Arari');


INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('PI', 'Piau�');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'PI', 'Teresina');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Teresina');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 1, sq_sif_localiza_estacao.currval, 'Esta��o de Teresina', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'PI', 'Altos');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Altos');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 4,sq_sif_localiza_estacao.currval, 'Esta��o de Altos', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'PI', 'Castelo');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Castelo');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 4,sq_sif_localiza_estacao.currval, 'Esta��o de Castelo', 'S');

     
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('CE', 'Cear�');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'CE', 'Crat�us');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Crat�us');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 3, sq_sif_localiza_estacao.currval, 'Esta��o de Crat�us', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'CE', 'Nova Russas');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Nova Russas');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 3, sq_sif_localiza_estacao.currval, 'Esta��o de Nova Russas', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'CE', 'Sobral');
                INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Sobral');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 2, sq_sif_localiza_estacao.currval, 'Esta��o de Sobral', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'CE', 'Itapipoca');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Esta��o de Itapipoca');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 2, sq_sif_localiza_estacao.currval, 'Esta��o de Itapipoca', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'CE', 'S�o Gon�alo do Amarante');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Porto de Pec�m');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 1, sq_sif_localiza_estacao.currval, 'Porto de Pec�m', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'CE', 'Caucaia');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Porto de Pec�m');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 1, sq_sif_localiza_estacao.currval, 'Porto de Pec�m', 'S');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'CE', 'Fortaleza');
        INSERT INTO T_SIF_LOCALIZA_ESTACAO (id_loc_estacao, id_cidade, nm_localizacao)
            VALUES(sq_sif_localiza_estacao.nextval, sq_sif_cidade.currval, 'Porto de Mucu�pe');
            INSERT INTO T_SIF_ESTACAO (id_estacao, id_trecho, id_loc_estacao, nm_estacao, vr_carrega_bateria)
                VALUES(sq_sif_estacao.nextval, 4, sq_sif_localiza_estacao.currval, 'Porto de Mucu�pe', 'S');

COMMIT;
        
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('RN', 'Rio Grande do Norte');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('PB', 'Para�ba');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('PE', 'Pernambuco');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('AL', 'Alagoas');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('SE', 'Sergipe');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('BA', 'Bahia');
    
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('MT', 'Mato Grosso');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'MT', 'Rondon�polis');

INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('GO', 'Goi�s');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('DF', 'Distrito Federal');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('MS', 'Mato Grosso do Sul');
 
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES('SP', 'S�o Paulo');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Santa F� do Sul');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Rubin�ia');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Taquaritinga');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Araraquara');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Bebedouro');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Col�mbia');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Itirapina');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Bauru');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Panorama');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Rio Claro');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Campinas');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Jundia�');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Santos');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'SP', 'Cajiti');

INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('MG', 'Minas Gerais');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('RJ', 'Rio de Janeiro');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('ES', 'Esp�rito Santo');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('PR', 'Paran�');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('SC', 'Santa Catarina');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('RS', 'Rio Grande do Sul');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('RO', 'Rond�nia');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('AM', 'Amazonas');
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('RR', 'Roraima');
      
INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('PA', 'Par�');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'PA', 'Caraj�s');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'PA', 'Parauapebas');
    INSERT INTO T_SIF_CIDADE (id_cidade, sg_estado, nm_cidade)
        VALUES (sq_sif_cidade.nextval, 'PA', 'Marab�');

INSERT INTO T_SIF_ESTADO (sg_estado, nm_estado)
    VALUES ('TO', 'Tocantins');


COMMIT;


--POPULANDO A TABELA VAG�O
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 100);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 150);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 200);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 250);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 300);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 350);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 400);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 500);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 550);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 600);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 650);
INSERT INTO T_SIF_VAGAO (id_vagao, tp_vagao, vl_peso_vagao)
    VALUES(sq_sif_vagao.nextval, 'O', 700);


-- POPULANDO TABELA EMPRESA
INSERT INTO T_SIF_EMPRESA (id_empresa, nm_razao_social, cd_cnpj)
    VALUES (sq_sif_empresa.nextval, 'Ferrovia Transnordestina Logistica S.A.', 17234244000131);
INSERT INTO T_SIF_EMPRESA (id_empresa, nm_razao_social, cd_cnpj)
    VALUES (sq_sif_empresa.nextval, 'RUMO S.A.', 02387241000160);


COMMIT;


-- POPULANDO AS TABELAS BATERIA CARREG E BATERIA
INSERT INTO T_SIF_BATERIA_CARREG (id_bateria_carreg, ds_bateria_carreg, perc_carga_bateria)
    VALUES (sq_sif_bateria_carreg.nextval, 'Bateria 1', 75);
    INSERT INTO T_SIF_BATERIA (id_bateria, ds_bateria, id_bateria_carreg)
        VALUES(sq_sif_bateria.nextval, 'Bateria 1', sq_sif_bateria_carreg.currval);
INSERT INTO T_SIF_BATERIA_CARREG (id_bateria_carreg, ds_bateria_carreg, perc_carga_bateria)
    VALUES (sq_sif_bateria_carreg.nextval, 'Bateria 2', 37);
    INSERT INTO T_SIF_BATERIA (id_bateria, ds_bateria, id_bateria_carreg)
        VALUES(sq_sif_bateria.nextval, 'Bateria 2', sq_sif_bateria_carreg.currval);
INSERT INTO T_SIF_BATERIA_CARREG (id_bateria_carreg, ds_bateria_carreg, perc_carga_bateria)
    VALUES (sq_sif_bateria_carreg.nextval, 'Bateria 3', 44);
    INSERT INTO T_SIF_BATERIA (id_bateria, ds_bateria, id_bateria_carreg)
        VALUES(sq_sif_bateria.nextval, 'Bateria 3', sq_sif_bateria_carreg.currval);
INSERT INTO T_SIF_BATERIA_CARREG (id_bateria_carreg, ds_bateria_carreg, perc_carga_bateria)
    VALUES (sq_sif_bateria_carreg.nextval, 'Bateria 4', 75);
    INSERT INTO T_SIF_BATERIA (id_bateria, ds_bateria, id_bateria_carreg)
        VALUES(sq_sif_bateria.nextval, 'Bateria 4', sq_sif_bateria_carreg.currval);
INSERT INTO T_SIF_BATERIA_CARREG (id_bateria_carreg, ds_bateria_carreg, perc_carga_bateria)
    VALUES (sq_sif_bateria_carreg.nextval, 'Bateria 5', 92);
    INSERT INTO T_SIF_BATERIA (id_bateria, ds_bateria, id_bateria_carreg)
        VALUES(sq_sif_bateria.nextval, 'Bateria 5', sq_sif_bateria_carreg.currval);
INSERT INTO T_SIF_BATERIA_CARREG (id_bateria_carreg, ds_bateria_carreg, perc_carga_bateria)
    VALUES (sq_sif_bateria_carreg.nextval, 'Bateria 6', 47);
    INSERT INTO T_SIF_BATERIA (id_bateria, ds_bateria, id_bateria_carreg)
        VALUES(sq_sif_bateria.nextval, 'Bateria 6', sq_sif_bateria_carreg.currval);
INSERT INTO T_SIF_BATERIA_CARREG (id_bateria_carreg, ds_bateria_carreg, perc_carga_bateria)
    VALUES (sq_sif_bateria_carreg.nextval, 'Bateria 7', 52);
        INSERT INTO T_SIF_BATERIA (id_bateria, ds_bateria, id_bateria_carreg)
        VALUES(sq_sif_bateria.nextval, 'Bateria 7', sq_sif_bateria_carreg.currval);


COMMIT;