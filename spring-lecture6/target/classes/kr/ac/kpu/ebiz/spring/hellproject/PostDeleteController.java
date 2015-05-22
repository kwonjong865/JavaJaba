package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by hwan on 2015-05-22.
 */


@Controller
@RequestMapping("/postDelete")
public class PostDeleteController {

    @Autowired
    PostRepository postRepository;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam String postId) {
        postRepository.delete(Integer.parseInt(postId));

        ModelAndView mav = new ModelAndView("/postList");
        mav.addObject("postList", postRepository.selectAll());
        return mav;
    }
}
