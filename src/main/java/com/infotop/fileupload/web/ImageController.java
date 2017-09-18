/*
 * The MIT License
 *
 * Copyright 2013 jdmr.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package com.infotop.fileupload.web;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.infotop.fileupload.entity.Image;
import com.infotop.fileupload.service.ImageService;

/**
 *
 * @author jdmr
 */
@Controller
@RequestMapping(value="images")
public class ImageController {
    
    private static final Logger log = LoggerFactory.getLogger(ImageController.class);
    
    @Autowired
    private ImageService imageService;
    
    private static String fileUploadDirectory ="";

    @RequestMapping(value="{templateid}/{pageid}/{websiteid}")
    public String index(HttpServletRequest request,@PathVariable int templateid,@PathVariable int pageid,@PathVariable int websiteid,Model model) {
    	fileUploadDirectory =  request.getRealPath("/")+"static/UploadImages";
    	
    	File file=new File(fileUploadDirectory);
    	if(!file.exists()){
    		if(file.mkdirs()){
    			System.out.println("file is create:"+file.mkdirs());
    		}
    		else
    		{
    			System.out.println("Failed to create");
    		}
    	}
    	
        log.debug("ImageController home");
        model.addAttribute("templateid", templateid);
        model.addAttribute("pageid", pageid);
        model.addAttribute("websiteid", websiteid);
        model.addAttribute("size",imageService.listByTemplate(templateid, pageid, websiteid).size());
        return "image/index";
    }
    
    @RequestMapping(value = "/upload/{templateId}/{pageId}/{websiteId}", method = RequestMethod.GET)
    public @ResponseBody Map list(HttpServletRequest request,@PathVariable int templateId,@PathVariable int pageId,@PathVariable int websiteId,Model model) {
        log.debug("uploadGet called");
        fileUploadDirectory =  request.getRealPath("/")+"static/UploadImages";
        String ctx =request.getContextPath();
        System.out.println(ctx+"----------------");
        List<Image> list = imageService.listByTemplate(templateId, pageId, websiteId);
        for(Image image : list) {
            image.setUrl(ctx+"/images/picture/"+image.getId());
            image.setThumbnailUrl(ctx+"/images/thumbnail/"+image.getId());
            image.setDeleteUrl(ctx+"/images/delete/"+image.getId());
            image.setDeleteType("DELETE");
        }
        Map<String, Object> files = new HashMap<>();
        files.put("files", list);
        /*files.put("size",4);
        model.addAttribute("size",2);*/
        log.debug("Returning: {}", files);
        return files;
    }
    
    @RequestMapping(value = "/upload/{templateId}/{pageId}/{websiteId}", method = RequestMethod.POST)
    public @ResponseBody Map upload(MultipartHttpServletRequest request, HttpServletResponse response,@PathVariable int templateId,@PathVariable int pageId,@PathVariable int websiteId,Model model) {
        log.debug("uploadPost called");
        Iterator<String> itr = request.getFileNames();
        MultipartFile mpf;
        List<Image> list = new LinkedList<>();
        
        while (itr.hasNext()) {
            mpf = request.getFile(itr.next());
            log.debug("Uploading {}", mpf.getOriginalFilename());
            System.out.println("Image 12234234234:"+ mpf.getOriginalFilename());
            String ctx =request.getContextPath();
            System.out.println("Image 12234234234:"+ctx);
            String newFilenameBase = UUID.randomUUID().toString();
            String originalFileExtension = mpf.getOriginalFilename().substring(mpf.getOriginalFilename().lastIndexOf("."));
            String newFilename = newFilenameBase + originalFileExtension;
            String storageDirectory = fileUploadDirectory;
            System.out.println(storageDirectory);
            String contentType = mpf.getContentType();
            System.out.println("Image 12234234234:"+contentType);
            File newFile = new File(storageDirectory + "/" + newFilename);
            try {
				System.out.println(newFile.getCanonicalPath());
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
            try {
                mpf.transferTo(newFile);
                
                BufferedImage thumbnail = Scalr.resize(ImageIO.read(newFile), 290);
                String thumbnailFilename = newFilenameBase + "-thumbnail.png";
                File thumbnailFile = new File(storageDirectory + "/" + thumbnailFilename);
                ImageIO.write(thumbnail, "png", thumbnailFile);
                System.out.println("fgsfgsfdgjkl;sdfjlk123123412351"+thumbnailFile.getCanonicalPath());
                Image image = new Image();
                image.setName(mpf.getOriginalFilename());
                image.setThumbnailFilename(thumbnailFilename);
                image.setNewFilename(newFilename);
                image.setContentType(contentType);
                image.setSize(mpf.getSize());
                image.setThumbnailSize(thumbnailFile.length());
                image.setTemplateId(templateId);
                image.setPageId(pageId);
                image.setWebsiteId(websiteId);
                image = imageService.save(image);
                image.setUrl("/images/picture/"+image.getId());
                image.setThumbnailUrl("/images/thumbnail/"+image.getId());
                image.setDeleteUrl("/images/delete/"+image.getId());
                image.setDeleteType("DELETE");
                imageService.update(image.getUrl(), image.getThumbnailUrl(), image.getDeleteUrl(), image.getDeleteType(), image.getId());
                image.setUrl(ctx+"/images/picture/"+image.getId());
                image.setThumbnailUrl(ctx+"/images/thumbnail/"+image.getId());
                image.setDeleteUrl(ctx+"/images/delete/"+image.getId());
                list.add(image);
                
            } catch(IOException e) {
                log.error("Could not upload file "+mpf.getOriginalFilename(), e);
            }
            
        }
        
        Map<String, Object> files = new HashMap<>();
        files.put("files", list);
        System.out.println(list.toString());
        return files;
    }
    
    @RequestMapping(value = "/picture/{id}", method = RequestMethod.GET)
    public void picture(HttpServletResponse response, @PathVariable Long id) {
    	
        Image image = imageService.get(id);
        File imageFile = new File(fileUploadDirectory+"/"+image.getNewFilename());
        response.setContentType(image.getContentType());
        response.setContentLength(image.getSize().intValue());
        try {
            InputStream is = new FileInputStream(imageFile);
            IOUtils.copy(is, response.getOutputStream());
        } catch(IOException e) {
            log.error("Could not show picture "+id, e);
        }
    }
    
    @RequestMapping(value = "/thumbnail/{id}", method = RequestMethod.GET)
    public void thumbnail(HttpServletResponse response, @PathVariable Long id) {
        Image image = imageService.get(id);
        File imageFile = new File(fileUploadDirectory+"/"+image.getThumbnailFilename());
        response.setContentType(image.getContentType());
        response.setContentLength(image.getThumbnailSize().intValue());
        try {
            InputStream is = new FileInputStream(imageFile);
            IOUtils.copy(is, response.getOutputStream());
        } catch(IOException e) {
            log.error("Could not show thumbnail "+id, e);
        }
    }
    
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
    public @ResponseBody List delete(@PathVariable Long id) {
        Image image = imageService.get(id);
        File imageFile = new File(fileUploadDirectory+"/"+image.getNewFilename());
        imageFile.delete();
        File thumbnailFile = new File(fileUploadDirectory+"/"+image.getThumbnailFilename());
        thumbnailFile.delete();
        imageService.delete(image);
        List<Map<String, Object>> results = new ArrayList<>();
        Map<String, Object> success = new HashMap<>();
        success.put("success", true);
        results.add(success);
        return results;
    }
}
