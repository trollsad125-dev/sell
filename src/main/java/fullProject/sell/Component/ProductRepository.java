package fullProject.sell.Component;

import fullProject.sell.Entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;



/**
 * Created by Nizis on 9/5/2020.
 */
@Repository
public interface ProductRepository extends PagingAndSortingRepository<Product,Integer> {
    @Query(value = "select count(*) from product", nativeQuery = true)
    Integer countProduct();
    @Query(value = "select count(*) from product where category_id=1", nativeQuery = true)
    Integer countProductCateId1();
    @Query(value = "select * from product where category_id=1", nativeQuery = true)
    Page<Product> listProductbyCategoryId1byPage(Pageable pageable);
    @Query(value = "select * from product where category_id=2", nativeQuery = true)
    Page<Product> listProductbyCategoryId2byPage(Pageable pageable);
}
