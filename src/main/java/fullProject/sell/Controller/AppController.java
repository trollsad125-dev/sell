package fullProject.sell.Controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import fullProject.sell.Entity.Pageable;
import fullProject.sell.Entity.Product;
import fullProject.sell.Entity.Users;
import fullProject.sell.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static fullProject.sell.Service.ConstVariables.PRODUCTPERPAGE;
import static fullProject.sell.Service.ConstVariables.PRODUCTPERPAGECATEGORY;

/**
 * Created by Nizis on 9/4/2020.
 */
@Controller
public class AppController {
    @Autowired
    private ProductService productService;

    private final String redirect = "redirect:/";
    private static final String ListProduct = "listProduct";


    @GetMapping("/")
    public String viewHome() {
        return "redirect:/trang-chu";
    }

    @GetMapping("/contact")
    public String viewContact(ModelMap modelMap) {
        modelMap.addAttribute("users", new Users());
        return "contact";
    }

    @GetMapping("/about")
    public String viewAbout(ModelMap modelMap) {
        modelMap.addAttribute("users", new Users());
        return "about";
    }

    @GetMapping("/cart")
    public String viewCart(ModelMap modelMap) {
        modelMap.addAttribute("users", new Users());
        return "cart";
    }

    @GetMapping("/dung-cu")
    public String viewDungCu() {
        return "/shop/dungcu";
    }


    @GetMapping("/quan-ao/{page}")
    public String viewQuanAo(@PathVariable(value = "page") Integer page, ModelMap model) {
        Page<Product> listCate1ByPage = productService.ListCate1ByPage(PageRequest.of(page - 1, PRODUCTPERPAGE));
        List<Integer> listPage = productService.calculateTotalPage(productService.countProductCateId1(), PRODUCTPERPAGE);
        model.addAttribute("pageSize", listPage);
        model.addAttribute("list", listCate1ByPage.getContent());
        model.addAttribute("currentPage", page);
        if (page > listPage.size()) {
            return "/exception/404error";
        }
        return "/shop/quanao";
    }

    @GetMapping("/giay")
    public String viewGiay() {
        return "/shop/giay";
    }


    @GetMapping("/checkout")
    public String viewCheckout() {
        return "checkout";
    }

    @GetMapping(value = "/trang-chu")
    public String indexPage(ModelMap modelMap) {
        List<Product> list = productService.listAll();
        modelMap.addAttribute("users", new Users());
        modelMap.addAttribute(ListProduct, list);
        return "index";
    }

    @PostMapping("/quan-ao2")
    @ResponseBody
    public Pageable page(@RequestParam(value = "data") String pageString){
        int page = Integer.parseInt(pageString);
        Pageable pageable = new Pageable();
        List<Integer> listPage = productService.calculateTotalPage(productService.countProductCateId1(), PRODUCTPERPAGE);
        Page<Product> listCate1ByPage = productService.ListCate1ByPage(PageRequest.of(page - 1, PRODUCTPERPAGE));
        pageable.setListPage(listPage);
        pageable.setListCate1ByPage(listCate1ByPage);
        return pageable;
    }

}
