package kr.ac.kpu.ebiz.spring.hellproject;

import com.sun.xml.internal.ws.encoding.MimeMultipartParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by hwan on 2015-05-20.
 */
@Controller
@RequestMapping("/postInsertInitVer")
public class PostInsertControllerInitVer {

    @Autowired
    PostRepository postRepository;


    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView insert(@RequestParam String category, String maker, String password, String phone,
                               String title,String itemName, String price, String content, String imageFile) {
        Map post = new HashMap();
        post.put("category", category);
        post.put("maker",maker);
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