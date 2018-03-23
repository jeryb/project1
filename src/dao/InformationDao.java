package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.Information;
public class InformationDao {
    public Information  queryInformation(String area) throws Exception{
        Connection conn = null;
        Information information = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project1?useUnicode=true&characterEncoding=utf-8","root","admin");
            String sql = "SELECT * from information WHERE AREA ="+"area";
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql);
            if (rs.next()) {
                information = new Information();
                String code = rs.getString("CODE");
                String postcode = rs.getString("POSTCODE");
                information.setArea(area);
                information.setCode(code);
                information.setPostcode(postcode);
            }
            rs.close();
            stat.close();
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            try{
                if(conn!=null){
                    conn.close();
                    conn = null;
                }
            }catch (Exception ex){

            }
        }
        return information;
    }

}
