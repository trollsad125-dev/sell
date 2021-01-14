package fullProject.sell.Service;

import fullProject.sell.Component.CategoryRepository;
import fullProject.sell.Entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Nizis on 9/23/2020.
 */
@Service
public class CategoryService {
    @Autowired
    private CategoryRepository repo;
    public List<Category> listAll(){
        return repo.findAll();
    }
}
