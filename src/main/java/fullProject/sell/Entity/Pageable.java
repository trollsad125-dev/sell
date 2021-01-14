package fullProject.sell.Entity;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import java.util.List;

/**
 * Created by Nizis on 9/26/2020.
 */
public class Pageable {

    private List<Integer> listPage;
    private Page<Product> listCate1ByPage;

    public Pageable(){}

    public List<Integer> getListPage() {
        return listPage;
    }

    public void setListPage(List<Integer> listPage) {
        this.listPage = listPage;
    }

    public Page<Product> getListCate1ByPage() {
        return listCate1ByPage;
    }

    public void setListCate1ByPage(Page<Product> listCate1ByPage) {
        this.listCate1ByPage = listCate1ByPage;
    }
}
