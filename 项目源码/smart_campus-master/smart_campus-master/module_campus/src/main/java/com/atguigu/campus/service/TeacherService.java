package com.atguigu.campus.service;

import com.atguigu.campus.pojo.Teacher;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @description 针对表【tb_teacher】的数据库操作Service
*/
public interface TeacherService extends IService<Teacher> {

    Teacher selectTeacherByNameAndPassword(String username, String password);

    Teacher selectAdminById(Long userId);
}
