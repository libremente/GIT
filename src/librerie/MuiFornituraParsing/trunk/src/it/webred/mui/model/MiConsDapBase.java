package it.webred.mui.model;
// Generated 15-lug-2008 10.19.09 by Hibernate Tools 3.1.0.beta4

import java.math.BigDecimal;
import java.util.Date;


/**
 * MiConsDapBase generated by hbm2java
 */

public class MiConsDapBase  implements java.io.Serializable {


    // Fields    

     private long iid;
     private MiDupFornitura miDupFornitura;
     private MiDupTitolarita miDupTitolarita;
     private String idNota;
     private MiDupNotaTras miDupNotaTras;
     private Boolean flagSkipped;
     private Boolean flagAbitativo;
     private Boolean flagAbitazionePrincipale;
     private Date dataInizialeDate;
     private Date dataFinaleDate;
     private String idSoggettoNota;
     private MiDupSoggetti miDupSoggetti;
     private String idSoggettoCatastale;
     private String tipoSoggetto;
     private String idImmobile;
     private String tipologiaImmobile;
     private BigDecimal dapImporto;
     private Integer dapMesi;
     private Boolean flagDapDiritto;
     private Integer dapNumeroSoggetti;
     private Date dapData;
     private Boolean flagRegoleDapNoDataResidenza;
     private Boolean flagRegoleDapDataResOltre90Giorni;
     private Boolean flagRegoleDapPrecentualePossessoTotaleErrata;
     private Boolean flagRegoleDapSoggettoPossessorePiuImmobili;
     private Boolean flagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo;
     private Boolean flagRegoleDapNoDataComposizioneFamiliare;
     private String codiceFiscale;
     private Integer foglio;
     private String numero;
     private Integer subalterno;


    // Constructors

    /** default constructor */
    public MiConsDapBase() {
    }

	/** minimal constructor */
    public MiConsDapBase(MiDupFornitura miDupFornitura, MiDupTitolarita miDupTitolarita) {
        this.miDupFornitura = miDupFornitura;
        this.miDupTitolarita = miDupTitolarita;
    }
    
    /** full constructor */
    public MiConsDapBase(MiDupFornitura miDupFornitura, MiDupTitolarita miDupTitolarita, String idNota, MiDupNotaTras miDupNotaTras, Boolean flagSkipped, Boolean flagAbitativo, Boolean flagAbitazionePrincipale, Date dataInizialeDate, Date dataFinaleDate, String idSoggettoNota, MiDupSoggetti miDupSoggetti, String idSoggettoCatastale, String tipoSoggetto, String idImmobile, String tipologiaImmobile, BigDecimal dapImporto, Integer dapMesi, Boolean flagDapDiritto, Integer dapNumeroSoggetti, Date dapData, Boolean flagRegoleDapNoDataResidenza, Boolean flagRegoleDapDataResOltre90Giorni, Boolean flagRegoleDapPrecentualePossessoTotaleErrata, Boolean flagRegoleDapSoggettoPossessorePiuImmobili, Boolean flagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo, Boolean flagRegoleDapNoDataComposizioneFamiliare, String codiceFiscale, Integer foglio, String numero, Integer subalterno) {
        this.miDupFornitura = miDupFornitura;
        this.miDupTitolarita = miDupTitolarita;
        this.idNota = idNota;
        this.miDupNotaTras = miDupNotaTras;
        this.flagSkipped = flagSkipped;
        this.flagAbitativo = flagAbitativo;
        this.flagAbitazionePrincipale = flagAbitazionePrincipale;
        this.dataInizialeDate = dataInizialeDate;
        this.dataFinaleDate = dataFinaleDate;
        this.idSoggettoNota = idSoggettoNota;
        this.miDupSoggetti = miDupSoggetti;
        this.idSoggettoCatastale = idSoggettoCatastale;
        this.tipoSoggetto = tipoSoggetto;
        this.idImmobile = idImmobile;
        this.tipologiaImmobile = tipologiaImmobile;
        this.dapImporto = dapImporto;
        this.dapMesi = dapMesi;
        this.flagDapDiritto = flagDapDiritto;
        this.dapNumeroSoggetti = dapNumeroSoggetti;
        this.dapData = dapData;
        this.flagRegoleDapNoDataResidenza = flagRegoleDapNoDataResidenza;
        this.flagRegoleDapDataResOltre90Giorni = flagRegoleDapDataResOltre90Giorni;
        this.flagRegoleDapPrecentualePossessoTotaleErrata = flagRegoleDapPrecentualePossessoTotaleErrata;
        this.flagRegoleDapSoggettoPossessorePiuImmobili = flagRegoleDapSoggettoPossessorePiuImmobili;
        this.flagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo = flagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo;
        this.flagRegoleDapNoDataComposizioneFamiliare = flagRegoleDapNoDataComposizioneFamiliare;
        this.codiceFiscale = codiceFiscale;
        this.foglio = foglio;
        this.numero = numero;
        this.subalterno = subalterno;
    }
    

   
    // Property accessors

