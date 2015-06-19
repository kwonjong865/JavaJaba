package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by hwan on 2015-05-22.
 */

@Controller
public class PostUpdateController {
    @Autowired
    PostRepository postRepository;

    @RequestMapping(value = "/postUpdate", method = RequestMethod.GET)
    public ModelAndView fileForm() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("fileForm");
        return mv;


    }

    @RequestMapping(value = "/postUpdate", method = RequestMethod.POST)
    public String fileSubmit(FileDTO dto) {
        MultipartFile uploadfile = dto.getImageFile();
        if (uploadfile != null) {
            String fileName = uploadfile.getOriginalFilename();
            dto.setFileName(fileName);
            String directory = "D:\\Develop\\test\\spring-lecture6\\JavaJaba\\spring-lecture6\\target\\lecture5-1.0-SNAPSHOT\\resource\\uploadFile\\";
            try {
                File file = new File(directory, fileName);
                //실제적으로 target\\resource\\uploadFile 여기에 저장되는구나...
                //"D:\\Develop\\test\\spring-lecture6\\JavaJaba\\spring-lecture6\\target\\lecture5-1.0-SNAPSHOT\\resource\\uploadFile\\"
                System.out.println("******************************경로확인" + file.getAbsolutePath());
                uploadfile.transferTo(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


        Map post = new HashMap();
        post.put("category", dto.getCategory());
        post.put("password",dto.getPassword());
        post.put("phone",dto.getPhone());
        post.put("title",dto.getTitle());
        post.put("itemname",dto.getItemName());
        post.put("price",dto.getPrice());
        post.put("content",dto.getContent());
        post.put("makedate",new Date());
        post.put("imagefile",dto.getFileName());
        post.put("postid", dto.getPostId());
        postRepository.update(post);

        ModelAndView mav = new ModelAndView("/postList");
        mav.addObject("postList", postRepository.selectAll());
        return "redirect:postList";
    }
}