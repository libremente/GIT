//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.0-b52-fcs 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2011.11.04 at 03:21:54 PM CET 
//


package it.webred.ct.service.jaxb.intTerritorio.datiCivico.response;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for risposta complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="risposta">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="vie" type="{}infoVia" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="infoParticelleCivico" type="{}particellaInfo" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="countUnder18" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="count1865" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="countOver65" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="countFamResidenti" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="countFamResidentiProprietarie" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="countLocazioni" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="countLicenzeCommercio" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="listaLicenzeCommercio" type="{}sitLicenzeCommercio" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="avgOMImq" type="{http://www.w3.org/2001/XMLSchema}double" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "risposta", propOrder = {
    "vie",
    "infoParticelleCivico",
    "countUnder18",
    "count1865",
    "countOver65",
    "countFamResidenti",
    "countFamResidentiProprietarie",
    "countLocazioni",
    "countLicenzeCommercio",
    "listaLicenzeCommercio",
    "avgOMImq"
})
public class Risposta
    implements Serializable
{

    private final static long serialVersionUID = 12343L;
    @XmlElement(required = true)
    protected List<InfoVia> vie;
    @XmlElement(required = true)
    protected List<ParticellaInfo> infoParticelleCivico;
    protected Integer countUnder18;
    protected Integer count1865;
    protected Integer countOver65;
    protected Integer countFamResidenti;
    protected Integer countFamResidentiProprietarie;
    protected Integer countLocazioni;
    protected Integer countLicenzeCommercio;
    @XmlElement(required = true)
    protected List<SitLicenzeCommercio> listaLicenzeCommercio;
    protected Double avgOMImq;

    /**
     * Gets the value of the vie property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the vie property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getVie().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link InfoVia }
     * 
     * 
     */
    public List<InfoVia> getVie() {
        if (vie == null) {
            vie = new ArrayList<InfoVia>();
        }
        return this.vie;
    }

    public boolean isSetVie() {
        return ((this.vie!= null)&&(!this.vie.isEmpty()));
    }

    public void unsetVie() {
        this.vie = null;
    }

    /**
     * Gets the value of the infoParticelleCivico property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the infoParticelleCivico property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getInfoParticelleCivico().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link ParticellaInfo }
     * 
     * 
     */
    public List<ParticellaInfo> getInfoParticelleCivico() {
        if (infoParticelleCivico == null) {
            infoParticelleCivico = new ArrayList<ParticellaInfo>();
        }
        return this.infoParticelleCivico;
    }

    public boolean isSetInfoParticelleCivico() {
        return ((this.infoParticelleCivico!= null)&&(!this.infoParticelleCivico.isEmpty()));
    }

    public void unsetInfoParticelleCivico() {
        this.infoParticelleCivico = null;
    }

    /**
     * Gets the value of the countUnder18 property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCountUnder18() {
        return countUnder18;
    }

    /**
     * Sets the value of the countUnder18 property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCountUnder18(Integer value) {
        this.countUnder18 = value;
    }

    public boolean isSetCountUnder18() {
        return (this.countUnder18 != null);
    }

    /**
     * Gets the value of the count1865 property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCount1865() {
        return count1865;
    }

    /**
     * Sets the value of the count1865 property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCount1865(Integer value) {
        this.count1865 = value;
    }

    public boolean isSetCount1865() {
        return (this.count1865 != null);
    }

    /**
     * Gets the value of the countOver65 property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCountOver65() {
        return countOver65;
    }

    /**
     * Sets the value of the countOver65 property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCountOver65(Integer value) {
        this.countOver65 = value;
    }

    public boolean isSetCountOver65() {
        return (this.countOver65 != null);
    }

    /**
     * Gets the value of the countFamResidenti property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCountFamResidenti() {
        return countFamResidenti;
    }

    /**
     * Sets the value of the countFamResidenti property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCountFamResidenti(Integer value) {
        this.countFamResidenti = value;
    }

    public boolean isSetCountFamResidenti() {
        return (this.countFamResidenti!= null);
    }

    /**
     * Gets the value of the countFamResidentiProprietarie property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCountFamResidentiProprietarie() {
        return countFamResidentiProprietarie;
    }

    /**
     * Sets the value of the countFamResidentiProprietarie property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCountFamResidentiProprietarie(Integer value) {
        this.countFamResidentiProprietarie = value;
    }

    public boolean isSetCountFamResidentiProprietarie() {
        return (this.countFamResidentiProprietarie!= null);
    }

    /**
     * Gets the value of the countLocazioni property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCountLocazioni() {
        return countLocazioni;
    }

    /**
     * Sets the value of the countLocazioni property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCountLocazioni(Integer value) {
        this.countLocazioni = value;
    }

    public boolean isSetCountLocazioni() {
        return (this.countLocazioni!= null);
    }

    /**
     * Gets the value of the countLicenzeCommercio property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCountLicenzeCommercio() {
        return countLicenzeCommercio;
    }

    /**
     * Sets the value of the countLicenzeCommercio property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCountLicenzeCommercio(Integer value) {
        this.countLicenzeCommercio = value;
    }

    public boolean isSetCountLicenzeCommercio() {
        return (this.countLicenzeCommercio!= null);
    }

    /**
     * Gets the value of the listaLicenzeCommercio property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the listaLicenzeCommercio property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getListaLicenzeCommercio().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link SitLicenzeCommercio }
     * 
     * 
     */
    public List<SitLicenzeCommercio> getListaLicenzeCommercio() {
        if (listaLicenzeCommercio == null) {
            listaLicenzeCommercio = new ArrayList<SitLicenzeCommercio>();
        }
        return this.listaLicenzeCommercio;
    }

    public boolean isSetListaLicenzeCommercio() {
        return ((this.listaLicenzeCommercio!= null)&&(!this.listaLicenzeCommercio.isEmpty()));
    }

    public void unsetListaLicenzeCommercio() {
        this.listaLicenzeCommercio = null;
    }

    /**
     * Gets the value of the avgOMImq property.
     * 
     * @return
     *     possible object is
     *     {@link Double }
     *     
     */
    public Double getAvgOMImq() {
        return avgOMImq;
    }

    /**
     * Sets the value of the avgOMImq property.
     * 
     * @param value
     *     allowed object is
     *     {@link Double }
     *     
     */
    public void setAvgOMImq(Double value) {
        this.avgOMImq = value;
    }

    public boolean isSetAvgOMImq() {
        return (this.avgOMImq!= null);
    }

}
