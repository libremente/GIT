package it.webred.mui.model;
// Generated 1-apr-2009 13.23.57 by Hibernate Tools 3.1.0.beta4



/**
 * MiDupFabbricatiIdentificaBase generated by hbm2java
 */

public class MiDupFabbricatiIdentificaBase  implements java.io.Serializable {


    // Fields    

     private long iid;
     private MiDupFornitura miDupFornitura;
     private String idNota;
     private MiDupNotaTras miDupNotaTras;
     private String idImmobile;
     private MiDupFabbricatiInfo miDupFabbricatiInfo;
     private String idCatastaleImmobile;
     private String sezioneCensuaria;
     private String sezioneUrbana;
     private String foglio;
     private String numero;
     private String denominatore;
     private String subalterno;
     private String edificabilita;
     private String tipoDenuncia;
     private String numeroProtocollo;
     private String anno;


    // Constructors

    /** default constructor */
    public MiDupFabbricatiIdentificaBase() {
    }

	/** minimal constructor */
    public MiDupFabbricatiIdentificaBase(MiDupFornitura miDupFornitura) {
        this.miDupFornitura = miDupFornitura;
    }
    
    /** full constructor */
    public MiDupFabbricatiIdentificaBase(MiDupFornitura miDupFornitura, String idNota, MiDupNotaTras miDupNotaTras, String idImmobile, MiDupFabbricatiInfo miDupFabbricatiInfo, String idCatastaleImmobile, String sezioneCensuaria, String sezioneUrbana, String foglio, String numero, String denominatore, String subalterno, String edificabilita, String tipoDenuncia, String numeroProtocollo, String anno) {
        this.miDupFornitura = miDupFornitura;
        this.idNota = idNota;
        this.miDupNotaTras = miDupNotaTras;
        this.idImmobile = idImmobile;
        this.miDupFabbricatiInfo = miDupFabbricatiInfo;
        this.idCatastaleImmobile = idCatastaleImmobile;
        this.sezioneCensuaria = sezioneCensuaria;
        this.sezioneUrbana = sezioneUrbana;
        this.foglio = foglio;
        this.numero = numero;
        this.denominatore = denominatore;
        this.subalterno = subalterno;
        this.edificabilita = edificabilita;
        this.tipoDenuncia = tipoDenuncia;
        this.numeroProtocollo = numeroProtocollo;
        this.anno = anno;
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

    public String getIdImmobile() {
        return this.idImmobile;
    }
    
    public void setIdImmobile(String idImmobile) {
        this.idImmobile = idImmobile;
    }

    public MiDupFabbricatiInfo getMiDupFabbricatiInfo() {
        return this.miDupFabbricatiInfo;
    }
    
    public void setMiDupFabbricatiInfo(MiDupFabbricatiInfo miDupFabbricatiInfo) {
        this.miDupFabbricatiInfo = miDupFabbricatiInfo;
    }

    public String getIdCatastaleImmobile() {
        return this.idCatastaleImmobile;
    }
    
    public void setIdCatastaleImmobile(String idCatastaleImmobile) {
        this.idCatastaleImmobile = idCatastaleImmobile;
    }

    public String getSezioneCensuaria() {
        return this.sezioneCensuaria;
    }
    
    public void setSezioneCensuaria(String sezioneCensuaria) {
        this.sezioneCensuaria = sezioneCensuaria;
    }

    public String getSezioneUrbana() {
        return this.sezioneUrbana;
    }
    
    public void setSezioneUrbana(String sezioneUrbana) {
        this.sezioneUrbana = sezioneUrbana;
    }

    public String getFoglio() {
        return this.foglio;
    }
    
    public void setFoglio(String foglio) {
        this.foglio = foglio;
    }

    public String getNumero() {
        return this.numero;
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getDenominatore() {
        return this.denominatore;
    }
    
    public void setDenominatore(String denominatore) {
        this.denominatore = denominatore;
    }

    public String getSubalterno() {
        return this.subalterno;
    }
    
    public void setSubalterno(String subalterno) {
        this.subalterno = subalterno;
    }

    public String getEdificabilita() {
        return this.edificabilita;
    }
    
    public void setEdificabilita(String edificabilita) {
        this.edificabilita = edificabilita;
    }

    public String getTipoDenuncia() {
        return this.tipoDenuncia;
    }
    
    public void setTipoDenuncia(String tipoDenuncia) {
        this.tipoDenuncia = tipoDenuncia;
    }

    public String getNumeroProtocollo() {
        return this.numeroProtocollo;
    }
    
    public void setNumeroProtocollo(String numeroProtocollo) {
        this.numeroProtocollo = numeroProtocollo;
    }

    public String getAnno() {
        return this.anno;
    }
    
    public void setAnno(String anno) {
        this.anno = anno;
    }
   








}
