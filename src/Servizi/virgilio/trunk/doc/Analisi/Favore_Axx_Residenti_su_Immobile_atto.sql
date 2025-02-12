--
--   ANNO 2004   SOGGETTI A FAVORE (COMPRA) RESIDENTI NELL'IMMOBILE DELL'ATTO
--               CATEGORIE   Axx   esclusop A10     NR. 3558      
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
						fabbr.tipo_denuncia,fabbr.numero_protocollo,fabbr.anno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
						,tito.codice_diritto
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2004', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2004', 'DD/MM/YYYY')) dup
       ,dbtotale.pop_anagrafe  POP_ANA
      ,dbtotale.SIT_D_CIVICI  D_CIV
   ,MILANO.V_VIE_CIVICI_UIU UIU
 WHERE POP_ANA.tipo_soggetto = 'A'
   AND dup.codice_fiscale = POP_ANA.codice_fiscale
   AND POP_ANA.PK_CIVICO = D_CIV.PK_CIVICO
   AND D_CIV.FK_VIE = UIU.NUMERO 
   AND LPAD(NVL(TRIM(DUP.FOGLIO),'0000'),4,0) = LPAD(NVL(TRIM(TO_CHAR(UIU.foglio)),'0000'),4,0)
   AND LPAD(NVL(TRIM(DUP.NUMERO),'00000'),5,0) = LPAD(NVL(TRIM(TO_CHAR(UIU.PARTICELLA)),'00000'),5,0)
   AND DECODE (DUP.SUBALTERNO, NULL, '0', LPAD (DUP.SUBALTERNO, 4, 0)) = TRIM(LPAD (UIU.UNIMM, 4, 0))
   AND uiu.data_inizio_VAL <= DUP.DATA_VALIDITA_ATTO
   AND uiu.data_fine_VAL >=   DUP.DATA_VALIDITA_ATTO
   and INDIRIZZO IS NOT NULL
   AND DUP.CATEGORIA LIKE 'A%'
   AND DUP.CATEGORIA <> 'A10'
   AND trim(dup.codice_diritto) in ('8','8A','7','1','3','6')	
 ORDER BY DUP.FOGLIO, DUP.NUMERO, DUP.SUBALTERNO, DUP.FORNITURA, DUP.NOTA   

--
--   ANNO 2005  SOGGETTI A FAVORE (COMPRA) RESIDENTI NELL'IMMOBILE DELL'ATTO
--               CATEGORIE   Axx   esclusop A10     NR.   1243    
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
						fabbr.tipo_denuncia,fabbr.numero_protocollo,fabbr.anno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
						,tito.codice_diritto
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2005', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2005', 'DD/MM/YYYY')) dup
       ,dbtotale.pop_anagrafe  POP_ANA
      ,dbtotale.SIT_D_CIVICI  D_CIV
   ,MILANO.V_VIE_CIVICI_UIU UIU
 WHERE POP_ANA.tipo_soggetto = 'A'
   AND dup.codice_fiscale = POP_ANA.codice_fiscale
   AND POP_ANA.PK_CIVICO = D_CIV.PK_CIVICO
   AND D_CIV.FK_VIE = UIU.NUMERO 
   AND LPAD(NVL(TRIM(DUP.FOGLIO),'0000'),4,0) = LPAD(NVL(TRIM(TO_CHAR(UIU.foglio)),'0000'),4,0)
   AND LPAD(NVL(TRIM(DUP.NUMERO),'00000'),5,0) = LPAD(NVL(TRIM(TO_CHAR(UIU.PARTICELLA)),'00000'),5,0)
   AND DECODE (DUP.SUBALTERNO, NULL, '0', LPAD (DUP.SUBALTERNO, 4, 0)) = TRIM(LPAD (UIU.UNIMM, 4, 0))
   AND uiu.data_inizio_VAL <= DUP.DATA_VALIDITA_ATTO
   AND uiu.data_fine_VAL >=   DUP.DATA_VALIDITA_ATTO
   and INDIRIZZO IS NOT NULL
   AND DUP.CATEGORIA LIKE 'A%'
   AND DUP.CATEGORIA <> 'A10'
   AND trim(dup.codice_diritto) in ('8','8A','7','1','3','6')	
 ORDER BY DUP.FOGLIO, DUP.NUMERO, DUP.SUBALTERNO, DUP.FORNITURA, DUP.NOTA   
