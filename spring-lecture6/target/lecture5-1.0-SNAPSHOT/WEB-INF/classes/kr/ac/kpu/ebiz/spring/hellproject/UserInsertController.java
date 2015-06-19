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
@RequestMapping("/userInsert")
public class UserInsertController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView inserUser(@RequestParam String userId, String pwd, String userName) {

        Map user = new HashMap();
        user.put("userId", userId);
        user.put("pwd", pwd);
        user.put("userName", userName);

        userRepository.insert(user);

        ModelAndView mav = new ModelAndView("/index");
        return mav;
    }
}