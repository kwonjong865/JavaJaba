package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by hwan on 2015-05-22.
 */
@Controller
@RequestMapping("/postModify")
public class PostModifyController {

    @Autowired
    PostRepository postRepository;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView modify(@RequestParam String postId) {
        Map post = postRepository.select(Integer.parseInt(postId));
        ModelAndView mav = new ModelAndView("/postModify");
        mav.addObject("post", post);
        return mav;
    }

}