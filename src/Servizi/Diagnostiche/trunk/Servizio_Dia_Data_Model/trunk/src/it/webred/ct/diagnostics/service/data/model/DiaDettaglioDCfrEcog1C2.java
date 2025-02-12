package it.webred.ct.diagnostics.service.data.model;

import it.webred.ct.diagnostics.service.data.SuperDia;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


/**
 * The persistent class for the DIA_DETTAGLIO_D_CFR_ECOG1_V1 database table.
 * 
 */
@Entity
@Table(name="DIA_DETTAGLIO_D_CFR_ECOG1_C2")
public class DiaDettaglioDCfrEcog1C2 extends SuperDia implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@SequenceGenerator(name="DIA_DETTAGLIO_D_CFR_ECOG1_C2_ID_GENERATOR", sequenceName="SEQ_DIA_DETTAGLIO_D_CFR_ECOG1")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="DIA_DETTAGLIO_D_CFR_ECOG1_C2_ID_GENERATOR")
	private Long id;
	
	//bi-directional many-to-one association to DiaTestata
    @ManyToOne
	@JoinColumn(name="FK_DIA_TESTATA")
	private DiaTestata diaTestata;
    
    @Column(name="COM_CODICE_VIA")   
    private String comCodiceVia;
    
    @Column(name="COM_ID_CIVICO")    
    private String comIdCivico;
    
    @Column(name="COM_SEDIME")
    private String comSedime;
    
    @Column(name="COM_INDIRIZZO")
    private String comIndirizzo;
    
    @Column(name="COM_CIVICO")
    private String comCivico;
    

	public DiaDettaglioDCfrEcog1C2() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public DiaTestata getDiaTestata() {
		return diaTestata;
	}

	public void setDiaTestata(DiaTestata diaTestata) {
		this.diaTestata = diaTestata;
	}

	public String getComCodiceVia() {
		return comCodiceVia;
	}

	public void setComCodiceVia(String comCodiceVia) {
		this.comCodiceVia = comCodiceVia;
	}

	public String getComIdCivico() {
		return comIdCivico;
	}

	public void setComIdCivico(String comIdCivico) {
		this.comIdCivico = comIdCivico;
	}

	public String getComSedime() {
		return comSedime;
	}

	public void setComSedime(String comSedime) {
		this.comSedime = comSedime;
	}

	public String getComIndirizzo() {
		return comIndirizzo;
	}

	public void setComIndirizzo(String comIndirizzo) {
		this.comIndirizzo = comIndirizzo;
	}

	public String getComCivico() {
		return comCivico;
	}

	public void setComCivico(String comCivico) {
		this.comCivico = comCivico;
	}

}
