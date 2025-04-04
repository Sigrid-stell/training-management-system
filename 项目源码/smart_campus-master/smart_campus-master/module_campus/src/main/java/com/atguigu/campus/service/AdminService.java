package com.atguigu.campus.service;

import com.atguigu.campus.mapper.AdminMapper;
import com.atguigu.campus.pojo.Admin;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;

/**
* @description 针对表【tb_admin】的数据库操作Service
*/
public interface AdminService extends IService<Admin> {

    Admin selectAdminByNameAndPassword(String username, String password);

    Admin selectAdminById(Long userId);
}
