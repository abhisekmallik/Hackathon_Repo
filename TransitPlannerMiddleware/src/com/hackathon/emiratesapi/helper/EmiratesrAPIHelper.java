package com.hackathon.emiratesapi.helper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class EmiratesrAPIHelper {
	
	private static SSLSocketFactory TRUSTED_FACTORY = null;  
	
	static {
	    //for emiartes api testing only
	    javax.net.ssl.HttpsURLConnection.setDefaultHostnameVerifier(
	    new javax.net.ssl.HostnameVerifier(){

	        public boolean verify(String hostname,
	                javax.net.ssl.SSLSession sslSession) {
	            if (hostname.equals("ec2-52-18-199-95.eu-west-1.compute.amazonaws.com")) {
	                return true;
	            }
	            return false;
	        }
	    });
	}

	public static String getJsonHotelList(String apiUrl) {
		//String hotelListUrl = "https://ec2-52-18-199-95.eu-west-1.compute.amazonaws.com:8143/listofproperties/1.0/?Location=dubai";
		 	 	
		String output = "";
		StringBuffer response = new StringBuffer();
		try {
			
			URL url = new URL(apiUrl);
			HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
			conn.setSSLSocketFactory(EmiratesrAPIHelper.getTrustedFactory());
			conn.setRequestProperty("Authorization", "Bearer ba83920f8d29746aa2745375e547d8");

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
				(conn.getInputStream())));

			
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
				response.append(output);
			}

			conn.disconnect();

		  } catch (MalformedURLException e) {

			e.printStackTrace();

		  } catch (IOException e) {

			e.printStackTrace();

		  }catch (Exception e) {
			  e.printStackTrace();

		}

		return response.toString();
	}

	
	
	private static SSLSocketFactory getTrustedFactory()
		    throws Exception {
		  if (TRUSTED_FACTORY == null) {
		    final TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {

		      public X509Certificate[] getAcceptedIssuers() {
		        return new X509Certificate[0];
		      }

		      public void checkClientTrusted(X509Certificate[] chain, String authType) {
		        // Intentionally left blank
		      }

		      public void checkServerTrusted(X509Certificate[] chain, String authType) {
		        // Intentionally left blank
		      }
		    } };
		    try {
		      SSLContext context = SSLContext.getInstance("SSL");
		      context.init(null, trustAllCerts, new SecureRandom());
		      TRUSTED_FACTORY = context.getSocketFactory();
		    } catch (GeneralSecurityException e) {
		      IOException ioException = new IOException(
		          "Security exception configuring SSL context");
		      ioException.initCause(e);
		      throw new Exception(ioException);
		    }
		  }

		  return TRUSTED_FACTORY;
		}
	
}
