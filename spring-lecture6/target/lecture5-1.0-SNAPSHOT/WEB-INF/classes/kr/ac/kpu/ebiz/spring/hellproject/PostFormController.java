package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by hwan on 2015-05-20.
 */

@Controller
@RequestMapping("/postForm")
public class PostFormController {

    @Autowired
    PostRepository postRepository;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView world() {
        ModelAndView mav = new ModelAndView("/postForm");
        return mav;
    }
}