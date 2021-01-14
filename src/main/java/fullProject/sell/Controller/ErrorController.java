package fullProject.sell.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by PhongVu on 8/12/2020.
 */
@Controller
public class ErrorController implements org.springframework.boot.web.servlet.error.ErrorController {
    @GetMapping(value={"/error"})
    public String error(HttpServletRequest request){
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        if(status != null){
            Integer statusCode = Integer.valueOf(status.toString());
            if(statusCode == HttpStatus.NOT_FOUND.value()){
                return "/exception/404error";
            }else if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()){
                return "/exception/500error";
            }
        }
        return "redirect:/";
    }
    @Override
    public String getErrorPath() {
        return "/exception/404error";
    }
}