--
--   ANNO 2004   SOGGETTI A FAVORE (COMPRA) tutti  
--               CATEGORIE   Axx   esclusop A10     NR. 7331   
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
						fabbr.tipo_denuncia,fabbr.numero_protocollo,fabbr.anno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
						,tito.codice_diritto
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2004', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2004', 'DD/MM/YYYY')) dup
 WHERE DUP.CATEGORIA LIKE 'A%'
   AND DUP.CATEGORIA <> 'A10'
   AND trim(dup.codice_diritto) in ('8','8A','7','1','3','6')	
 ORDER BY DUP.FOGLIO, DUP.NUMERO, DUP.SUBALTERNO, DUP.FORNITURA, DUP.NOTA   
   
--
--   ANNO 2005   SOGGETTI A FAVORE (COMPRA) tutti  
--               CATEGORIE   Axx   esclusop A10     NR. 8942    
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
						fabbr.tipo_denuncia,fabbr.numero_protocollo,fabbr.anno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2005', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2005', 'DD/MM/YYYY')) dup
 WHERE DUP.CATEGORIA LIKE 'A%'
   AND DUP.CATEGORIA <> 'A10'
 ORDER BY DUP.FOGLIO, DUP.NUMERO, DUP.SUBALTERNO, DUP.FORNITURA, DUP.NOTA   
--
--   ANNO 2004   SOGGETTI A FAVORE (COMPRA) tutti  
--               CATEGORIE   tutte  NR  12135  
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
						fabbr.tipo_denuncia,fabbr.numero_protocollo,fabbr.anno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2004', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2004', 'DD/MM/YYYY')) dup
 ORDER BY DUP.FOGLIO, DUP.NUMERO, DUP.SUBALTERNO, DUP.FORNITURA, DUP.NOTA   
--
--   ANNO 2005   SOGGETTI A FAVORE (COMPRA) tutti  
--               CATEGORIE   tutte  NR  14350   
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
						fabbr.tipo_denuncia,fabbr.numero_protocollo,fabbr.anno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2005', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2005', 'DD/MM/YYYY')) dup
 ORDER BY DUP.FOGLIO, DUP.NUMERO, DUP.SUBALTERNO, DUP.FORNITURA, DUP.NOTA   
--
--   ANNO 2004   SOGGETTI A FAVORE (COMPRA) tutti
--               PERCENTUALE     = 100      
--               CATEGORIE      tutte  NR  6263  
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2004', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2004', 'DD/MM/YYYY')) dup
    WHERE DUP.PERCE = 100
--
--   ANNO 2005   SOGGETTI A FAVORE (COMPRA) tutti
--               PERCENTUALE     = 100 
--               CATEGORIE      tutte  NR  7412  
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2005', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2005', 'DD/MM/YYYY')) dup
    WHERE DUP.PERCE = 100
--
--   ANNO 2004   SOGGETTI A FAVORE (COMPRA) tutti
--               CATEGORIE      tutte    
--
SELECT count(*), DUP.PERCE
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2004', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <= TO_DATE ('31/12/2004', 'DD/MM/YYYY')) dup
WHERE PERCE IS NOT NULL			
  GROUP BY PERCE
--
--   ANNO 2004   SOGGETTI A FAVORE (COMPRA) tutti
--               PERCENTUALE     = 50  
--               CATEGORIE      tutte  NR   4173  
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2004', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2004', 'DD/MM/YYYY')) dup
    WHERE DUP.PERCE = 50
--
--   ANNO 2005   SOGGETTI A FAVORE (COMPRA) tutti
--               PERCENTUALE     = 50  
--               CATEGORIE      tutte  NR  4302     
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2005', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2005', 'DD/MM/YYYY')) dup
    WHERE DUP.PERCE = 50
