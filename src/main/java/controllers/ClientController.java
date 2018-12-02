package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ClientRepository;
import entities.Client;

@Controller
public class ClientController {
	
	@Autowired
	ClientRepository clientRepository;
	
	@RequestMapping(value="/signup" , method = RequestMethod.GET)
	public String viewSignup()
	{
		return "signup";
	}

	@RequestMapping(value="/signup" , method = RequestMethod.POST)
	public String createClient(ModelMap model,Client client)
	{
		client.setRole("ROLE_CLIENT");
		clientRepository.save(client);
		
		return "redirect:/login";
	}
	
	
	
}
