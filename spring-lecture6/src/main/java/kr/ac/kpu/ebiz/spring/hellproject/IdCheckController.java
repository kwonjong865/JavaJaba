package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by WJ.Kim on 2015-06-18.
 */

@Controller
@RequestMapping("/checkId")
public class IdCheckController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView idCheck(String userId){
        String user =  userRepository.idCheck(userId);
        ModelAndView mav;

        if(userId.equals(user)){
            mav = new ModelAndView("/YesId");
        }else{
            mav = new ModelAndView("/NoId");
        }
        return mav;
    }
}