--
--   ANNO 2004   SOGGETTI A FAVORE (COMPRA) tutti
--               PERCENTUALE     = 33,33  
--               CATEGORIE      tutte  NR  215       
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2004', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2004', 'DD/MM/YYYY')) dup
    WHERE DUP.PERCE = 33.333
--
--   ANNO 2005   SOGGETTI A FAVORE (COMPRA) tutti
--               PERCENTUALE     = 33,33  
--               CATEGORIE      tutte  NR   510       
--
SELECT DISTINCT dup.*
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2005', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2005', 'DD/MM/YYYY')) dup
    WHERE DUP.PERCE = 33.333
-- 
--   Verifica su Ici link 
--
drop V_2004_AXX_RESIDENTI
  
CREATE TABLE V_2004_AXX_RESIDENTI AS
(
SELECT DISTINCT DUP.*
--       dup.FOGLIO,
--       DUP.NUMERO,
--	   DUP.SUBALTERNO,
--	   DUP.CODICE_FISCALE
  FROM (SELECT DISTINCT ind_sogg.comune,
                        TO_DATE (nota.data_validita_atto,'DD/MM/YYYY') data_validita_atto,
                        nota.id_fornitura fornitura, nota.id_nota nota,
                        sogg.cognome, sogg.nome, sogg.codice_fiscale,
                        DECODE (nota.flag_rettifica,'1', 'SI','NO'
                               ) rettifica,
                        fabbr.foglio, fabbr.numero, fabbr.subalterno,
						fabbr.tipo_denuncia,fabbr.numero_protocollo,fabbr.anno,
                        fabinfo.categoria, fabinfo.rendita_euro rendita,
                        fabinfo.toponimo, fabinfo.t_indirizzo indirizzo,
                        fabinfo.t_civico1 civico, fabinfo.t_civico2 civ2,
                        fabinfo.t_civico3 civ3,
						ROUND (DECODE (tito.quota_denominatore,NULL, NULL,0, NULL,tito.quota_numeratore/tito.quota_denominatore/10),3) perce
                   FROM mi_dup_fabbricati_identifica fabbr,
                        mi_dup_nota_tras nota,
                        (SELECT t.*,
                                DECODE (t.t_toponimo,
                                        '000', '',
                                        '018', 'BST ',
                                        '058', 'CSO ',
                                        '078', 'GLL ',
                                        '080', 'SIT ',
                                        '086', 'LGO ',
                                        '090', '',
                                        '130', 'PZA ',
                                        '132', 'PLE ',
                                        '134', 'PTA ',
                                        '142', 'RIP ',
                                        '18', 'BST ',
                                        '200', '',
                                        '206', '',
                                        '210', '',
                                        '234', '',
                                        '236', 'VIA ',
                                        '240', 'VLE ',
                                        '248', 'VLO ',
                                        '262', 'FOR ',
                                        '264', '',
                                        '268', 'ALZ ',
                                        '300', '',
                                        '302', '',
                                        '303', '',
                                        '469', '',
                                        '58', 'CSO ',
                                        '605', '',
                                        '607', '',
                                        '608', '',
                                        '639', '',
                                        '78', 'GLL ',
                                        '86', 'LGO ',
                                        t.t_toponimo
                                       ) toponimo
                           FROM mi_dup_fabbricati_info t) fabinfo,
                        mi_dup_soggetti sogg,
                        (SELECT id_fornitura, id_nota, id_soggetto_nota,
                                id_soggetto_catastale, tipo_soggetto,
                                id_immobile, tipologia_immobile,
                                DECODE(sc_flag_tipo_titol_nota,NULL, sf_flag_tipo_titol_nota,sc_flag_tipo_titol_nota
                                    ) tipo_titol_nota,
                                DECODE (sc_codice_diritto,
                                        NULL, sf_codice_diritto,
                                        sc_codice_diritto
                                       ) codice_diritto,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_numeratore,
                                                 NULL, NULL,
                                                 sc_quota_numeratore
                                                ),
                                    DECODE (sf_quota_numeratore,
                                            NULL, NULL,
                                            sf_quota_numeratore
                                           )
                                   ) quota_numeratore,
                                DECODE
                                   (sc_flag_tipo_titol_nota,
                                    'C', DECODE (sc_quota_denominatore,
                                                 NULL, NULL,
                                                 sc_quota_denominatore
                                                ),
                                    DECODE (sf_quota_denominatore,
                                            NULL, NULL,
                                            sf_quota_denominatore
                                           )
                                   ) quota_denominatore,
                                DECODE (sc_regime,
                                        NULL, sf_regime,
                                        sc_regime
                                       ) regime,
                                DECODE (sc_soggetto_rif,
                                        NULL, sc_soggetto_rif,
                                        sc_soggetto_rif
                                       ) soggetto_rif,
                                pr_fla_tipo_titol_cat, pr_id_titolarita,
                                pr_codice_diritto, pr_quota_numeratore,
                                pr_quota_denomin, pr_titolo_non_cod,
                                pr_regime, pr_soggetto_rif,
                                dr_fla_tipo_titol_cat, dr_id_titolarita,
                                dr_codice_diritto, dr_quota_numeratore,
                                dr_quota_denomin, dr_titolo_non_cod,
                                dr_regime, dr_soggetto_rif
                           FROM mi_dup_titolarita) tito,
                        mi_dup_indirizzi_sog ind_sogg
                  WHERE NVL (tito.id_soggetto_nota, 'vuoto') =
                                          NVL (sogg.id_soggetto_nota, 'vuoto')
                    AND tito.id_nota = sogg.id_nota
                    AND tito.id_fornitura = sogg.id_fornitura
                    AND sogg.id_nota = nota.id_nota
                    AND sogg.id_fornitura = nota.id_fornitura
                    AND tito.id_nota = fabbr.id_nota
                    AND nota.id_nota = fabbr.id_nota
                    AND nota.id_fornitura = fabbr.id_fornitura
                    AND fabbr.id_fornitura = fabinfo.id_fornitura
                    AND fabbr.id_nota = fabinfo.id_nota
                    AND fabbr.id_immobile = fabinfo.id_immobile
                    AND tito.id_soggetto_nota = ind_sogg.id_soggetto_nota
                    AND tito.id_nota = ind_sogg.id_nota
                    AND tito.id_fornitura = ind_sogg.id_fornitura
                    AND ind_sogg.comune <> 'MILANO'
                    AND tito.tipo_titol_nota = 'F'
                    AND sogg.codice_fiscale IS NOT NULL
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') >=
                                          TO_DATE ('01/01/2004', 'DD/MM/YYYY')
                    AND TO_DATE (nota.data_validita_atto, 'DD/MM/YYYY') <=
                                          TO_DATE ('31/12/2004', 'DD/MM/YYYY')) dup
       ,dbtotale.pop_anagrafe  POP_ANA
      ,dbtotale.SIT_D_CIVICI  D_CIV
   ,MILANO.V_VIE_CIVICI_UIU UIU
 WHERE POP_ANA.tipo_soggetto = 'A'
   AND dup.codice_fiscale = POP_ANA.codice_fiscale
   AND POP_ANA.PK_CIVICO = D_CIV.PK_CIVICO
   AND D_CIV.FK_VIE = UIU.NUMERO 
   AND LPAD(NVL(TRIM(DUP.FOGLIO),'0000'),4,0) = LPAD(NVL(TRIM(TO_CHAR(UIU.foglio)),'0000'),4,0)
   AND LPAD(NVL(TRIM(DUP.NUMERO),'00000'),5,0) = LPAD(NVL(TRIM(TO_CHAR(UIU.PARTICELLA)),'00000'),5,0)
   AND DECODE (DUP.SUBALTERNO, NULL, '0', LPAD (DUP.SUBALTERNO, 4, 0)) = TRIM(LPAD (UIU.UNIMM, 4, 0))
   AND uiu.data_inizio_VAL <= DUP.DATA_VALIDITA_ATTO
   AND uiu.data_fine_VAL >=   DUP.DATA_VALIDITA_ATTO
   and INDIRIZZO IS NOT NULL
   AND DUP.CATEGORIA LIKE 'A%'
   AND DUP.CATEGORIA <> 'A10'
)
--
--       Identificate 3159   uiu  con FPS    ricavati dal MUI     
--
SELECT DISTINCT 
       dup.FOGLIO,
       DUP.NUMERO,
	   DUP.SUBALTERNO
