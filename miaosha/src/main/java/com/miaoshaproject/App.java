package com.miaoshaproject;
import com.miaoshaproject.dao.UserDOMapper;
import com.miaoshaproject.dataobject.UserDO;
import com.miaoshaproject.service.UserService;
import com.miaoshaproject.service.model.UserModel;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Hello world!
 *
 */

@SpringBootApplication(scanBasePackages={"com.miaoshaproject"})
@RestController
@MapperScan("com.miaoshaproject.dao")
public class App 
{
    @Autowired
    private UserDOMapper userDOMapper;

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public UserModel home(){
        UserModel userModel=userService.getUserById(1);
        UserDO userDO=userDOMapper.selectByPrimaryKey(1);
        if (userDO == null) {
            return null;
        }else{
            return userModel;
        }
    }
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        SpringApplication.run(App.class,args);
    }
}
