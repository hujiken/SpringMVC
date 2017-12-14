package huy.pham.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import huy.pham.entity.HelloWorld;

@RestController
@RequestMapping("/")
public class HelloWorldController {
	@RequestMapping()
	public ModelAndView sayHello() {
		ModelAndView model = new ModelAndView("welcome");
		HelloWorld hello = new HelloWorld("Huy", "xin chao");
		model.addObject("data", hello);
		return model;
	}
}
