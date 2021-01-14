package fullProject.sell;


import fullProject.sell.Component.UserRepository;
import fullProject.sell.Entity.Users;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class Junittest {
    @Autowired
    private UserRepository userRepository;

    @Test
    public void name() {
        Users users = userRepository.save(new Users("nhat","123","nhat","nguyen",new Date()));
        Assert.assertEquals("123",users.getUsername());

    }
}
