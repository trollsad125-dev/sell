package fullProject.sell.Controller;

import fullProject.sell.Component.UserRepository;
import fullProject.sell.Entity.Users;
import fullProject.sell.Service.UserServices;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Nizis on 9/11/2020.
 */
@Controller
public class UsersController {
    Logger logger = LoggerFactory.getLogger(UsersController.class);
    private final String redirect = "redirect:/";
    @Autowired
    private UserServices userServices;
    @Autowired
    private UserRepository repo;
    @PostMapping(value = {"/login"})
    public String login(@RequestParam Map<String, String> m,ModelMap modelMap, HttpSession session,RedirectAttributes redirectAttributes){
        String username = m.get("username");
        String password = m.get("password");
        Users users = userServices.login(username,password);
        if(users!=null){
            session.setAttribute("user", users);
            modelMap.addAttribute("users", new Users());
            return "index";
        }else{
            redirectAttributes.addFlashAttribute("mess","Sai tk hoặc mật khẩu");
            return redirect;
        }

    }
    @GetMapping(value = {"/logout"})
    public String logout(HttpSession session){
        session.removeAttribute("user");
        return redirect;
    }
    @GetMapping(value = {"/manage"})
    public String viewManage(HttpSession session, RedirectAttributes redirectAttributes,ModelMap modelMap){
        Users users = (Users) session.getAttribute("user");
        modelMap.addAttribute("users", new Users());
        if(users !=null){
            session.setAttribute("user", users);
            List<Users> listAll = userServices.listAll();
            modelMap.addAttribute("listUser",listAll);

            return "manage";
        }else{
            redirectAttributes.addFlashAttribute("mess1","Đăng nhập để thực hiện truy xuất");
            return redirect;
        }
    }
    @PostMapping(value = {"/insert"})
    @Transactional
    public String Insert( HttpServletRequest request, ModelMap modelMap, RedirectAttributes redirectAttributes, HttpSession session){

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        Users users = new Users(username,password,firstname,lastname,new Date());
        Users findUserDB = repo.findUsersByUsername(username);
        if(findUserDB!=null){
            redirectAttributes.addFlashAttribute("alert","Trung ten dang nhap");
            return "redirect:/manage";
        }else{
            userServices.save(new Users(users.getUsername(),users.getPassword(),users.getFirstname(),users.getLastname(),new Date()));
            redirectAttributes.addFlashAttribute("alert","Insert thanh cong");
            return "redirect:/manage";
        }

    }
    @GetMapping("/delete/{id}")
    @Transactional
    public String delete(@PathVariable("id")int id,HttpServletRequest request,RedirectAttributes redirectAttributes){
        String referer = request.getHeader("Referer");
        userServices.delete(id);
        redirectAttributes.addFlashAttribute("alert","Delete thanh cong");
        logger.info("Thong bao: ");
        return redirect+"manage";
    }
}
