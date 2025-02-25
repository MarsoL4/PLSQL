--SELECT * FROM SALES; --kaggle

-- EXERC�CIO 1) CRIAR UM BLOCO PARA TRAZER A QUANTIDADE DE PEDIDOS POR PA�S E A QUANTIDADE DE PRODUTOS

set serveroutput on;

DECLARE
    pedidos NUMBER;
    pais    VARCHAR2(30);
    qtd     NUMBER;
BEGIN
    SELECT
        COUNT(1),
        SUM(quantityordered),
        country
    INTO
        pedidos,
        qtd,
        pais
    FROM
        SALES
    WHERE
        country = 'France'
    GROUP BY
        country;

    dbms_output.put_line('A QUANTIDADE DE PEDIDOS DO PA�S '
                         || pais
                         || ' � '
                         || pedidos
                         || 'QUANTIDADE DE PRODUTOS: '
                         || qtd);

END;

