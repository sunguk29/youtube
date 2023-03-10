package com.config;

import com.filter.LogFilter;
import com.interceptor.BaseInterceptor;
import com.interceptor.LogInterceptor;
import com.interceptor.RecoverInterceptor;
import com.util.Constant;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.concurrent.ConcurrentMapCache;
import org.springframework.cache.support.SimpleCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.ResourceHttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.http.converter.xml.SourceHttpMessageConverter;
import org.springframework.scheduling.annotation.SchedulingConfigurer;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.scheduling.config.ScheduledTaskRegistrar;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.servlet.DispatcherType;
import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletRegistration;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;

@Slf4j
@Configuration
@EnableWebMvc
@EnableAspectJAutoProxy(proxyTargetClass = true) // for AOP
@EnableCaching
public class AppConfig implements WebApplicationInitializer, SchedulingConfigurer, WebMvcConfigurer {

    @Override
    public void onStartup(ServletContext container) {
        log.info("WebInitializer : starting");

        // init properties
        container.setInitParameter("contextInitializerClasses", "com.config.PropertyConfig");

        // init dispatcher servlet
        ServletRegistration.Dynamic dispatcher = container.addServlet("dispatcher", new DispatcherServlet());
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");
        dispatcher.setInitParameter("throwExceptionIfNoHandlerFound", "true");

        // root config
        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
        container.addListener(new ContextLoaderListener(context));

        // ????????? ?????? ??????
        FilterRegistration.Dynamic charaterEncodingFilter = container.addFilter("charaterEncodingFilter", new CharacterEncodingFilter());
        charaterEncodingFilter.addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), true, "/*");
        charaterEncodingFilter.setInitParameter("encoding", "UTF-8");
        charaterEncodingFilter.setInitParameter("forceEncoding", "true");

        FilterRegistration.Dynamic logFilter = container.addFilter("logFilter", new LogFilter()); // session filter ??????
        logFilter.addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), true, "/*");

        /**
         * Clear Setting
         * @Date 2022-07-20
         * @Author kimwoosik
         * @Description
         * Session ?????? ?????? ??????
         * ????????? ?????? ??????
         * */
        container.addListener(new SessionConfig(Constant.SESSION_INTERVAL));

        /**
         * Clear Setting
         * @Date 2022-07-20
         * @Author kimwoosik
         * @Description
         * ??????????????? ????????? Deploy Branch?????? ?????????
         * Http??? url?????? -> Https??? url?????? ??????????????? ??????
         * @Prerequisites
         * Tomcat??? SSL ?????? ??? SSL ?????? ?????? ?????? AWS??? LoadBalancer ?????????
         * */
        /*HttpConstraintElement httpConstraintElement = new HttpConstraintElement(ServletSecurity.TransportGuarantee.CONFIDENTIAL);
        ServletSecurityElement servletSecurityElement = new ServletSecurityElement(httpConstraintElement);
        dispatcher.setServletSecurity(servletSecurityElement);*/
        log.info("WebInitializer : finished");
    }

    @Override
    public void configureTasks(ScheduledTaskRegistrar scheduledTaskRegistrar) {
        log.info("Schedule initializing");
        ThreadPoolTaskScheduler threadPoolTaskScheduler = new ThreadPoolTaskScheduler();
        threadPoolTaskScheduler.setPoolSize(Constant.DatabaseSetting.POOL_SIZE);
        threadPoolTaskScheduler.setThreadNamePrefix("scheduled-task-pool-");
        threadPoolTaskScheduler.initialize();
        scheduledTaskRegistrar.setTaskScheduler(threadPoolTaskScheduler);
        log.info("Schedule initialized");
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        log.info("configureMessageConverters");
        StringHttpMessageConverter stringConverter = new StringHttpMessageConverter();
        stringConverter.setWriteAcceptCharset(true);
        MediaType mediaType = new MediaType("text", "html", StandardCharsets.UTF_8);
        MediaType mediaType1 = new MediaType("application", "x-www-form-urlencoded", StandardCharsets.UTF_8);
        List<MediaType> types = new ArrayList<>();
        types.add(mediaType);
        types.add(mediaType1);
        stringConverter.setSupportedMediaTypes(types);
        converters.add(stringConverter);
        converters.add(new SourceHttpMessageConverter<>());
        converters.add(new ResourceHttpMessageConverter());
        MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();
        converter.setPrettyPrint(true);
        converters.add(converter);
    }

    @Bean // view resolver
    public ViewResolver configureViewResolvers() {
        log.info("configureViewResolvers : initializing");
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/view/");
        viewResolver.setSuffix(".jsp");
        log.info("configureViewResolvers : initialized");
        return viewResolver;
    }

    @Bean // custom view: view??? ?????? ?????? ????????? ????????? class??? ????????? ??????
    public ViewResolver beanNameViewResolver() {
        log.info("beanNameViewResolver : initializing");
        BeanNameViewResolver resolver = new BeanNameViewResolver();
        resolver.setOrder(0);
        log.info("beanNameViewResolver : initialized");
        return resolver;
    }

    @Bean // ?????? ????????? ??????
    public CommonsMultipartResolver multipartResolver() {
        log.info("multipartResolver : initializing");
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setDefaultEncoding("utf-8");
        multipartResolver.setMaxUploadSize(40_212_354_720L); // ?????? ?????? 45GB
        multipartResolver.setMaxUploadSizePerFile(13_737_418_240L); // ??? ?????? 15GB
        log.info("multipartResolver : initialized");
        return multipartResolver;
    }

    @Override // ?????? ????????? ??????
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        log.info("addResourceHandlers : initializing");
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
        registry.addResourceHandler("/files/**").addResourceLocations("/files/");
        registry.addResourceHandler("/favicon.ico").addResourceLocations("/resources/assets/meta/favicon.ico");
        log.info("addResourceHandlers : initialized");
    }

    /**
     * PR
     *
     * @Date 2022-07-26, 2022-07-27
     * @Author kimwoosik
     * @Description LogInterceptor Add
     * Order Setting
     * -------------------------------
     * RecoverInterceptor Add
     */
    @Autowired
    private LogInterceptor logInterceptor;
    @Autowired
    private BaseInterceptor baseInterceptor;
    @Autowired
    private RecoverInterceptor recoverInterceptor;
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(logInterceptor).order(0)
                .addPathPatterns("/**")
                .excludePathPatterns("/resources/**")
                .excludePathPatterns("/files/**");
        registry.addInterceptor(recoverInterceptor).order(1)
                .addPathPatterns("/**")
                .excludePathPatterns("/resources/**")
                .excludePathPatterns("/files/**");
        registry.addInterceptor(baseInterceptor).order(2)
                .addPathPatterns("/**")
                .excludePathPatterns("/resources/**")
                .excludePathPatterns("/files/**");
    }

    @Bean
    public CacheManager cacheManager() {
        SimpleCacheManager cacheManager = new SimpleCacheManager();
        cacheManager.setCaches(Arrays.asList(new ConcurrentMapCache("IG")));
        return cacheManager;
    }
}
