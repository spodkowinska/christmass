package pl.coderslab.christmass;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class ChristmassApplication implements WebMvcConfigurer {

    public static void main(String[] args) {
        SpringApplication.run(ChristmassApplication.class, args);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/webapp/**")
                .addResourceLocations("/webapp/");
    }
}

