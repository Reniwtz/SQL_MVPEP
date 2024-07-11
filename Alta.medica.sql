SELECT
    *
FROM
    dbamv.pagu_objeto,
    dbamv.pw_documento_clinico
WHERE
        pw_documento_clinico.cd_objeto = pagu_objeto.cd_objeto
    AND pw_documento_clinico.cd_atendimento = 3703668
    AND pagu_objeto.tp_objeto = 'ALTMED'
    
------------------------------------------------------------------    

SELECT
    *
FROM
    dbamv.pw_registro_alta
WHERE
    cd_documento_clinico = 18
