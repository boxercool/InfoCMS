package com.infotop.vector.entity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.URL;
import java.util.Date;
import java.util.Properties;
import java.util.Scanner;
import java.util.TimeZone;

//import com.top.web.tools.generator.GenerateAction;
import org.apache.log4j.Logger;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.context.Context;
import org.apache.velocity.io.VelocityWriter;


public class TemplateGenerator extends Object {
	

	/*private String templateDir;

	private String targetDir;

	private String templateName;

	private String targetName;*/

	private TemplateGenerator process;

	static VelocityContext context = new VelocityContext();
	
	public static Template template1 ;
	public static Template template2 ;
	Template template = null;

	private Long functionId;
	public static  Logger rootLogger = Logger.getRootLogger();//logs stored in rootLogger method from RootLogger factory methods
	
	
	public Long getFunctionId() {
		return functionId;
	}

	public void setFunctionId(Long functionId) {
		this.functionId = functionId;
	}

	 

	
	/*public void generator(boolean append) {
		context = new VelocityContext();//object creation and stores in context
		File file = new File(targetDir + targetName);//creates file named targetDir and targetName
		
	//	String entityDirectory=targetName.substring(1);//it returns the 1st position of substring
		
		if (!file.exists())
			file.getParentFile().mkdirs();
		try {
		template = VelocityFactory.getTemplate(templateDir, templateName,"UTF-8");		
			if (process != null)//searching the template called template process  
		//		process.process(context);//class context
			mergeTemplate(template, context, file, append);//calling method mergeTemplate with file and context 
			if (file.toString().lastIndexOf("_tmp") > 0
					|| file.toString().lastIndexOf(".tmp") > 0)//last indexposition of text -tmp or .tmp
				{
					System.out.println("do nothing");
				} else {
				//file generation and getting file path
				//System.out.println(I18n.getLocaleMessage("generator.Successfully.generated.documents")+ file.getAbsolutePath());

			//	GenerateAction.logText="generator.Successfully.generated.documents "+file.getName();
				rootLogger.info("generator.Successfully.generated.documents "+file.getName());
			}
		} catch (Exception e) {
		//	GenerateAction.logText="generator.code.Generation.error "+file.getAbsolutePath();
		//	System.out.println(I18n.getLocaleMessage("generator.code.Generation.error") + e);
			rootLogger.info("generator.code.Generation.error "+file.getAbsolutePath());
			e.printStackTrace();
		}
	}*/
	
	
	public static Writer mergeTemplate(Template template, Context context, File file,
			boolean append) {
		Writer writer = null;
		VelocityWriter vw = null;
		try {
			writer = new OutputStreamWriter(new FileOutputStream(file, append),"UTF-8");
			vw = new VelocityWriter(writer, 4 * 1024, true);
			template.merge(context, vw);
			 
		} catch (Exception e) {
			//System.out.println(I18n.getLocaleMessage("generator.merge.error") + e);
			rootLogger.info("generator failed to generate document "+file.getName());
			// logger.error("合成错误：" + e);
			e.printStackTrace();
		} finally {
			if (vw != null) {
				try {
					vw.flush();
					vw.close();
				} catch (Exception e) {
					System.out.println(e.getMessage());
					// logger.error(e.getMessage());
					e.printStackTrace();
				}
				
			}
			
		}
		return writer;
		
	}
	
	/*public String getTargetDir() {
		return targetDir;
	}

	public void setTargetDir(String targetDir) {
		this.targetDir = targetDir;
	}

	public String getTargetName() {
		return targetName;
	}

	public void setTargetName(String targetName) {
		this.targetName = targetName;
	}

	public String getTemplateDir() {
		return templateDir;
	}

	public void setTemplateDir(String templateDir) {
		this.templateDir = templateDir;
	}

	public String getTemplateName() {
		return templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	public TemplateGenerator getProcess() {
		return process;
	}

	public void setProcess(TemplateGenerator process) {
		this.process = process;
	}
	*/
	
	
	
	   

	/*public static void test() {
		TemplateGenerator tg = new TemplateGenerator();
		tg.setTemplateDir("E:\\fetchtarget");
		System.out.println("started executing method()");
		tg.setTemplateName("/ControllerTemplate");
		System.out.println("***********************");
		tg.setTargetDir("E:\\fetchtarget\\target\\");
		System.out.println("----------------------");
		tg.setTargetName("/User.java");
		System.out.println("end of method test()");
	}
	*/
	

	
	
