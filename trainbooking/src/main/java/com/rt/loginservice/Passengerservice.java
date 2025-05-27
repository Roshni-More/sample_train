package com.rt.loginservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.Entityclass.Passenger;
import com.rt.logindao.Passengerdao;
import com.rt.userentity.Customer;

@Service
public class Passengerservice {
	@Autowired
	Passengerdao pd;

	public boolean register(Passenger p) {
		return pd.register(p);
		
	}

	public List<Passenger> select() {
		return pd.select();
	}

	public boolean userbooking(Customer c) {
		
		return pd.userbooking(c);
	}

	public boolean updateform(int id, String name, String departureTime, String arrivalTime, String sourceStation,
			String destinationStation, int totalSeats, int availableSeats) {
		return pd.updateform(id,name,departureTime,arrivalTime,sourceStation,destinationStation,totalSeats,availableSeats);
	}

	

	public Object deletepage(int trainid) {
		return pd.deletepage(trainid);
		
	}
	
}
