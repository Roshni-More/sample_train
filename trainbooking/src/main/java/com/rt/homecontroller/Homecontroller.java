package com.rt.homecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.Entityclass.Passenger;
import com.rt.loginservice.Passengerservice;
import com.rt.userentity.Customer;

@Controller
public class Homecontroller {
	@Autowired
	Passengerservice ps;

	@RequestMapping("/")
	public String indexpage() {
		return "login";
	}

	@RequestMapping("/trains")
	public String nextpage() {
		return "admin_dashboard";
	}

	@RequestMapping("/TrainListServlet")
	public String register(@ModelAttribute Passenger p, Model model) {
		boolean isAdded = ps.register(p);

		if (isAdded) {
			model.addAttribute("successmsg", "successfully");
		} else {
			model.addAttribute("errormsg", "unsuccessfully");
		}
		return "admin_dashboard";
	}

	@RequestMapping("/AllTrainSchedule")
	public String select(Model model) {
		List<Passenger> list = ps.select();
		model.addAttribute("emplist", list);
		return "DisplayAll";
	}
	@RequestMapping("/TrainListview")
	public String selectuser(Model model) {
		List<Passenger> list = ps.select();
		model.addAttribute("emplist", list);
		return "Trainview";
	}
	@RequestMapping("/booking")
	public String bookingpage() {
		return "Booking";
	}
	
	@RequestMapping(value = "/userbooking", method = RequestMethod.POST)
	public String userbooking(@RequestParam String name, @RequestParam String phonenumber, @RequestParam int totalmember, Model model) {
	 
	    boolean isAdded = ps.userbooking(new Customer(name, phonenumber, totalmember));

	    	model.addAttribute("bookingStatus", "success");
	    return "Bookview";  
	}
	@RequestMapping("/update")
	public String updatepage() {
		return "update";
	}

	@RequestMapping("/Updatetrain")
	public String updateform(@RequestParam int id,@RequestParam String name,@RequestParam String DepartureTime,@RequestParam String ArrivalTime,@RequestParam String SourceStation,@RequestParam String DestinationStation,@RequestParam int TotalSeats,@RequestParam int AvailableSeats, Model model) {	
		System.out.println("the name is :"+name);
		boolean isupdate=ps.updateform(id,name,DepartureTime,ArrivalTime,SourceStation,DestinationStation,TotalSeats,AvailableSeats);
		return "update";
	}
    
	@RequestMapping("/delete")
	public String deletepage(@RequestParam int trainid) {
		ps.deletepage(trainid);
		return "redirect:/AllTrainSchedule";	
	}

}
