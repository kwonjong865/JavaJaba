package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/index")
public class IndexController {

	@Autowired
	ActorRepository actorRepository;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView world() {
		ModelAndView mav = new ModelAndView("/index");
		return mav;
	}

}
