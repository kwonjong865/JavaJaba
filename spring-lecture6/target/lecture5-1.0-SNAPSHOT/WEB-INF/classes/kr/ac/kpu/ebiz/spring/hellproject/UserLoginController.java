package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by WJ.Kim on 2015-06-18.
 */

@Controller
@RequestMapping("/userLogin")
public class UserLoginController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping(method = {RequestMethod.POST})
    public ModelAndView login(HttpServletRequest req, HttpServletResponse resp,@RequestParam String userId, String pwd) {
        ModelAndView mav;
        String id = userRepository.idCheck(userId);
        String pass = userRepository.pwdCheck(userId);
        String name = userRepository.name(userId);
        HttpSession session = req.getSession();
        if(userId.equals(id)) {
            if(pwd.equals(pass)){
                mav = new ModelAndView("/postList");
                session.setAttribute("id", id);
                session.setAttribute("name", name);
                mav.addObject("userId", id);
                mav.addObject("pwd", pass);
                mav.addObject("name", name);
                return mav;
            }else{
                mav = new ModelAndView("/loginFail");
                return mav;
            }
        }else{
            mav = new ModelAndView("/loginFail");
        }
        return mav;
    }
}
