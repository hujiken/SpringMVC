package huy.pham.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import huy.pham.entity.User;

@Controller
@RequestMapping("/user")
public class UserController {
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getUser(User user) {
		User otherUser = new User();
		otherUser.setFirstName("Huy");
		otherUser.setLastName("Pham");
		otherUser.setFirstAttempt(false);
		return new ModelAndView("user", "user", otherUser);
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView addUser(@Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println(result.getFieldErrors());
			return new ModelAndView("user");
		}
		User newUser = new User();
		newUser.setFirstName(user.getFirstName());
		newUser.setLastName(user.getLastName());
		newUser.setGender(user.getGender());
		newUser.setBirthday(user.getBirthday());
		newUser.setCountry(user.getCountry());
		newUser.setEmail(user.getEmail());
		newUser.setFirstAttempt(user.isFirstAttempt());
		newUser.setSection(user.getSection());
		System.out.println(newUser.toString());
		return new ModelAndView("user");
	}
	
	@ModelAttribute("countries")
    public List<String> initializeCountries() {
 
        List<String> countries = new ArrayList<String>();
        countries.add("USA");
        countries.add("CANADA");
        countries.add("FRANCE");
        countries.add("GERMANY");
        countries.add("ITALY");
        countries.add("OTHER");
        return countries;
    }
}
