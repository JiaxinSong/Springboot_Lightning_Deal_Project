## SpringBoot Basic E-Commerce Lightning Deal Projects
### Project Introduction 

**E-commerce basic lightning deal project with separated front and back ends quickly built through SpringBoot. 
The project is completed by applying domain-driven hierarchical model design: user otp registration, login, view, product list, entry into product details, and the basic process of placing an order after the countdown lightning deal starts.**

### Frameworks: 
* Backend: Springboot+MyBatis  
* Frontend: Metronic 

### External Dependencies Used

* org.springframework.boot:spring-boot-starter-web
* mysql:mysql-connector-java
* com.alibaba:druid
* org.mybatis.spring.boot:mybatis-spring-boot-starter
* org.apache.commons:commons-lang3
* org.hibernate:hibernate-validator
* joda-time:joda-time
* junit:junit
* org.springframework:spring-test
* org.mybatis.generator：mybatis-generator-maven-plugin （插件）


### Project Function

* Create item
<div align=center><img width="300" height="400" src="https://github.com/JiaxinSong/Springboot_Lightning_Deal_Project/blob/main/img/createitem.png"/></div>
* Register (Backend will generate a one time password by random)
<div align=center><img width="300" height="600" src="https://github.com/JiaxinSong/Springboot_Lightning_Deal_Project/blob/main/img/register.png"/></div>
* Login
<div align=center><img width="300" height="400" src="https://github.com/JiaxinSong/Springboot_Lightning_Deal_Project/blob/main/img/login.png"/></div>
* View item list
<div align=center><img width="1000" height="200" src="https://github.com/JiaxinSong/Springboot_Lightning_Deal_Project/blob/main/img/listitem.png"/></div>
* Buy item (If during lightning deal, the item price will change.)
<div align=center><img width="300" height="600" src="https://github.com/JiaxinSong/Springboot_Lightning_Deal_Project/blob/main/img/getitem.png"/></div>
<div align=center><img width="300" height="600" src="https://github.com/JiaxinSong/Springboot_Lightning_Deal_Project/blob/main/img/lightningdeal.png"/></div>

### Project Structure
 **Design models first. Then design database tables according to models. Use mybatis-generator.xml to generator DO(data object), DOMapper and DOMapper. xml. Then design services and controllers.**

* html: frontend files 
* controller: views for  users and controllers. It is responsible for the control of the specific business module process. In this layer, the interface of the Service layer should be called to control the business process. 
* dao: mainly do the work of the data persistence layer, DOMappers to map sql 
* dataobject: DOs to map database tables
* error: use enum to manage error types
* response: generate a commontype which have the status( fail or success) and  required object
* service: The Service layer is mainly responsible for the logical application design of business modules.
* validator: use hibernate-validator to complete model parameter verification through annotations


### Project Highlights
* **In the mybatis-generator.xml configuration file, add**
`enableCountByExample="false"enableUpdateByExample="false" enableDeleteByExample="false" enableSelectByExample="false"selectByExampleQueryId="false"`
**to the corresponding generation table class name configuration to avoid generating uncommon methods**

&nbsp;
 * **A cross-domain request problem occurs when the front-end ajax calls the interface to obtain the verification code**
`Solution: @CrossOrigin(originPatterns = "*",allowCredentials="true",allowedHeaders = "*",methods = {})`
*AllowedHeaders allows the front end to put token into the header for cross-domain requests for session sharing.
After allowCredentials is granted, the front-end must also set xhfFields to grant cross-domain session sharing.
xhrFields: {withCredentials: true},*

&nbsp;
* **Unified front-end return format CommonReturnType**
*{status: xx ,object:xx}*
*dataobject -> The mapping object corresponding to the database
model -> Domain model object for business logic service
viewobject -> Model objects for front-end interaction*

&nbsp;
* **Adding keyProperty="id" useGeneratedKeys="true" in insertSelective makes the DO after insertion generates an auto-increment id.**
*The difference between insertSelective and insert：
The SQL statement corresponding to insertSelective adds a NULL check, that is, only field values ​​whose data is not null will be inserted (a null field depends on the default value of the database field) insert will insert all fields and will insert null.*

&nbsp;

* **Database design specification, the field should be set to not null when designing,**
**and set the default value to avoid the unique index from failing in the null case**

&nbsp;

* **Solve if the transaction createorder places an order if it is rolled back,**
**the serial number id obtained in the order placing method is rolled back,**
**so that the id number that has been waiting may be used again**
Add a comment before the generatorOrderNo method:
@Transactional(propagation = Propagation.REQUIRES_NEW)

&nbsp;

* **Use aggregation model**Add PromoModel promoModel to itemModel, if it is not empty, it means there is an unfinished lightning deal; add promoId to orderModel, if it is not empty, place an order in lightning deal mode 

### Debug Methods Summary
* First confirm the problem: environmental problems, ui display problems, interface problems, service problems, configuration problems
* Debug: Breakpoint debugging
* Search on the Internet


### Unsolved Questions
* High concurrency issues
* Inefficient query
* How to scale the project horizontally


















