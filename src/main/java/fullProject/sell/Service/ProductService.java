package fullProject.sell.Service;

import fullProject.sell.Component.ProductRepository;
import fullProject.sell.Entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Nizis on 9/5/2020.
 */
@Service
public class ProductService {
    @Autowired
    private ProductRepository repo;

    public List<Product> listAll() {
        return (List<Product>) repo.findAll();
    }

    public Integer countProduct() {
        return repo.countProduct();
    }

    public Integer countProductCateId1() {
        return repo.countProductCateId1();
    }

    /*    public Page<Product> listAll(int totalproductperpage) {
            Pageable pageable = PageRequest.of(0, totalproductperpage);
            return repo.findAll(pageable);
        }*/
    public List<Integer> calculateTotalPage(int totalProduct, int productPerPage) {
        List<Integer> listPage = new ArrayList<>();
        int totalPage = (totalProduct % productPerPage == 0) ? totalProduct / productPerPage : (totalProduct / productPerPage) + 1;
        for (int i = 0; i < totalPage; i++) {
            listPage.add(i);
        }
        return listPage;
    }
    public Page<Product> ListCate1ByPage(Pageable page){
        return repo.listProductbyCategoryId1byPage(page);
    }
    public Page<Product> ListCate2ByPage(Pageable page){
        return repo.listProductbyCategoryId2byPage(page);
    }
}
