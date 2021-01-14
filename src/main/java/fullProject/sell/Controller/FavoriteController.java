package fullProject.sell.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

/**
 * Created by Nizis on 9/11/2020.
 */
@Controller
public class FavoriteController {

    @GetMapping(value = {"/favorite"})
    public String favorite(ModelMap modelMap, HttpSession session){
        if(session.getAttribute("user") != null)
            modelMap.addAttribute("chuadangnhap", "dang nhap di thang mat lon");
        return "index";
    }

}