--	   DUP.CODICE_FISCALE
FROM V_2004_AXX_RESIDENTI DUP 

select * from V_2004_AXX_RESIDENTI

--
--       Agganciate 3154    uiu  con FPS   su ICI_LINK      
--
SELECT DISTINCT    dup.FOGLIO,
       			   DUP.NUMERO,
	   			   DUP.SUBALTERNO
   FROM V_2004_AXX_RESIDENTI DUP
       ,dbtotale.SIT_T_OGGETTI_ICI ICI
 WHERE LPAD(NVL(TRIM(DUP.FOGLIO),'0000'),4,0) = LPAD(NVL(TRIM(TO_CHAR(ICI.foglio)),'0000'),4,0)
   AND LPAD(NVL(TRIM(DUP.NUMERO),'00000'),5,0) = LPAD(NVL(TRIM(TO_CHAR(ICI.PARTICELLA)),'00000'),5,0)
   AND DECODE (DUP.SUBALTERNO, NULL, '0', LPAD (DUP.SUBALTERNO, 4, 0)) = TRIM(LPAD (ICI.SUBALTERNO, 4, 0))
   AND ICI.DATI_ORI = 'I'
  
--
--   Riconosciuti con  importo detrazione prima casa > 0        1102 con codice fiscale  
--                                        relative  a  950 UIU     
--
SELECT DISTINCT    dup.FOGLIO,
       			   DUP.NUMERO,
	   			   DUP.SUBALTERNO
