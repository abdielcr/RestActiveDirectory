package com.telnor.reset.login.rest;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import java.awt.Desktop;
import java.net.URI;
import java.net.URISyntaxException;

public class CambioPass {

	public static void main(String[] args) throws ClientProtocolException, IOException, JSONException  {}
 
	//Peticion JSON
	public void cambiaPass(String url) throws ClientProtocolException, IOException, JSONException, URISyntaxException{
		
		//Creamos conexiòn para consumir el servicio
		 HttpClient client = HttpClientBuilder.create().build();
		 HttpPost post = new HttpPost("http://vmportaldes1:8280/ActiveDirectoryLogin/cambiarPassword.jsp");
		 StringEntity input = new StringEntity(url); //here instead of JSON you can also have XML
		 post.setEntity(input);
		 input.setContentType("application/json");
		 HttpResponse response = client.execute(post);
		 BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
		 String line = "";
		
		 while ((line = rd.readLine()) != null) {
			 
			//Convertimos a JSONObject 
			JSONObject json = new JSONObject(line.toString());
			String codigo = json.getString("estadoCodigo");
			System.out.println(codigo);
			
			//Manejo de los distintos tipos de codigos.
			if(codigo.toString().equals("-11")) {
				if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
				    Desktop.getDesktop().browse(new URI("http://localhost:8080/AgilSinLonginSae/usuarioPassError.jsp"));
				}	
			}
			else if(codigo.toString().equals("-12")){
				if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
				    Desktop.getDesktop().browse(new URI("http://localhost:8080/AgilSinLonginSae/vacioError.jsp"));
				}	
			}
			else if(codigo.toString().equals("-13")){
				if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
				    Desktop.getDesktop().browse(new URI("http://localhost:8080/AgilSinLonginSae/activeDirectoryError.jsp"));
				}	
			}
			else if(codigo.toString().equals("-14")){
				if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
				    Desktop.getDesktop().browse(new URI("http://localhost:8080/AgilSinLonginSae/activeDirectoryError.jsp"));
				}	
			}
			else if(codigo.toString().equals("-15")){
				if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
				    Desktop.getDesktop().browse(new URI("http://localhost:8080/AgilSinLonginSae/otroError.jsp"));
				}	
			}
			else if(codigo.toString().equals("-0")){
				if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
				    Desktop.getDesktop().browse(new URI("http://localhost:8080/AgilSinLonginSae/exito.jsp"));
				}	
			}
				 
		 }
	}
}