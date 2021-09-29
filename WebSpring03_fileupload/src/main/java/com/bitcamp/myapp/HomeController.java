package com.bitcamp.myapp;


import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
   
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home() {
      
      return "home";
   }
   
   // �������� ������ ���ε��ϴ� ���(name�� ���� ���)
   @RequestMapping(value = "/dataUpload", method = RequestMethod.POST)
   public ModelAndView fileUploadTest(DataVO vo, HttpServletRequest req) {
      // vo�� �ۼ���, ����, �����̸��� �������� ���� ���õǾ� �ִ� ���¿���

      // �� �갡 ���� ���ε�� ������ ��θ� ������ ���̴�. 
      String path = req.getSession().getServletContext().getRealPath("/upload");
      System.out.println(path);
      
      // ���� ���ε带 ���ؼ� HttpServletRequest ��ü�� MultipartHttpServletRequest �ν��Ͻ��� ���ؾ� �Ѵ�.
      // ��ģ���� �������̽��̹Ƿ� new�� ���ϰ� ����ȯ�� ���ؼ� �ν��Ͻ��� �����ϴ� ���̴�. 
      MultipartHttpServletRequest mr = (MultipartHttpServletRequest)req;
      
      // mr���� getFiles("form���� ���ε�Ǵ� name") �޼ҵ带 �̿��� MultipartFile ��ü�� ������
      List<MultipartFile> files = mr.getFiles("filename");
      
      // ���ε�� ���ϸ��� ������ ����Ʈ
      List<String> fileList = new ArrayList<String>();
      if(files != null) {
         // ���ε�� ������ ������ ���ε� ����
         for(int i=0; i < files.size(); i++) {
            MultipartFile file = files.get(i);
            // ����� ������ ���� rename�ؾ� �ϴµ�
            // ���� ���� ���� �̸��� ���Ѵ�.
            String fname = file.getOriginalFilename();
            if(fname != null && !fname.equals("")) {
               // �������� ������ �ش� ��ο� ���� ���ϸ��� �����ϴ����� Ȯ���Ѵ�.
               File fileObj = new File(path, fname);
               File newFileObj = new File(path, fname);
               if(fileObj.exists()) {
                  for(int num=1; ; num++) {
                  // �����ϴ� ��� ���ϸ� ����
                     int point = fname.lastIndexOf(".");
                     String orgFileName = fname.substring(0, point); // ���ϸ�
                     String orgFileExt = fname.substring(point+1); // Ȯ����
                     // ���ϸ�(1), ���ϸ�(2), ... ���� �ִ��� Ȯ��
                     String newFileName = orgFileName + "(" + num + ")." + orgFileExt;
                     newFileObj = new File(path, newFileName);
                     if(!newFileObj.exists()) {
                        break; // ������ �ߴ��ϰ� ���� i��
                     }
                  }
                  
               }
               // ���ε�
               try {
                  file.transferTo(newFileObj);
               } catch(Exception e) {
                  e.printStackTrace();
               }
               fileList.add(newFileObj.getName());
            }
         }
      }
      // ���ϸ���Ʈ vo�� ����
      vo.setFileList(fileList);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("vo", vo);
      mav.setViewName("result");
      return mav;
   }
}