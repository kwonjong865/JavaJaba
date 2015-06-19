package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by hwan on 2015-05-20.
 */
@Controller
@RequestMapping("/postInsert")
public class PostInsertController {

    @Autowired
    PostRepository postRepository;

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView insert(HttpServletRequest req, HttpServletResponse resp,@RequestParam String category, String maker, String password, String phone,
                               String title,String itemName, String price, String content, String imageFile) {
        Map post = new HashMap();
        HttpSession session = req.getSession();
        post.put("category", category);
        post.put("maker",session.getAttribute("id")); // 이게 사용자
        post.put("password",password);
        post.put("phone",phone);
        post.put("title",title);
        post.put("itemname",itemName);
        post.put("price",price);
        post.put("content",content);
        post.put("makedate",new Date());
        post.put("imagefile",imageFile);
        postRepository.insert(post);

        ModelAndView mav = new ModelAndView("/postList");
        mav.addObject("postList", postRepository.selectAll());
        return mav;
    }
}