package cl.tbd.trabajo2grupo2.repositories;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.sql2o.Sql2o;

@Configuration
public class DatabaseContext {
    @Value("${spring.datasource.url}")
    private String dbUrl;

    @Value("${spring.datasource.username}")
    private String dbUser;

    @Value("${spring.datasource.password}")
    private String dbPass;

    @Bean
    public Sql2o sql2o()
    {
        /*
         * url: jdbc:postgresql://localhost:5432/lab2
         * user: postgres
         * pass: postgres
        */
        
        //return new Sql2o("jdbc:postgresql://localhost:5432/lab2", "postgres", "postgres");
        return new Sql2o(dbUrl,dbUser,dbPass);
    }
}
