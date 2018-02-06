package net.ah.edbookbackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages= {"net.ah.edbookbackend.dto"})
@EnableTransactionManagement
public class HibernateConfiguration {
	private static String DATABASE_DRIVER = "com.mysql.jdbc.Driver";
	private static String DATABASE_URL = "jdbc:mysql://localhost:3306/edbook";
	private static String DATABASE_DIALECT = "org.hibernate.dialect.MySQLDialect";
	private static String DATABASE_USERNAME = "root";
	private static String DATABASE_PASSWORD = "mysql12$#";

	 @Bean
	 public DataSource getDataSource() {
		 BasicDataSource dataSource = new BasicDataSource();
		 dataSource.setDriverClassName(DATABASE_DRIVER);
		 dataSource.setUrl(DATABASE_URL);
		 dataSource.setUsername(DATABASE_USERNAME);
		 dataSource.setPassword(DATABASE_PASSWORD);
		 return dataSource;
	 }
	 
	 @Bean
	 public SessionFactory getSessionFactory(DataSource dataSource) {
		 LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource);
		 builder.addProperties(getProperties());
		 builder.scanPackages("net.ah.edbookbackend.dto");
		 return builder.buildSessionFactory();
	 }
	 
	 private Properties getProperties() {
		 Properties properties = new Properties();
		 properties.put("hibernate.dialect", DATABASE_DIALECT);
		 properties.put("hibernate.show_sql", "true");
		 properties.put("hibernate.format_sql", "true");
		 properties.put("hibernate.hbm2ddl.auto", "update");
		 return properties;
	 }
	 
	 @Bean
	 public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		 HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		 return transactionManager;
	 }
}

