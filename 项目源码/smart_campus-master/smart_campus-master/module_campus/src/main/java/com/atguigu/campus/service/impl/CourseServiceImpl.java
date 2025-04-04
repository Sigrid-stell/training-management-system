package com.atguigu.campus.service.impl;

import com.atguigu.campus.pojo.Course;
import com.atguigu.campus.service.CourseService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.atguigu.campus.mapper.CourseMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
* @description 针对表【tb_course】的数据库操作Service实现
*/
@Service
public class CourseServiceImpl extends ServiceImpl<CourseMapper, Course>
    implements CourseService {

    @Resource
    private CourseMapper courseMapper;

    @Override
    public Course selectcourseByNameAndPassword(String username, String password) {
        QueryWrapper<Course> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("name",username).eq("password",password);
        return courseMapper.selectOne(queryWrapper);
    }

    @Override
    public Course selectAdminById(Long userId) {
        QueryWrapper<Course> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id",userId);
        return courseMapper.selectOne(queryWrapper);
    }
}




