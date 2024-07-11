--Verificar eiste prescrição aberta pelo atendimento
select cd_pre_med, fl_impresso from pre_med where cd_atendimento = 3310580;
--Verificar eiste prescrição aberta pela prescrição
select cd_pre_med, fl_impresso from pre_med where cd_pre_med = 898453;

-- Atualiza a prescrição
update pre_med set fl_impresso = 'S' where cd_pre_med = 898453 ;
commit;

--Verificar Prestador que deixou prescrição aberta
SELECT
    pm.cd_pre_med   prescricao,
    pa.nm_paciente  paciente,
    pr.nm_prestador prestador
FROM
    pre_med   pm,
    prestador pr,
    paciente  pa,
    atendime  a
WHERE
        cd_pre_med = 610644
    AND pm.cd_atendimento = a.cd_atendimento
    AND a.cd_paciente = pa.cd_paciente
    AND pm.cd_prestador = pr.cd_prestador
