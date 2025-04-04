package com.atguigu.campus.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.security.KeyStore;

/**
 * 用户登录表单
 *
 */

/**
 * 将登录的信息封装到该类 便于获取
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginForm {
    private String username;//用户名
    private String password;//密码
    private String verifiCode;//验证码
    private Integer userType;//用户类型
//获取用户名
    public String getUsername() {
        return username;
    }
//设置用户名
    public void setUsername(String username) {
        this.username = username;
    }
//获取密码
    public String getPassword() {
        return password;
    }
//设置密码
    public void setPassword(String password) {
        this.password = password;
    }
//获取验证码
    public String getVerifiCode() {
        return verifiCode;
    }
//设置验证码
    public void setVerifiCode(String verifiCode) {
        this.verifiCode = verifiCode;
    }
//获取用户类型
    public Integer getUserType() {
        return userType;
    }
//设置用户类型
    public void setUserType(Integer userType) {
        this.userType = userType;
    }
//返回对象
    @Override
    public String toString() {
        return "LoginForm{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", verifiCode='" + verifiCode + '\'' +
                ", userType=" + userType +
                '}';
    }
}
