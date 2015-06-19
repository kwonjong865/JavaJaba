package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;


/**
 * Created by hwan on 2015-05-26.
 */


@Controller
@RequestMapping("/postSearchController")
public class PostSearchController {

    @Autowired
    PostRepository postRepository;

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView postList(@RequestParam String select, String keyword){
        System.out.println(select + keyword);
        Map post = new HashMap();
        post.put("select", select);
        post.put("keyword", keyword);

        ModelAndView mav = new ModelAndView("/postList");
        mav.addObject("postList", postRepository.selectSearch(post));
        return mav;
    }
}