    public long getIid() {
        return this.iid;
    }
    
    public void setIid(long iid) {
        this.iid = iid;
    }

    public MiDupFornitura getMiDupFornitura() {
        return this.miDupFornitura;
    }
    
    public void setMiDupFornitura(MiDupFornitura miDupFornitura) {
        this.miDupFornitura = miDupFornitura;
    }

    public MiDupTitolarita getMiDupTitolarita() {
        return this.miDupTitolarita;
    }
    
    public void setMiDupTitolarita(MiDupTitolarita miDupTitolarita) {
        this.miDupTitolarita = miDupTitolarita;
    }

    public String getIdNota() {
        return this.idNota;
    }
    
    public void setIdNota(String idNota) {
        this.idNota = idNota;
    }

    public MiDupNotaTras getMiDupNotaTras() {
        return this.miDupNotaTras;
    }
    
    public void setMiDupNotaTras(MiDupNotaTras miDupNotaTras) {
        this.miDupNotaTras = miDupNotaTras;
    }

    public Boolean getFlagSkipped() {
        return this.flagSkipped;
    }
    
    public void setFlagSkipped(Boolean flagSkipped) {
        this.flagSkipped = flagSkipped;
    }

    public Boolean getFlagAbitativo() {
        return this.flagAbitativo;
    }
    
    public void setFlagAbitativo(Boolean flagAbitativo) {
        this.flagAbitativo = flagAbitativo;
    }

    public Boolean getFlagAbitazionePrincipale() {
        return this.flagAbitazionePrincipale;
    }
    
    public void setFlagAbitazionePrincipale(Boolean flagAbitazionePrincipale) {
        this.flagAbitazionePrincipale = flagAbitazionePrincipale;
    }

    public Date getDataInizialeDate() {
        return this.dataInizialeDate;
    }
    
    public void setDataInizialeDate(Date dataInizialeDate) {
        this.dataInizialeDate = dataInizialeDate;
    }

    public Date getDataFinaleDate() {
        return this.dataFinaleDate;
    }
    
    public void setDataFinaleDate(Date dataFinaleDate) {
        this.dataFinaleDate = dataFinaleDate;
    }

    public String getIdSoggettoNota() {
        return this.idSoggettoNota;
    }
    
    public void setIdSoggettoNota(String idSoggettoNota) {
        this.idSoggettoNota = idSoggettoNota;
    }

    public MiDupSoggetti getMiDupSoggetti() {
        return this.miDupSoggetti;
    }
    
    public void setMiDupSoggetti(MiDupSoggetti miDupSoggetti) {
        this.miDupSoggetti = miDupSoggetti;
    }

    public String getIdSoggettoCatastale() {
        return this.idSoggettoCatastale;
    }
    
    public void setIdSoggettoCatastale(String idSoggettoCatastale) {
        this.idSoggettoCatastale = idSoggettoCatastale;
    }

    public String getTipoSoggetto() {
        return this.tipoSoggetto;
    }
    
    public void setTipoSoggetto(String tipoSoggetto) {
        this.tipoSoggetto = tipoSoggetto;
    }

    public String getIdImmobile() {
        return this.idImmobile;
    }
    
    public void setIdImmobile(String idImmobile) {
        this.idImmobile = idImmobile;
    }