	/*@SuppressWarnings({ "rawtypes" })
	public static void getFileTemp(){
		
				Properties prop = new Properties();
		        prop.put("resource.loader", "class");
		        prop.put("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
		   //   String absolutePath = new File(Thread.currentThread().getContextClassLoader().getResource("").getFile()).getParentFile().getParentFile().getPath();
		
		     
		*//**************To load the ControllerTemplate.java****************//*
		        
		//      File absolutePath1= new File(Thread.currentThread().getContextClassLoader().getResource("").getPath()).getAbsoluteFile();
		        String absolutePath1 = new File(TemplateGenerator.class.getClassLoader().getResource("ControllerTemplate.java").getFile()).toString();
		        prop.put("file.resource.loader.path", absolutePath1 );
		        System.out.println("absolutePath1	:" + absolutePath1); 
		        
		        
	    *//**************To load the DaoTemplate.java****************//*       
		//       File absolutePath1= new File(Thread.currentThread().getContextClassLoader().getResource("").getPath()).getAbsoluteFile();
				 String absolutePath2 = new File(TemplateGenerator.class.getClassLoader().getResource("DaoTemplate.java").getFile()).toString();
				 System.out.println("absolutePath2	:" + absolutePath2);                
		        
		        
		        
		          
		    //    System.out.println("keyset is : " + prop.keySet()); 
		        
		       Enumeration em = prop.keys();
		       while (em.hasMoreElements()) {
		       String str = (String) em.nextElement();
		       System.out.println(str + ": " + prop.get(str));
		        
		        VelocityEngine Velocity = new VelocityEngine();
		        Velocity.init(prop);
		        
		        
	   *//**************To Get the ControllerTemplate.java****************//*         
		        template1  =  Velocity.getTemplate("/ControllerTemplate.java", "UTF-8");
		        System.out.println("+++++++++: "+template1.getName() );
		        
		        
		        
	   *//**************To Get the DaoTemplate.java****************//*	 
		        template2  =  Velocity.getTemplate("/DaoTemplate.java", "UTF-8");
		        System.out.println("+++++++++: "+template2.getName() );
		        
		        
		      //Code working for List object with index.vm template
		        
		        
		   		        
		        ArrayList<TemplatePojo> userInfoList1 = new ArrayList<TemplatePojo>(); 
		        {
		        	TemplatePojo userinfo = new TemplatePojo();
		            userinfo.setName("Selva");
		            userinfo.setAddress("Infotop");           
		            userInfoList1.add(userinfo);
		        }
		        context.put("users", userInfoList1);
		        
		        
		        //Code working for List object with ControllerTemplate template
		        
		        
			    ArrayList<PojoControllerTemplate> userInfoList2 = new ArrayList<PojoControllerTemplate>(); 
		        {
		        	{
		        	PojoControllerTemplate userinfo11 = new PojoControllerTemplate();
		        	PojoControllerTemplate userinfo12 = new PojoControllerTemplate();
		        	PojoControllerTemplate userinfo13 = new PojoControllerTemplate();
		        	userinfo11.setPackageName("Selva");
		            userinfo12.setBealowerNmae("Infotop"); 
		            userinfo13.setDomainName("Infotop");
		     
		            userInfoList2.add(userinfo11);
		            userInfoList2.add(userinfo12);
		            userInfoList2.add(userinfo13);
		        	}
		        
		        context.put("packageName", "iamtop");
		        context.put("domainName", "infotop");
		        context.put("bealowerNmae", "linyi");
		        }
		        
		        
		//Code working for List object with DaoTemplate template
		        
		        
			    ArrayList<PojoDaoTemplate> userInfoList3 = new ArrayList<PojoDaoTemplate>(); 
			    {
			    	{
		        	PojoDaoTemplate userinfo21 = new PojoDaoTemplate();
		        	PojoDaoTemplate userinfo22 = new PojoDaoTemplate();
		        	
		            userinfo21.setPackageName("Selva");
		            userinfo22.setDomainName("Infotop");
		     
		            userInfoList3.add(userinfo21);
		            userInfoList3.add(userinfo22);
		            
			    	}
		        
		        context.put("packageName", "Infocms");
		        context.put("domainName", "infotop");
			    }
		        
			 //  Code works for Map Object
		        
		        
		            Map<String,String> userDataMap = new HashMap<String,String>();
		               for (int k = 0; k < 3; k++) {
		            	userDataMap.put("1001", "Sarathy");
			            userDataMap.put("1002", "Kumar");
			            
			            context.put("userDataMap",userDataMap); 
			            } 
		            
		           		        
		    
		   
		      }
		        try {
		        	Writer fileWriter1 = mergeTemplate(template1,context,new File("C:/Users/Administrator/Desktop/GeneratedTemplates/DaoTemplateVelocity.java"), true);
		        			  
		        	template1.process(); 
			    
			   //    fileWriter = new FileWriter(new File("C:/Users/Administrator/Desktop/1.html"));
			 	   System.out.println("#########:"+fileWriter1);
			 	  fileWriter1.flush();
			 	  fileWriter1.close();
			 	  
		        	
		        } catch (Exception e) {
		            e.printStackTrace();
		            System.err.println("Exception caught: " + e.getMessage());
		        }
		        
		       
		        
	}
	*/
	
