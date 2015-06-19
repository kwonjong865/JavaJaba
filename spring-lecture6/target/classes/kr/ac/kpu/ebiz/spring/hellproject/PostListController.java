package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by hwan on 2015-05-20.
 */
@Controller
@RequestMapping("/postList")
public class PostListController {

    @Autowired
    PostRepository postRepository;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView world(HttpServletRequest req, HttpServletResponse resp) {
        HttpSession session = req.getSession();
        ModelAndView mav;
        if(session.getAttribute("id").equals("")||session.getAttribute("id").equals(null)){

            mav = new ModelAndView("/index");

        }else {
             mav = new ModelAndView("/postList");
            mav.addObject("postList", postRepository.selectAll());
        }
        return mav;
    }
}
