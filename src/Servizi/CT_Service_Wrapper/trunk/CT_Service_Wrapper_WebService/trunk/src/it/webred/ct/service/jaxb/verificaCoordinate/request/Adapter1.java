//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.0-b52-fcs 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2011.12.01 at 10:44:17 AM CET 
//


package it.webred.ct.service.jaxb.verificaCoordinate.request;

import javax.xml.bind.annotation.adapters.XmlAdapter;

public class Adapter1
    extends XmlAdapter<String, Long>
{


    public Long unmarshal(String value) {
        return ((long)javax.xml.bind.DatatypeConverter.parseLong(value));
    }

    public String marshal(Long value) {
        return (javax.xml.bind.DatatypeConverter.printLong((long)(long)value));
    }

}
