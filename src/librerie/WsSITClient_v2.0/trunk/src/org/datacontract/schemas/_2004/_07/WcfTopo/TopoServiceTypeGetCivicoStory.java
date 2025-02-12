/**
 * TopoServiceTypeGetCivicoStory.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.datacontract.schemas._2004._07.WcfTopo;

public class TopoServiceTypeGetCivicoStory  implements java.io.Serializable {
    private org.datacontract.schemas._2004._07.WcfTopo.TopoServiceTypeGetCivicoStoryCivic[] civic;

    private org.datacontract.schemas._2004._07.WcfTopo.TopoServiceTypeError err;

    public TopoServiceTypeGetCivicoStory() {
    }

    public TopoServiceTypeGetCivicoStory(
           org.datacontract.schemas._2004._07.WcfTopo.TopoServiceTypeGetCivicoStoryCivic[] civic,
           org.datacontract.schemas._2004._07.WcfTopo.TopoServiceTypeError err) {
           this.civic = civic;
           this.err = err;
    }


    /**
     * Gets the civic value for this TopoServiceTypeGetCivicoStory.
     * 
     * @return civic
     */
    public org.datacontract.schemas._2004._07.WcfTopo.TopoServiceTypeGetCivicoStoryCivic[] getCivic() {
        return civic;
    }


    /**
     * Sets the civic value for this TopoServiceTypeGetCivicoStory.
     * 
     * @param civic
     */
    public void setCivic(org.datacontract.schemas._2004._07.WcfTopo.TopoServiceTypeGetCivicoStoryCivic[] civic) {
        this.civic = civic;
    }


    /**
     * Gets the err value for this TopoServiceTypeGetCivicoStory.
     * 
     * @return err
     */
    public org.datacontract.schemas._2004._07.WcfTopo.TopoServiceTypeError getErr() {
        return err;
    }


    /**
     * Sets the err value for this TopoServiceTypeGetCivicoStory.
     * 
     * @param err
     */
    public void setErr(org.datacontract.schemas._2004._07.WcfTopo.TopoServiceTypeError err) {
        this.err = err;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof TopoServiceTypeGetCivicoStory)) return false;
        TopoServiceTypeGetCivicoStory other = (TopoServiceTypeGetCivicoStory) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.civic==null && other.getCivic()==null) || 
             (this.civic!=null &&
              java.util.Arrays.equals(this.civic, other.getCivic()))) &&
            ((this.err==null && other.getErr()==null) || 
             (this.err!=null &&
              this.err.equals(other.getErr())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getCivic() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getCivic());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getCivic(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getErr() != null) {
            _hashCode += getErr().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(TopoServiceTypeGetCivicoStory.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/WcfTopo", "TopoService.typeGetCivicoStory"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("civic");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/WcfTopo", "Civic"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/WcfTopo", "TopoService.typeGetCivicoStoryCivic"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/WcfTopo", "TopoService.typeGetCivicoStoryCivic"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("err");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/WcfTopo", "Err"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/WcfTopo", "TopoService.typeError"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
