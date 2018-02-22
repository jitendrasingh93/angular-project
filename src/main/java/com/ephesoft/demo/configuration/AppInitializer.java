package com.ephesoft.demo.configuration;

/**
 * Created by JitendraSingh on 30/01/18.
 */

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;

    public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer implements WebApplicationInitializer {

        @Override
        protected Class<?>[] getRootConfigClasses() {
            return new Class[] { AppConfiguration.class };
        }

        @Override
        protected Class<?>[] getServletConfigClasses() {
            return null;
        }

        @Override
        protected String[] getServletMappings() {
            return new String[] { "/" };
        }

        @Override
        protected Filter[] getServletFilters() {
            Filter [] singleton = { new CORSFilter() };
            return singleton;
        }

    }