--				   ,DUP.CODICE_FISCALE
   FROM V_2004_AXX_RESIDENTI DUP
       ,dbtotale.SIT_T_OGGETTI_ICI ICI
 WHERE LPAD(NVL(TRIM(DUP.FOGLIO),'0000'),4,0) = LPAD(NVL(TRIM(TO_CHAR(ICI.foglio)),'0000'),4,0)
   AND LPAD(NVL(TRIM(DUP.NUMERO),'00000'),5,0) = LPAD(NVL(TRIM(TO_CHAR(ICI.PARTICELLA)),'00000'),5,0)
   AND DECODE (DUP.SUBALTERNO, NULL, '0', LPAD (DUP.SUBALTERNO, 4, 0)) = TRIM(LPAD (ICI.SUBALTERNO, 4, 0))
   AND ICI.DATI_ORI = 'I'
   AND ICI.DETRAZIONE > 0
     		
--
--   Riconosciuti come diritto detrazione prima casa         884 con codice fiscale  
--                                              relative  a  765 UIU     
--
SELECT DISTINCT    dup.FOGLIO,
       			   DUP.NUMERO,
	   			   DUP.SUBALTERNO
			   ,DUP.CODICE_FISCALE
   FROM V_2004_AXX_RESIDENTI DUP
       ,dbtotale.SIT_T_OGGETTI_ICI ICI
 WHERE LPAD(NVL(TRIM(DUP.FOGLIO),'0000'),4,0) = LPAD(NVL(TRIM(TO_CHAR(ICI.foglio)),'0000'),4,0)
   AND LPAD(NVL(TRIM(DUP.NUMERO),'00000'),5,0) = LPAD(NVL(TRIM(TO_CHAR(ICI.PARTICELLA)),'00000'),5,0)
   AND DECODE (DUP.SUBALTERNO, NULL, '0', LPAD (DUP.SUBALTERNO, 4, 0)) = TRIM(LPAD (ICI.SUBALTERNO, 4, 0))
   AND ICI.DATI_ORI = 'I'
   AND ICI.DIC_DETRAZIONE = 'SI'
  
  	