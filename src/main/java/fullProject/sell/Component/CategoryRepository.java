package fullProject.sell.Component;

import fullProject.sell.Entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Nizis on 9/23/2020.
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category,Integer> {
}
