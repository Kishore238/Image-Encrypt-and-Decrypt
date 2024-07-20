
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="Action.Dbconnection"%>
<%@page import="Action.decrypt"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%
    
    
    
    String file = request.getParameter("img1");
    System.out.println("imagename"+file);
    String file1 = request.getParameter("img2");
    String original = request.getParameter("original");
    System.out.println("original"+original);
   String abc="";
   String user = session.getAttribute("username").toString();
   
   Connection connection = Dbconnection.getConnection();
                        
			String sql="SELECT * FROM decrypted where user='"+user+"' and original='"+original+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
   
   while(rs.next())
			{
                            abc = rs.getString(5);
                        }
   
    System.out.println("file"+file);
    String encryptedFile = "moulaliencryp1.jpg";
    String encryptedFile1 = "moulaliencryp2.jpg";
    String encryptedFile2 = abc;
   
    String decryptedFile = "img0.jpg";
    String decryptedFile1 = "img1.jpg";
    String decryptedFile2 = "img2.jpg";
    String directoryPath = "C:\\Users\\chotu\\Documents\\NetBeansProjects\\Image encryption and Decryption\\web\\Gallery\\";
   
   
    String storePath = "C:\\Users\\chotu\\Desktop\\kase\\";
   
//    String skey = request.getParameter("pk1");
//    String skey1 = request.getParameter("pk2");
    String skey3 = request.getParameter("pk3");
//    decrypt encryptFile = new decrypt();
//
//    encryptFile.decrypt(directoryPath + encryptedFile,storePath + decryptedFile,skey);
//
//    decrypt encryptFile1 = new decrypt();
//
//    encryptFile1.decrypt(directoryPath + encryptedFile1,storePath + decryptedFile1,skey1);
    
     decrypt encryptFile2 = new decrypt();

    encryptFile2.decrypt(directoryPath + encryptedFile2,storePath + decryptedFile2,skey3);
    System.out.println("Decryption completed...");


   response.sendRedirect("decrypt.jsp?msg= success"); 


%>