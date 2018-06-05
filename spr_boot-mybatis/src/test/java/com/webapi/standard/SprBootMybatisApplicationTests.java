package com.webapi.standard;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;
import java.util.Random;

import javax.servlet.ServletContext;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest
public class SprBootMybatisApplicationTests {


	
	@Autowired
	private ServletContext servletContext;
	
	@Test
	public void contextLoads() {
	}
	 
    @Test
    public void testSqlSession() throws Exception{
    	
		

    }


}
