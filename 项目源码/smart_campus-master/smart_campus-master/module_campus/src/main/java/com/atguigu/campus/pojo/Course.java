package com.atguigu.campus.pojo;

import com.atguigu.campus.pojo.Enum.Status;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @TableName tb_course
 */
@TableName(value ="tb_course")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Course implements Serializable {
    @TableId(type = IdType.AUTO)
    private int id;
    private String coursename;
    private String teacher;
    private Date begintime;
    private String place;
    private Date endtime;
    private String intro;//简介
    private int numofapplications;
    private int numofregistered;
    private Status status;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public Date getBegintime() {
        return begintime;
    }

    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public int getNumofapplications() {
        return numofapplications;
    }

    public void setNumofapplications(int numofapplications) {
        this.numofapplications = numofapplications;
    }

    public int getNumofregistered() {
        return numofregistered;
    }

    public void setNumofregistered(int numofregistered) {
        this.numofregistered = numofregistered;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", coursename='" + coursename + '\'' +
                ", teacher='" + teacher + '\'' +
                ", begintime=" + begintime +
                ", place='" + place + '\'' +
                ", endtime=" + endtime +
                ", intro='" + intro + '\'' +
                ", numofapplications=" + numofapplications +
                ", numofregistered=" + numofregistered +
                ", status=" + status +
                '}';
    }
}