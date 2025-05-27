package com.rt.Entityclass;

import java.sql.Time;

public class Passenger {
    private int id;
    private String name;
    private String DepartureTime;
    private String ArrivalTime;
    private String SourceStation;
    private String DestinationStation;
    private int TotalSeats;
    private int AvailableSeats;
    public Passenger() {
    	
    }
	public Passenger(int id, String name, String departureTime, String arrivalTime, String sourceStation,
			String destinationStation, int totalSeats, int availableSeats) {
		super();
		this.id = id;
		this.name = name;
		DepartureTime = departureTime;
		ArrivalTime = arrivalTime;
		SourceStation = sourceStation;
		DestinationStation = destinationStation;
		TotalSeats = totalSeats;
		AvailableSeats = availableSeats;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartureTime() {
		return DepartureTime;
	}
	public void setDepartureTime(String departureTime) {
		DepartureTime = departureTime;
	}
	public String getArrivalTime() {
		return ArrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		ArrivalTime = arrivalTime;
	}
	public String getSourceStation() {
		return SourceStation;
	}
	public void setSourceStation(String sourceStation) {
		SourceStation = sourceStation;
	}
	public String getDestinationStation() {
		return DestinationStation;
	}
	public void setDestinationStation(String destinationStation) {
		DestinationStation = destinationStation;
	}
	public int getTotalSeats() {
		return TotalSeats;
	}
	public void setTotalSeats(int totalSeats) {
		TotalSeats = totalSeats;
	}
	public int getAvailableSeats() {
		return AvailableSeats;
	}
	public void setAvailableSeats(int availableSeats) {
		AvailableSeats = availableSeats;
	}

    
}
