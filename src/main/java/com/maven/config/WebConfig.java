package com.maven.config;

import java.util.Locale;


import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

public class WebConfig  implements WebMvcConfigurer {

	  // Define the LocaleResolver bean
	  @Bean
	  public LocaleResolver localeResolver() {
	    SessionLocaleResolver localeResolver = new SessionLocaleResolver();
	    localeResolver.setDefaultLocale(Locale.US); // Set the default locale
	    return localeResolver;
	  }

	  // Define the LocaleChangeInterceptor bean
	  @Bean
	  public LocaleChangeInterceptor localeChangeInterceptor() {
	    LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
	    interceptor.setParamName("lang"); // Set the request parameter name to change the locale
	    return interceptor;
	  }

	  
	  public void addInterceptors(InterceptorRegistry registry) {
	    // Register the LocaleChangeInterceptor
	    registry.addInterceptor(localeChangeInterceptor());
	  }
	}

	
