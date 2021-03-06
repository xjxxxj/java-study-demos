
package com.webservice.server;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "ISayHelloImplService", targetNamespace = "http://server.webservice.com/", wsdlLocation = "http://localhost:8888/say/hello?wsdl")
public class ISayHelloImplService
    extends Service
{

    private final static URL ISAYHELLOIMPLSERVICE_WSDL_LOCATION;
    private final static WebServiceException ISAYHELLOIMPLSERVICE_EXCEPTION;
    private final static QName ISAYHELLOIMPLSERVICE_QNAME = new QName("http://server.webservice.com/", "ISayHelloImplService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8888/say/hello?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        ISAYHELLOIMPLSERVICE_WSDL_LOCATION = url;
        ISAYHELLOIMPLSERVICE_EXCEPTION = e;
    }

    public ISayHelloImplService() {
        super(__getWsdlLocation(), ISAYHELLOIMPLSERVICE_QNAME);
    }

    public ISayHelloImplService(WebServiceFeature... features) {
        super(__getWsdlLocation(), ISAYHELLOIMPLSERVICE_QNAME, features);
    }

    public ISayHelloImplService(URL wsdlLocation) {
        super(wsdlLocation, ISAYHELLOIMPLSERVICE_QNAME);
    }

    public ISayHelloImplService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, ISAYHELLOIMPLSERVICE_QNAME, features);
    }

    public ISayHelloImplService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public ISayHelloImplService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns ISayHelloImpl
     */
    @WebEndpoint(name = "ISayHelloImplPort")
    public ISayHelloImpl getISayHelloImplPort() {
        return super.getPort(new QName("http://server.webservice.com/", "ISayHelloImplPort"), ISayHelloImpl.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns ISayHelloImpl
     */
    @WebEndpoint(name = "ISayHelloImplPort")
    public ISayHelloImpl getISayHelloImplPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://server.webservice.com/", "ISayHelloImplPort"), ISayHelloImpl.class, features);
    }

    private static URL __getWsdlLocation() {
        if (ISAYHELLOIMPLSERVICE_EXCEPTION!= null) {
            throw ISAYHELLOIMPLSERVICE_EXCEPTION;
        }
        return ISAYHELLOIMPLSERVICE_WSDL_LOCATION;
    }

}
