package it.escsolution.escwebgis.dup.bean;


import it.escsolution.escwebgis.common.EscObject;

import java.io.Serializable;
import java.util.List;


/**
 * MiDupNotaTrasId generated by hbm2java
 */
public class DupNota  extends EscObject implements Serializable {

    // Fields    

     private String idFornitura;
     private String idNota;
     private String tipoNota;
     private String numeroNotaTras;
     private String progressivoNota;
     private String annoNota;
     private String dataValiditaAtto;
     private String dataPresAtto;
     private String esitoNota;
     private String esitoNotaNonReg;
     private String dataRegInAtti;
     private String numeroRepertorio;
     private String flagRettifica;
     private String tipoNotaRet;
     private String numeroNotaRet;
     private String dataPresAttoRet;
     private String cognomeNomeRog;
     private String codFiscRog;
     private String sedeRog;
     private String registrazioneDif;
     private String dataInDif;
     
 	 private List listSogFavore;
 	 private List listSogContro;
 	 private List listSogNonCoinvolti;
 	 private List listImmobili;
 	private List listTerreni;
 	


    // Constructors

    /** default constructor */
    public DupNota() {
        idFornitura="";
        idNota="";
        tipoNota="";
        numeroNotaTras="";
        progressivoNota="";
        annoNota="";
        dataValiditaAtto="";
        dataPresAtto="";
        esitoNota="";
        esitoNotaNonReg="";
        dataRegInAtti="";
        numeroRepertorio="";
        flagRettifica="";
        tipoNotaRet="";
        numeroNotaRet="";
        dataPresAttoRet="";
        cognomeNomeRog="";
        codFiscRog="";
        sedeRog="";
        registrazioneDif="";
        dataInDif="";
		listSogFavore = null;
		listSogContro= null;
		listSogNonCoinvolti = null;
		listImmobili=null;
		listTerreni=null;
    	
    }
   // Property accessors

	public String getChiave(){
	
 		return "1";			
 		
		
	}
    
    
    /**
     * 
     */
    public String getIdFornitura() {
        return this.idFornitura;
    }
    
    public void setIdFornitura(String idFornitura) {
        this.idFornitura = idFornitura;
    }

    /**
     * 
     */
    public String getIdNota() {
        return this.idNota;
    }
    
    public void setIdNota(String idNota) {
        this.idNota = idNota;
    }

    /**
     * 
     */
    public String getTipoNota() {
        return this.tipoNota;
    }
    
    public void setTipoNota(String tipoNota) {
        this.tipoNota = tipoNota;
    }

    /**
     * 
     */
    public String getNumeroNotaTras() {
        return this.numeroNotaTras;
    }
    
    public void setNumeroNotaTras(String numeroNotaTras) {
        this.numeroNotaTras = numeroNotaTras;
    }

    /**
     * 
     */
    public String getProgressivoNota() {
        return this.progressivoNota;
    }
    
    public void setProgressivoNota(String progressivoNota) {
        this.progressivoNota = progressivoNota;
    }

    /**
     * 
     */
    public String getAnnoNota() {
        return this.annoNota;
    }
    
    public void setAnnoNota(String annoNota) {
        this.annoNota = annoNota;
    }

    /**
     * 
     */
    public String getDataValiditaAtto() {
        return this.dataValiditaAtto;
    }
    
    public void setDataValiditaAtto(String dataValiditaAtto) {
        this.dataValiditaAtto = dataValiditaAtto;
    }

    /**
     * 
     */
    public String getDataPresAtto() {
        return this.dataPresAtto;
    }
    
    public void setDataPresAtto(String dataPresAtto) {
        this.dataPresAtto = dataPresAtto;
    }

    /**
     * 
     */
    public String getEsitoNota() {
        return this.esitoNota;
    }
    
    public void setEsitoNota(String esitoNota) {
        this.esitoNota = esitoNota;
    }

    /**
     * 
     */
    public String getEsitoNotaNonReg() {
        return this.esitoNotaNonReg;
    }
    
    public void setEsitoNotaNonReg(String esitoNotaNonReg) {
        this.esitoNotaNonReg = esitoNotaNonReg;
    }

