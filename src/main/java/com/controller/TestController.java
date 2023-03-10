package com.controller;

import com.service.TestService;
import com.util.Encryption.EncryptionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequiredArgsConstructor
public class TestController {
    private final TestService testService;
    public static void main(String[] args) {
        try { //jdbc:mysql://localhost:3306/youtube?useUnicode=true&serverTimezone=Asia/Seoul
            System.out.println(new EncryptionService().encryptAES("jdbc:mysql://localhost:3306/youtube?useUnicode=true&serverTimezone=Asia/Seoul", false));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    /**
     * Recover Interceptor Active
     */
    @RequestMapping(value = "/test/recover", method = RequestMethod.GET)
    public ModelAndView testRecover() {
        return new ModelAndView("error/recover");
    }

    @RequestMapping(value = "/test/error", method = RequestMethod.GET)
    public ModelAndView testError() {
        return new ModelAndView("error/error");
    }
}