    public String getTipologiaImmobile() {
        return this.tipologiaImmobile;
    }
    
    public void setTipologiaImmobile(String tipologiaImmobile) {
        this.tipologiaImmobile = tipologiaImmobile;
    }

    public BigDecimal getDapImporto() {
        return this.dapImporto;
    }
    
    public void setDapImporto(BigDecimal dapImporto) {
        this.dapImporto = dapImporto;
    }

    public Integer getDapMesi() {
        return this.dapMesi;
    }
    
    public void setDapMesi(Integer dapMesi) {
        this.dapMesi = dapMesi;
    }

    public Boolean getFlagDapDiritto() {
        return this.flagDapDiritto;
    }
    
    public void setFlagDapDiritto(Boolean flagDapDiritto) {
        this.flagDapDiritto = flagDapDiritto;
    }

    public Integer getDapNumeroSoggetti() {
        return this.dapNumeroSoggetti;
    }
    
    public void setDapNumeroSoggetti(Integer dapNumeroSoggetti) {
        this.dapNumeroSoggetti = dapNumeroSoggetti;
    }

    public Date getDapData() {
        return this.dapData;
    }
    
    public void setDapData(Date dapData) {
        this.dapData = dapData;
    }

    public Boolean getFlagRegoleDapNoDataResidenza() {
        return this.flagRegoleDapNoDataResidenza;
    }
    
    public void setFlagRegoleDapNoDataResidenza(Boolean flagRegoleDapNoDataResidenza) {
        this.flagRegoleDapNoDataResidenza = flagRegoleDapNoDataResidenza;
    }

    public Boolean getFlagRegoleDapDataResOltre90Giorni() {
        return this.flagRegoleDapDataResOltre90Giorni;
    }
    
    public void setFlagRegoleDapDataResOltre90Giorni(Boolean flagRegoleDapDataResOltre90Giorni) {
        this.flagRegoleDapDataResOltre90Giorni = flagRegoleDapDataResOltre90Giorni;
    }

    public Boolean getFlagRegoleDapPrecentualePossessoTotaleErrata() {
        return this.flagRegoleDapPrecentualePossessoTotaleErrata;
    }
    
    public void setFlagRegoleDapPrecentualePossessoTotaleErrata(Boolean flagRegoleDapPrecentualePossessoTotaleErrata) {
        this.flagRegoleDapPrecentualePossessoTotaleErrata = flagRegoleDapPrecentualePossessoTotaleErrata;
    }

    public Boolean getFlagRegoleDapSoggettoPossessorePiuImmobili() {
        return this.flagRegoleDapSoggettoPossessorePiuImmobili;
    }
    
    public void setFlagRegoleDapSoggettoPossessorePiuImmobili(Boolean flagRegoleDapSoggettoPossessorePiuImmobili) {
        this.flagRegoleDapSoggettoPossessorePiuImmobili = flagRegoleDapSoggettoPossessorePiuImmobili;
    }

    public Boolean getFlagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo() {
        return this.flagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo;
    }
    
    public void setFlagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo(Boolean flagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo) {
        this.flagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo = flagRegoleDapSoggettoPossessorePiuImmobiliStessoIndirizzo;
    }

    public Boolean getFlagRegoleDapNoDataComposizioneFamiliare() {
        return this.flagRegoleDapNoDataComposizioneFamiliare;
    }
    
    public void setFlagRegoleDapNoDataComposizioneFamiliare(Boolean flagRegoleDapNoDataComposizioneFamiliare) {
        this.flagRegoleDapNoDataComposizioneFamiliare = flagRegoleDapNoDataComposizioneFamiliare;
    }

    public String getCodiceFiscale() {
        return this.codiceFiscale;
    }
    
    public void setCodiceFiscale(String codiceFiscale) {
        this.codiceFiscale = codiceFiscale;
    }

    public Integer getFoglio() {
        return this.foglio;
    }
    
    public void setFoglio(Integer foglio) {
        this.foglio = foglio;
    }

    public String getNumero() {
        return this.numero;
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
    }

    public Integer getSubalterno() {
        return this.subalterno;
    }
    
    public void setSubalterno(Integer subalterno) {
        this.subalterno = subalterno;
    }
   








}
