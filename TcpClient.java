import java.net.*;
import java.io.*;

public class TcpClient
{
	public static void main(String arg[]) throws Exception
	{
		System.out.println("CLIENT");
		byte b[]=new byte[1000];
		Socket s1=new Socket("localhost",9000);
		System.out.println("Server Found");

		InputStream is=s1.getInputStream();

		BufferedReader br=new BufferedReader(new InputStreamReader(is));
		System.out.println(br.readLine());
		OutputStream os=s1.getOutputStream();
		System.in.read(b,0,1000);
		os.write(b);
	}	
} 