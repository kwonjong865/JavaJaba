package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/InsertController")
public class InsertController {

    @Autowired
    ActorRepository actorRepository;

    @RequestMapping(method = RequestMethod.GET)
    public void insert(@RequestParam String fn, String ln) {
        Map actor = new HashMap();
        actor.put("first_name", fn);
        actor.put("last_name", ln);
        actorRepository.insert(actor);
    }
}