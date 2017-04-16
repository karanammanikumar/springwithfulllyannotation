package com.renault.powertool;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
import com.renault.powertool.controller.AppConfig;

public class WebResources implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext container) throws ServletException {
		
	      // Create the 'root' Spring application context
	      AnnotationConfigWebApplicationContext rootContext =  new AnnotationConfigWebApplicationContext();
	      rootContext.register(AppConfig.class);

	      // Manage the lifecycle of the root application context
	      container.addListener(new ContextLoaderListener(rootContext));

	      // Create the dispatcher servlet's Spring application context
	      AnnotationConfigWebApplicationContext dispatcherContext = new AnnotationConfigWebApplicationContext();
	      dispatcherContext.register(DispatcherConfig.class);

			
	      XmlWebApplicationContext appContext = new XmlWebApplicationContext();
	      ServletRegistration.Dynamic dispatcher = container.addServlet("dispatcher", new DispatcherServlet(appContext));
	    	      dispatcher.setLoadOnStartup(1);
	    	      dispatcher.addMapping("/");

	}

}