    /**
     * 
     */
    public String getDataRegInAtti() {
        return this.dataRegInAtti;
    }
    
    public void setDataRegInAtti(String dataRegInAtti) {
        this.dataRegInAtti = dataRegInAtti;
    }

    /**
     * 
     */
    public String getNumeroRepertorio() {
        return this.numeroRepertorio;
    }
    
    public void setNumeroRepertorio(String numeroRepertorio) {
        this.numeroRepertorio = numeroRepertorio;
    }

    /**
     * 
     */
    public String getFlagRettifica() {
        return this.flagRettifica;
    }
    
    public void setFlagRettifica(String flagRettifica) {
        this.flagRettifica = flagRettifica;
    }

    /**
     * 
     */
    public String getTipoNotaRet() {
        return this.tipoNotaRet;
    }
    
    public void setTipoNotaRet(String tipoNotaRet) {
        this.tipoNotaRet = tipoNotaRet;
    }

    /**
     * 
     */
    public String getNumeroNotaRet() {
        return this.numeroNotaRet;
    }
    
    public void setNumeroNotaRet(String numeroNotaRet) {
        this.numeroNotaRet = numeroNotaRet;
    }

    /**
     * 
     */
    public String getDataPresAttoRet() {
        return this.dataPresAttoRet;
    }
    
    public void setDataPresAttoRet(String dataPresAttoRet) {
        this.dataPresAttoRet = dataPresAttoRet;
    }

    /**
     * 
     */
    public String getCognomeNomeRog() {
        return this.cognomeNomeRog;
    }
    
    public void setCognomeNomeRog(String cognomeNomeRog) {
        this.cognomeNomeRog = cognomeNomeRog;
    }

    /**
     * 
     */
    public String getCodFiscRog() {
        return this.codFiscRog;
    }
    
    public void setCodFiscRog(String codFiscRog) {
        this.codFiscRog = codFiscRog;
    }

    /**
     * 
     */
    public String getSedeRog() {
        //if(sedeRog.equals("F205"))
        	//return "MILANO (MI)";
    	return this.sedeRog;
    }
    
    public void setSedeRog(String sedeRog) {
        this.sedeRog = sedeRog;
    }

    /**
     * 
     */
    public String getRegistrazioneDif() {
        return this.registrazioneDif;
    }
    
    public void setRegistrazioneDif(String registrazioneDif) {
        this.registrazioneDif = registrazioneDif;
    }

    /**
     * 
     */
    public String getDataInDif() {
        return this.dataInDif;
    }
    
    public void setDataInDif(String dataInDif) {
        this.dataInDif = dataInDif;
    }

	/**
	 * @return Returns the listSogContro.
	 */
	public List getListSogContro() {
		return listSogContro;
	}
	/**
	 * @param listSogContro The listSogContro to set.
	 */
	public void setListSogContro(List listSogContro) {
		this.listSogContro = listSogContro;
	}
	/**
	 * @return Returns the listSogFavore.
	 */
	public List getListSogFavore() {
		return listSogFavore;
	}
	/**
	 * @param listSogFavore The listSogFavore to set.
	 */
	public void setListSogFavore(List listSogFavore) {
		this.listSogFavore = listSogFavore;
	}
	/**
	 * @return Returns the listSogNonCoinvolti.
	 */
	public List getListSogNonCoinvolti() {
		return listSogNonCoinvolti;
	}
	/**
	 * @param listSogNonCoinvolti The listSogNonCoinvolti to set.
	 */
	public void setListSogNonCoinvolti(List listSogNonCoinvolti) {
		this.listSogNonCoinvolti = listSogNonCoinvolti;
	}
	
	
	/**
	 * @return Returns the listImmobili.
	 */
	public List getListImmobili() {
		return listImmobili;
	}
	/**
	 * @param listImmobili The listImmobili to set.
	 */
	public void setListImmobili(List listImmobili) {
		this.listImmobili = listImmobili;
	}
	public List getListTerreni() {
		return listTerreni;
	}
	public void setListTerreni(List listTerreni) {
		this.listTerreni = listTerreni;
	}
	
}