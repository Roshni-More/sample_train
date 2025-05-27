package com.rt.logindao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.rt.Entityclass.Passenger;
import com.rt.userentity.Customer;

@Repository
public class Passengerdao {

   

    @Autowired
    private JdbcTemplate template;

    // Register method to insert new passengers
    public boolean register(Passenger p) {
        try {
            // Prepare parameters for SQL query
            Object[] args = {
                p.getId(),
                p.getName(),
                p.getDepartureTime(),
                p.getArrivalTime(),
                p.getSourceStation(),
                p.getDestinationStation(),
                p.getTotalSeats(),
                p.getAvailableSeats()
            };

            // Execute SQL insert query
            int result = template.update(
                "INSERT INTO traintable (Id, Name, DepartureTime, ArrivalTime, SourceStation, DestinationStation, TotalSeats, AvailableSeats) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)", args);

            return result == 1;
        } catch (Exception e) {
           e.printStackTrace();
        }
        return false;
    }

    // Select method to fetch all passengers
    public List<Passenger> select() {
        try {
            String sql = "SELECT * FROM traintable";

            // Execute SQL query and map result to Passenger objects
            return template.query(sql, new RowMapper<Passenger>() {
                @Override
                public Passenger mapRow(ResultSet rs, int rowNum) throws SQLException {
                    return new Passenger(
                        rs.getInt("Id"),
                        rs.getString("Name"),
                        rs.getString("DepartureTime"),
                        rs.getString("ArrivalTime"),
                        rs.getString("SourceStation"),
                        rs.getString("DestinationStation"),
                        rs.getInt("TotalSeats"),
                        rs.getInt("AvailableSeats")
                    );
                }
            });
        } catch (Exception e) {
             e.printStackTrace();
        }
        return Collections.emptyList(); // Return empty list if no passengers are found
    }

	public boolean userbooking(Customer c) {
		try {
			Object[] args= {c.getName(),c.getPhonenumber(),c.getTotalmember()};
			int result=template.update("INSERT INTO clienttable ( name,phonenumber,totalmember)"+"VALUES (?, ?, ?)", args);
			 if(result==1) {
				 return true;
			 }else {
				 return false;
			 }
		} catch (Exception e) {
			 e.printStackTrace();
		}
		return false;
	}

	public boolean updateform(int id, String name, String departureTime, String arrivalTime, String sourceStation,
			String destinationStation, int totalSeats, int availableSeats) {
		try {
			Object[] args= {name,departureTime,arrivalTime,sourceStation,destinationStation,totalSeats,availableSeats,id};
			int result=template.update("UPDATE traintable SET name = ?,departureTime = ?,arrivalTime=?,sourceStation=?,destinationStation=?,totalSeats=?,availableSeats=? WHERE id = ?", args);
		} catch (Exception e) {
			e.printStackTrace();  
		}
		return false;
	}

	public Object deletepage(int trainid) {
	    try {
	        String sql = "DELETE FROM  traintable  WHERE id = ?";
	        Object[] args = { trainid };
	        int result = template.update(sql, args); // Executes the DELETE query

	        if (result > 0) {
	            System.out.println("Train with ID " + trainid + " has been deleted.");
	        }
	        return null;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}

}
