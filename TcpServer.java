import java.net.*;
import java.io.*;

public class TcpServer
{
	public static void main(String arg[]) throws Exception
	{
		OutputStream os;
		System.out.println("SERVER");
		ServerSocket ss=new ServerSocket(9000);
		Socket s1=ss.accept();
	
		os=s1.getOutputStream();
		byte b[]=new byte[1000];
		System.out.println("Client Connected .");
		System.out.println("Enter ur message .");
		System.in.read(b,0,b.length);
		os.write(b);
	
		InputStream is=s1.getInputStream();

		BufferedReader br=new BufferedReader(new InputStreamReader(is));
		System.out.println(br.readLine());
	}	
}