package com.atguigu.campus.configure;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**Spring MVC配置类，用于配置静态资源
 * 决附件上传后无法立即访问的问题。
 * 通过配置静态资源处理器，
 * 可以将上传的文件映射到指定的文件系统路径，
 * 从而在浏览器或其他客户端中直接访问这些文件。
 */
@Configuration
public class SpringMvcConfigure implements WebMvcConfigurer {

    @Value("${upload.file.location}")
    private String fileLocation;

    /**
     * 添加静态资源访问
     * @param registry 静态资源注册中心
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        解决附件上传需要重新部署才能访问到文件的问题
        if (!registry.hasMappingForPattern("/upload/**")) {
            registry.addResourceHandler("/upload/**").addResourceLocations(
                    "file:"+ fileLocation);
        }
    }
}
