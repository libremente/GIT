package it.webred.ct.data.access.basic.diagnostiche.tarsu.dao;

import it.webred.ct.data.access.basic.diagnostiche.dto.IndirizzoDTO;
import it.webred.ct.data.access.basic.diagnostiche.dto.RicercaDocfaReportDTO;
import it.webred.ct.data.access.basic.diagnostiche.dto.RicercaIciTarsuDTO;
import it.webred.ct.data.access.basic.diagnostiche.ici.DiagnosticheIciServiceException;
import it.webred.ct.data.access.basic.diagnostiche.ici.dto.SitTIciOggettoDTO;
import it.webred.ct.data.access.basic.diagnostiche.ici.dto.SoggettoIciDTO;
import it.webred.ct.data.access.basic.diagnostiche.tarsu.DiagnosticheTarServiceException;
import it.webred.ct.data.access.basic.diagnostiche.tarsu.dto.SitTTarOggettoDTO;
import it.webred.ct.data.access.basic.diagnostiche.tarsu.dto.SoggettoTarDTO;
import it.webred.ct.data.model.diagnostiche.DocfaAnomalie;
import it.webred.ct.data.model.diagnostiche.DocfaTarReport;
import it.webred.ct.data.model.diagnostiche.DocfaTarReportSogg;
import it.webred.ct.data.model.docfa.DocfaDatiMetrici;
import it.webred.ct.data.model.docfa.DocfaDichiaranti;
import it.webred.ct.data.model.docfa.DocfaInParteDueH;
import it.webred.ct.data.model.docfa.DocfaIntestati;
import it.webred.ct.data.model.docfa.DocfaPlanimetrie;

import java.util.Date;
import java.util.List;

public interface DocfaTarReportDAO {

	public DocfaTarReport getDocfaTarReportById(String id)
			throws DiagnosticheTarServiceException;

	public List<Object> getSuggestionVie(String via)
			throws DiagnosticheTarServiceException;

	public List<Object> getSuggestionCognomi(String via)
			throws DiagnosticheTarServiceException;

	public List<Object> getSuggestionNomi(String via)
			throws DiagnosticheTarServiceException;

	public List<Object> getSuggestionCodFisc(String via)
			throws DiagnosticheTarServiceException;

	public List<DocfaTarReport> searchReport(RicercaDocfaReportDTO rs)
			throws DiagnosticheTarServiceException;

	public List<DocfaTarReportSogg> getReportSogg(String id)
			throws DiagnosticheTarServiceException;

	public List<DocfaTarReportSogg> getReportSoggTitolari(String id)
			throws DiagnosticheTarServiceException;

	public Long searchReportCount(RicercaDocfaReportDTO rs)
			throws DiagnosticheTarServiceException;

	public List<Object[]> countDocfaFornitura()
			throws DiagnosticheTarServiceException;

	List<IndirizzoDTO> getIndirizziCatasto(RicercaDocfaReportDTO rs)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarAnteDocfaBySoggettoUiu(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarPostDocfaBySoggettoUiu(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;
	
	List<SitTTarOggettoDTO> getTarAnteDocfaBySoggettoCiv(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarPostDocfaBySoggettoCiv(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;
	
	List<SitTTarOggettoDTO> getTarAnteDocfaBySoggettoUiuUnd(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarPostDocfaBySoggettoUiuUnd(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarAnteDocfaByFamiliariUiu(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarPostDocfaByFamiliariUiu(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;
	
	List<SitTTarOggettoDTO> getTarAnteDocfaByFamiliariCiv(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarPostDocfaByFamiliariCiv(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;
	
	List<SitTTarOggettoDTO> getTarAnteDocfaByFamiliariUiuUnd(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarPostDocfaByFamiliariUiuUnd(
			RicercaIciTarsuDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<IndirizzoDTO> getIndirizziTar(RicercaDocfaReportDTO rs)
			throws DiagnosticheTarServiceException;

	List<SoggettoTarDTO> getSoggettiTar(String idExt)
			throws DiagnosticheTarServiceException;

	List<SitTTarOggettoDTO> getTarDocfa(RicercaDocfaReportDTO ricercaDto)
			throws DiagnosticheTarServiceException;

	List<DocfaAnomalie> getListaAnomalie(String tipo)
			throws DiagnosticheTarServiceException;
	
	String getDocfaDescAnomalieById(String sCodAnomalie)
			throws DiagnosticheTarServiceException;

}
