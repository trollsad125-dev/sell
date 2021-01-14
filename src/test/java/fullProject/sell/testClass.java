package fullProject.sell;

import fullProject.sell.Component.UserRepository;
import fullProject.sell.Entity.Users;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class testClass extends AbstractTestNGSpringContextTests {

    @Autowired
    private UserRepository userRepository;

    @Test
    public void name() {
        System.out.println("test");
    }

    @Test
    public void test() throws Exception{
        List<Users> list = userRepository.findAll();
        System.out.println(list);
    }
}
