package servlets;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

public class database {

    public void insertData(int regno, String name, String dep, String sec, String dt, String mobile) throws Exception {
    	Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/student";
        String userName = "root";
        String passWord = "KESAVAN?123";
        Connection con = DriverManager.getConnection(url, userName, passWord);

        String query = "INSERT INTO student (Regno, Name, dep, sec, district, mobileno) VALUES (?,?,?,?,?,?);";
        try (PreparedStatement pst = con.prepareStatement(query)) {
            pst.setInt(1, regno);
            pst.setString(2, name);
            pst.setString(3, dep);
            pst.setString(4, sec);
            pst.setString(5, dt);
            pst.setString(6, mobile);
            pst.executeUpdate();
            System.out.println("updated");
        }

        con.close();
    }
    public static ArrayList<getters> selectdata()throws Exception
    {
    	Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/student";
        String userName = "root";
        String passWord = "KESAVAN?123";
        Connection con = DriverManager.getConnection(url, userName, passWord);
        String query ="select * from student";
        ArrayList<getters> arr=new ArrayList<>();
        try(Statement st=con.createStatement()){
        	ResultSet rs=st.executeQuery(query);
        	while(rs.next())
        	{
        		 int regno=rs.getInt("Regno");
        	     String name=rs.getString("Name");
        	     String dep=rs.getString("dep");
        	     String sec=rs.getString("sec");
        	     String district=rs.getString("district");
        	     String mobile=rs.getString("mobileno");
        	     arr.add(new getters(regno,name,dep,sec,district,mobile));
        	}
        	return arr;
        	
        }
        
    }
    
    public void updateData(int regno, String name, String dep, String sec, String dt, String mobile) throws Exception {
    	Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/student";
        String userName = "root";
        String passWord = "KESAVAN?123";
        Connection con = DriverManager.getConnection(url, userName, passWord);

        String query = "UPDATE student SET Name=?, dep=?, sec=?, district=?, mobileno=? WHERE Regno=?";
        try (PreparedStatement pst = con.prepareStatement(query)) {
            pst.setString(1, name);
            pst.setString(2, dep);
            pst.setString(3, sec);
            pst.setString(4, dt);
            pst.setString(5, mobile);
            pst.setInt(6, regno);

            pst.executeUpdate();
            System.out.println("Updated");
        }

        con.close();
    }
    
    public int delete(int regno) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/student";
        String userName = "root";
        String passWord = "KESAVAN?123";
        Connection con = DriverManager.getConnection(url, userName, passWord);

        String query = "DELETE FROM student WHERE Regno=?";
        
        try (PreparedStatement pst = con.prepareStatement(query)) {
            pst.setInt(1, regno);
            int rowsAffected = pst.executeUpdate();
            System.out.println(rowsAffected);
            return rowsAffected;
        } catch (SQLException e) {
            e.printStackTrace();
            throw e; // Propagate the exception or handle it appropriately
        } finally {
            // Close the connection in the finally block to ensure it's always closed
            if (con != null) {
                con.close();
            }
        }
    }

}
