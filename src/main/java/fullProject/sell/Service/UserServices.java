package fullProject.sell.Service;

import fullProject.sell.Component.UserRepository;
import fullProject.sell.Entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Nizis on 10/14/2020.
 */
@Service
public class UserServices {
    @Autowired
    private UserRepository repo;

    public List<Users> listAll(){
        return repo.findAll();
    }
    public void save(Users users){
        repo.save(users);
    }
    public Users get(int id){
        return repo.findById(id).get();
    }
    public void update(int id, String password, String firstname, String lastname, Date date){
        repo.update(id,password,firstname,lastname,date);
    }
    public void delete(int id){
        repo.deleteById(id);
    }

    public Users login(String username, String password){
        return repo.login(username,password);
    }
}
