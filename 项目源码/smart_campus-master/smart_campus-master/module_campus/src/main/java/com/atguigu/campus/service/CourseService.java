package com.atguigu.campus.service;

import com.atguigu.campus.pojo.Course;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @description 针对表【tb_course】的数据库操作Service
*/
public interface CourseService extends IService<Course> {

    Course selectcourseByNameAndPassword(String username, String password);

    Course selectAdminById(Long userId);
}
