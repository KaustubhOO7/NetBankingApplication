package com.Project.SpringBoot.Model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class OtpGenerator 
{
	public void sendSMS(String otp,String number)
    {
        try
        {
           String api = "sY0UkSrftsVOisYqaLQ00RigdqsgTrR6nmh4r02TFUJkwkzmT3TVPcjyBdNf";
           otp = URLEncoder.encode(otp,"UTF-8");

           String myUrl = "https://www.fast2sms.com/dev/bulkV2?authorization=" + api + "&message=Your One Time Password is : " + otp + ".Thank You for Choosing Our Service.&language=english&route=q&numbers=" + number;


            URL url = new URL(myUrl);
            HttpURLConnection con =(HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("User-Agent","Mozilla/5.0");
            con.setRequestProperty("cache-control","no cache");

            int code = con.getResponseCode();
            System.out.println("Response Code "+code);

            StringBuffer response = new StringBuffer();
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            while(true)
            {
                String line = br.readLine();
                if(line==null) break;

                response.append(line);
            }
            System.out.println(response);

        }
        catch (Exception e)
        {
            System.out.println("Error while sending SMS:");
            e.printStackTrace();
        }
    }
	
	public static void main(String[] args)
	{

	}

}