	@SuppressWarnings({ "rawtypes" })
	public static void getFileTemp(String templateclass,String generateclass, NewPojo npojo){
		
				Properties prop = new Properties();
		        prop.put("resource.loader", "class");
		        prop.put("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
		   //   String absolutePath = new File(Thread.currentThread().getContextClassLoader().getResource("").getFile()).getParentFile().getParentFile().getPath();
		
		     
		/**************Example:To load the Template.java****************/
		        
		//      File absolutePath1= new File(Thread.currentThread().getContextClassLoader().getResource("").getPath()).getAbsoluteFile();
		      /* String absolutePath1 = new File(TemplateGenerator.class.getClassLoader().getResource("").getFile()).toString();
		        prop.put("file.resource.loader.path", absolutePath1 );
		        System.out.println("absolutePath1	:" + absolutePath1);*/ 
		       
		        
		   
		          
		    //    System.out.println("keyset is : " + prop.keySet()); 
		        
		     /*  Enumeration em = prop.keys();
		       while (em.hasMoreElements()) {
		       String str = (String) em.nextElement();
		       System.out.println(str + ":8888888 " + prop.get(str));*/
		        
		        VelocityEngine Velocity = new VelocityEngine();
		        Velocity.init(prop);
		        
		        System.out.println("+++++++++: "+templateclass );
	   /**************To Get the Template.java****************/         
		        template1  =  Velocity.getTemplate(templateclass, "UTF-8");
		        System.out.println("+++++++++: "+template1.getName() );
		        
		        
		        //Code working for List object with ControllerTemplate template
		        
		        
			    /*ArrayList<PojoControllerTemplate> userInfoList = new ArrayList<PojoControllerTemplate>(); 
		        {
		        	{
		        	PojoControllerTemplate userinfo1 = new PojoControllerTemplate();
		        	PojoControllerTemplate userinfo2 = new PojoControllerTemplate();
		        	PojoControllerTemplate userinfo3 = new PojoControllerTemplate();
		        	userinfo1.setPackageName("Mr. ZHANG JINGANG");
		        	userinfo1.setBealowerNmae("Ms. HUANG"); 
		        	userinfo1.setDomainName("Mr. SHUMIN");
		     
		        	userInfoList.add(userinfo1);
		        	userInfoList.add(userinfo2);
		        	userInfoList.add(userinfo3);
		        		        	
		        	}
		       
		       
		        }*/
		       
		        
		        /* accessing service template pojo*/
		        
		        System.out.println(npojo.getPackageName()+npojo.getDomainName()+npojo.getBealowerNmae());
	        	
		        context.put("packageName", npojo.getPackageName());
		        context.put("domainName", npojo.getDomainName());
		        context.put("bealowerNmae",npojo.getBealowerNmae());
	        	
		       
		      
	        	
	        /***** calling method "mergeTemplate" and To generate and write in the file/class*****/	
	        	
		        try {
		        	Writer fileWriter1 = mergeTemplate(template1,context,new File("C:/Users/Administrator/Desktop/GeneratedTemplates/"+generateclass), true);
		        			  
		        	template1.process(); 
			    
			   //  fileWriter = new FileWriter(new File("C:/Users/Administrator/Desktop/1.html"));
			 	   System.out.println("#########:"+fileWriter1);
			 	   fileWriter1.flush();
			 	   fileWriter1.close();
			 	  
		        	
		        } catch (Exception e) {
		            e.printStackTrace();
		            System.err.println("Exception caught: " + e.getMessage());
		            
		        }     
		        
	/*}*/
	}
	
	
	
	
	

	public static void main(String[] args) throws InterruptedException, IOException {
		
	//	Runtime rt=Runtime.getRuntime();
	//	String targetDir="E:\\check";
	//	rt.exec("cmd.exe /c cd \""+targetDir+"\"& start cmd.exe /k \"javac -classpath templategenerator/src/TemplateGenerator.java"+"\"");
		//TemplateGenerator.test();			
		
		
	
		
		
		Scanner reader = new Scanner(System.in);
		System.out.println("Enter a PackageName: ");
		String pacNam= reader.nextLine();
		System.out.println("Enter a BealowerNmae: ");
		String bolNam= reader.nextLine();
		System.out.println("Enter a DomainName: ");
		String domNam= reader.nextLine();
		
		NewPojo npojo= new NewPojo();
		
		

		
		
	    npojo.setPackageName(pacNam);
	    npojo.setBealowerNmae(bolNam);
	    npojo.setDomainName(domNam);
	  URL url=  TemplateGenerator.class.getClass().getResource("/config/ControllerTemplate.txt");
	   // File file = new File(.getFile());
	    System.out.println(url+"::"+url.getFile().toString());
	    String basePath = new File("src/main/resources/config/ControllerTemplate.txt").getAbsolutePath();
	    System.out.println(basePath);
		getFileTemp(basePath ,"ControllerTemplateVelocity.java",npojo );
		/*getFileTemp("/DaoTemplate.java","DaoTemplateVelocity.java");
		getFileTemp("/ServiceTemplate.java","ServiceTemplateVelocity.java");
		getFileTemp("/form.jsp","FormVelocity.jsp");
		getFileTemp("/list.jsp","ListVelocity.jsp");
		getFileTemp("/view.jsp","ViewVelocity.jsp");
		*/
		
		
		
		System.out.println("Today Date and Time is : ");
		System.out.println("****************************"); 
		System.out.println(new Date());
	    System.out.println("****************************");
	    TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
	    System.out.println(new Date());
	    
	   
       
	   
	}	
}

