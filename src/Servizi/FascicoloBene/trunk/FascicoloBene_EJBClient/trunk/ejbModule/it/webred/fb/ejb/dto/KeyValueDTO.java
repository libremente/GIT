package it.webred.fb.ejb.dto;

import it.webred.ct.support.datarouter.CeTBaseObject;

public class KeyValueDTO extends CeTBaseObject {
	
	private static final long serialVersionUID = 4519210248862335066L;
	
	private String codice;
	private String descrizione;
	
	public String getCodice() {
		return codice;
	}
	public void setCodice(String codice) {
		this.codice = codice;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
//    public String toString() {
//        return descrizione;
//    }

}
