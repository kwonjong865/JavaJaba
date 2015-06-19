package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by WJ.Kim on 2015-06-18.
 */

@Controller
@RequestMapping("/login")
public class LoginFormController {

    @RequestMapping(method = {RequestMethod.GET})
    public ModelAndView world() {
        ModelAndView mav = new ModelAndView("/loginForm");
        return mav;
    }

}
