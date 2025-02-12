//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.0-b52-fcs 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2011.11.04 at 03:21:54 PM CET 
//


package it.webred.ct.service.jaxb.intTerritorio.datiCivico.response;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;


/**
 * <p>Java class for sitLicenzeCommercio complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="sitLicenzeCommercio">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="id" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="annoProtocollo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="carattere" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="civico" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="civico2" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="civico3" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="codiceFabbricato" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="ctrHash" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="dataFineSospensione" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="dataInizioSospensione" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="dataRilascio" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="dataValidita" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="dtExpDato" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="dtFineDato" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="dtFineVal" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="dtInizioDato" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="dtInizioVal" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="flagDtValDato" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/>
 *         &lt;element name="foglio" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="note" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="numero" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="numeroProtocollo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="particella" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="provenienza" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="ragSoc" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="riferimAtto" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="sezioneCatastale" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="stato" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="subalterno" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="superficieMinuto" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/>
 *         &lt;element name="superficieTotale" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/>
 *         &lt;element name="tipologia" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="zona" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "sitLicenzeCommercio", propOrder = {
    "id",
    "annoProtocollo",
    "carattere",
    "civico",
    "civico2",
    "civico3",
    "codiceFabbricato",
    "ctrHash",
    "dataFineSospensione",
    "dataInizioSospensione",
    "dataRilascio",
    "dataValidita",
    "dtExpDato",
    "dtFineDato",
    "dtFineVal",
    "dtInizioDato",
    "dtInizioVal",
    "flagDtValDato",
    "foglio",
    "note",
    "numero",
    "numeroProtocollo",
    "particella",
    "provenienza",
    "ragSoc",
    "riferimAtto",
    "sezioneCatastale",
    "stato",
    "subalterno",
    "superficieMinuto",
    "superficieTotale",
    "tipologia",
    "zona"
})
public class SitLicenzeCommercio
    implements Serializable
{

    private final static long serialVersionUID = 12343L;
    protected String id;
    protected String annoProtocollo;
    protected String carattere;
    protected String civico;
    protected String civico2;
    protected String civico3;
    protected String codiceFabbricato;
    protected String ctrHash;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dataFineSospensione;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dataInizioSospensione;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dataRilascio;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dataValidita;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dtExpDato;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dtFineDato;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dtFineVal;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dtInizioDato;
    @XmlElement(type = String.class)
    @XmlJavaTypeAdapter(Adapter1 .class)
    protected Long dtInizioVal;
    protected BigDecimal flagDtValDato;
    protected String foglio;
    protected String note;
    protected String numero;
    protected String numeroProtocollo;
    protected String particella;
    protected String provenienza;
    protected String ragSoc;
    protected String riferimAtto;
    protected String sezioneCatastale;
    protected String stato;
    protected String subalterno;
    protected BigDecimal superficieMinuto;
    protected BigDecimal superficieTotale;
    protected String tipologia;
    protected String zona;

    /**
     * Gets the value of the id property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getId() {
        return id;
    }

    /**
     * Sets the value of the id property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setId(String value) {
        this.id = value;
    }

    public boolean isSetId() {
        return (this.id!= null);
    }

    /**
     * Gets the value of the annoProtocollo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAnnoProtocollo() {
        return annoProtocollo;
    }

    /**
     * Sets the value of the annoProtocollo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAnnoProtocollo(String value) {
        this.annoProtocollo = value;
    }

    public boolean isSetAnnoProtocollo() {
        return (this.annoProtocollo!= null);
    }

    /**
     * Gets the value of the carattere property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCarattere() {
        return carattere;
    }

    /**
     * Sets the value of the carattere property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCarattere(String value) {
        this.carattere = value;
    }

    public boolean isSetCarattere() {
        return (this.carattere!= null);
    }

    /**
     * Gets the value of the civico property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCivico() {
        return civico;
    }

    /**
     * Sets the value of the civico property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCivico(String value) {
        this.civico = value;
    }

    public boolean isSetCivico() {
        return (this.civico!= null);
    }

    /**
     * Gets the value of the civico2 property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCivico2() {
        return civico2;
    }

    /**
     * Sets the value of the civico2 property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCivico2(String value) {
        this.civico2 = value;
    }

    public boolean isSetCivico2() {
        return (this.civico2 != null);
    }

    /**
     * Gets the value of the civico3 property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCivico3() {
        return civico3;
    }

    /**
     * Sets the value of the civico3 property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCivico3(String value) {
        this.civico3 = value;
    }

    public boolean isSetCivico3() {
        return (this.civico3 != null);
    }

    /**
     * Gets the value of the codiceFabbricato property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCodiceFabbricato() {
        return codiceFabbricato;
    }

    /**
     * Sets the value of the codiceFabbricato property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCodiceFabbricato(String value) {
        this.codiceFabbricato = value;
    }

    public boolean isSetCodiceFabbricato() {
        return (this.codiceFabbricato!= null);
    }

    /**
     * Gets the value of the ctrHash property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCtrHash() {
        return ctrHash;
    }

    /**
     * Sets the value of the ctrHash property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCtrHash(String value) {
        this.ctrHash = value;
    }

    public boolean isSetCtrHash() {
        return (this.ctrHash!= null);
    }

    /**
     * Gets the value of the dataFineSospensione property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDataFineSospensione() {
        return dataFineSospensione;
    }

    /**
     * Sets the value of the dataFineSospensione property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDataFineSospensione(Long value) {
        this.dataFineSospensione = value;
    }

    public boolean isSetDataFineSospensione() {
        return (this.dataFineSospensione!= null);
    }

    /**
     * Gets the value of the dataInizioSospensione property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDataInizioSospensione() {
        return dataInizioSospensione;
    }

    /**
     * Sets the value of the dataInizioSospensione property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDataInizioSospensione(Long value) {
        this.dataInizioSospensione = value;
    }

    public boolean isSetDataInizioSospensione() {
        return (this.dataInizioSospensione!= null);
    }

    /**
     * Gets the value of the dataRilascio property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDataRilascio() {
        return dataRilascio;
    }

    /**
     * Sets the value of the dataRilascio property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDataRilascio(Long value) {
        this.dataRilascio = value;
    }

    public boolean isSetDataRilascio() {
        return (this.dataRilascio!= null);
    }

    /**
     * Gets the value of the dataValidita property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDataValidita() {
        return dataValidita;
    }

    /**
     * Sets the value of the dataValidita property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDataValidita(Long value) {
        this.dataValidita = value;
    }

    public boolean isSetDataValidita() {
        return (this.dataValidita!= null);
    }

    /**
     * Gets the value of the dtExpDato property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDtExpDato() {
        return dtExpDato;
    }

    /**
     * Sets the value of the dtExpDato property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDtExpDato(Long value) {
        this.dtExpDato = value;
    }

    public boolean isSetDtExpDato() {
        return (this.dtExpDato!= null);
    }

    /**
     * Gets the value of the dtFineDato property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDtFineDato() {
        return dtFineDato;
    }

    /**
     * Sets the value of the dtFineDato property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDtFineDato(Long value) {
        this.dtFineDato = value;
    }

    public boolean isSetDtFineDato() {
        return (this.dtFineDato!= null);
    }

    /**
     * Gets the value of the dtFineVal property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDtFineVal() {
        return dtFineVal;
    }

    /**
     * Sets the value of the dtFineVal property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDtFineVal(Long value) {
        this.dtFineVal = value;
    }

    public boolean isSetDtFineVal() {
        return (this.dtFineVal!= null);
    }

    /**
     * Gets the value of the dtInizioDato property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDtInizioDato() {
        return dtInizioDato;
    }

    /**
     * Sets the value of the dtInizioDato property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDtInizioDato(Long value) {
        this.dtInizioDato = value;
    }

    public boolean isSetDtInizioDato() {
        return (this.dtInizioDato!= null);
    }

    /**
     * Gets the value of the dtInizioVal property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Long getDtInizioVal() {
        return dtInizioVal;
    }

    /**
     * Sets the value of the dtInizioVal property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDtInizioVal(Long value) {
        this.dtInizioVal = value;
    }

    public boolean isSetDtInizioVal() {
        return (this.dtInizioVal!= null);
    }

    /**
     * Gets the value of the flagDtValDato property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getFlagDtValDato() {
        return flagDtValDato;
    }

    /**
     * Sets the value of the flagDtValDato property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setFlagDtValDato(BigDecimal value) {
        this.flagDtValDato = value;
    }

    public boolean isSetFlagDtValDato() {
        return (this.flagDtValDato!= null);
    }

    /**
     * Gets the value of the foglio property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFoglio() {
        return foglio;
    }

    /**
     * Sets the value of the foglio property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFoglio(String value) {
        this.foglio = value;
    }

    public boolean isSetFoglio() {
        return (this.foglio!= null);
    }

    /**
     * Gets the value of the note property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNote() {
        return note;
    }

    /**
     * Sets the value of the note property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNote(String value) {
        this.note = value;
    }

    public boolean isSetNote() {
        return (this.note!= null);
    }

    /**
     * Gets the value of the numero property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNumero() {
        return numero;
    }

    /**
     * Sets the value of the numero property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumero(String value) {
        this.numero = value;
    }

    public boolean isSetNumero() {
        return (this.numero!= null);
    }

    /**
     * Gets the value of the numeroProtocollo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNumeroProtocollo() {
        return numeroProtocollo;
    }

    /**
     * Sets the value of the numeroProtocollo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumeroProtocollo(String value) {
        this.numeroProtocollo = value;
    }

    public boolean isSetNumeroProtocollo() {
        return (this.numeroProtocollo!= null);
    }

    /**
     * Gets the value of the particella property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getParticella() {
        return particella;
    }

    /**
     * Sets the value of the particella property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setParticella(String value) {
        this.particella = value;
    }

    public boolean isSetParticella() {
        return (this.particella!= null);
    }

    /**
     * Gets the value of the provenienza property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getProvenienza() {
        return provenienza;
    }

    /**
     * Sets the value of the provenienza property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setProvenienza(String value) {
        this.provenienza = value;
    }

    public boolean isSetProvenienza() {
        return (this.provenienza!= null);
    }

    /**
     * Gets the value of the ragSoc property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRagSoc() {
        return ragSoc;
    }

    /**
     * Sets the value of the ragSoc property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRagSoc(String value) {
        this.ragSoc = value;
    }

    public boolean isSetRagSoc() {
        return (this.ragSoc!= null);
    }

    /**
     * Gets the value of the riferimAtto property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRiferimAtto() {
        return riferimAtto;
    }

    /**
     * Sets the value of the riferimAtto property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRiferimAtto(String value) {
        this.riferimAtto = value;
    }

    public boolean isSetRiferimAtto() {
        return (this.riferimAtto!= null);
    }

    /**
     * Gets the value of the sezioneCatastale property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSezioneCatastale() {
        return sezioneCatastale;
    }

    /**
     * Sets the value of the sezioneCatastale property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSezioneCatastale(String value) {
        this.sezioneCatastale = value;
    }

    public boolean isSetSezioneCatastale() {
        return (this.sezioneCatastale!= null);
    }

    /**
     * Gets the value of the stato property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getStato() {
        return stato;
    }

    /**
     * Sets the value of the stato property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStato(String value) {
        this.stato = value;
    }

    public boolean isSetStato() {
        return (this.stato!= null);
    }

    /**
     * Gets the value of the subalterno property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSubalterno() {
        return subalterno;
    }

    /**
     * Sets the value of the subalterno property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSubalterno(String value) {
        this.subalterno = value;
    }

    public boolean isSetSubalterno() {
        return (this.subalterno!= null);
    }

    /**
     * Gets the value of the superficieMinuto property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getSuperficieMinuto() {
        return superficieMinuto;
    }

    /**
     * Sets the value of the superficieMinuto property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setSuperficieMinuto(BigDecimal value) {
        this.superficieMinuto = value;
    }

    public boolean isSetSuperficieMinuto() {
        return (this.superficieMinuto!= null);
    }

    /**
     * Gets the value of the superficieTotale property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getSuperficieTotale() {
        return superficieTotale;
    }

    /**
     * Sets the value of the superficieTotale property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setSuperficieTotale(BigDecimal value) {
        this.superficieTotale = value;
    }

    public boolean isSetSuperficieTotale() {
        return (this.superficieTotale!= null);
    }

    /**
     * Gets the value of the tipologia property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTipologia() {
        return tipologia;
    }

    /**
     * Sets the value of the tipologia property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTipologia(String value) {
        this.tipologia = value;
    }

    public boolean isSetTipologia() {
        return (this.tipologia!= null);
    }

    /**
     * Gets the value of the zona property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getZona() {
        return zona;
    }

    /**
     * Sets the value of the zona property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setZona(String value) {
        this.zona = value;
    }

    public boolean isSetZona() {
        return (this.zona!= null);
    }

}
