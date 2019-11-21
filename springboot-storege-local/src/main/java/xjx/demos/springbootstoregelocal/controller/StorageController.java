package xjx.demos.springbootstoregelocal.controller;

import org.apache.tomcat.jni.File;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.print.attribute.standard.Media;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-09-19 14:57
 **/
@RestController
@RequestMapping("storage")
@CrossOrigin
public class StorageController {
    private static String storageFilePrefix = "http://localhost:11005/storage/get/";
    private static String directoryName = "storage";
    @PostMapping("create")
    public Object create(@RequestParam("file") MultipartFile multipartFile) throws IOException {
        InputStream inputStream = multipartFile.getInputStream();
        String fileName = getFileName(multipartFile.getOriginalFilename());
        Path path = Paths.get(directoryName);
        try {
            Files.createDirectory(path);
        }catch (Exception e){}
        Path resolve = path.resolve(fileName);
        Files.copy(inputStream, resolve, StandardCopyOption.REPLACE_EXISTING);
        Map<String, Object> result = new HashMap<>();
        result.put("code", 1000);
        result.put("message", "success");
        result.put("url", storageFilePrefix + resolve.getFileName());
        return result;
    }
    @GetMapping("get/{filePath}")
    public ResponseEntity<Resource> get(
           @PathVariable("filePath") String filePath) throws MalformedURLException {
        MediaType mediaType = MediaType.parseMediaType("image/png");
        new ArrayList<>().stream().forEach(item -> {

        });
        Path path = Paths.get(directoryName);
        UrlResource urlResource = new UrlResource(path.resolve(filePath).toUri());
        if(urlResource.exists() && urlResource.isReadable()) {
            return ResponseEntity.ok().contentType(mediaType).body(urlResource);
        }
        return ResponseEntity.notFound().build();
    }
    private String getFileName(String originalFilename) {
        return UUID.randomUUID().toString().replace("-","") +
                originalFilename.substring(originalFilename.lastIndexOf("."));
    }

}