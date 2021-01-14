package fullProject.sell.Component;

import java.util.Date;
import fullProject.sell.Entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * Created by Nizis on 10/14/2020.
 */
@Repository
public interface UserRepository extends JpaRepository<Users,Integer> {
    @Query(value = "Select * from Users where username like ?1 and password like ?2 limit 1",nativeQuery = true)
    Users login(String username, String password);
    Users findUsersByUsername(String username);
    @Modifying
    @Query(value = "Update Users set password = ?2,firstname = ?3,lastname =?4,date = ?5 where id=?1",nativeQuery = true)
    void update(int id,String password,String firstname,String lastname,Date date);
}
