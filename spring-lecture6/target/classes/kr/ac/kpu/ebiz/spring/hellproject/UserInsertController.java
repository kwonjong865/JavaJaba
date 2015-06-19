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
    public ModelAndView inserUser(@RequestParam String userId, String pwd, String userName,  String userFirstNum, String userSecondNum, String email1, String email2,
                               String mainAddress, String subAddress, String mobile1,String mobile2,String mobile3) {
        String userNum = userFirstNum + "-" + userSecondNum;
        String email = email1 + "@" + email2;
        String address = mainAddress + " " + subAddress;
        String mobile = mobile1+mobile2+mobile3;

        Map user = new HashMap();
        user.put("userId", userId);
        user.put("pwd", pwd);
        user.put("userName", userName);
        user.put("userNum", userNum);
        user.put("email", email);
        user.put("address", address);
        user.put("mobile", mobile);

        userRepository.insert(user);

        ModelAndView mav = new ModelAndView("/index");
        return mav;
    }
}