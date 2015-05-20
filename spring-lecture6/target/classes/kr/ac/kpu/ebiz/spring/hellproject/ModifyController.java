package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/modifyController")
public class ModifyController {

	@Autowired
	ActorRepository actorRepository;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView modify(@RequestParam String id) {
		Map actor = actorRepository.select(Integer.parseInt(id));
		ModelAndView mav = new ModelAndView("/modify");
		mav.addObject("actor", actor);
		return mav;
	}

}
