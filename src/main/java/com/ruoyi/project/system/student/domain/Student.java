package com.ruoyi.project.system.student.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 学生基本信息对象 sys_student
 * 
 * @author ruoyi
 * @date 2019-11-15
 */
public class Student extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long studentId;

    /** 学号 */
    @Excel(name = "学号")
    private String studentStuid;

    /** 学生名称 */
    @Excel(name = "学生名称")
    private String studentName;

    /** 身份证 */
    @Excel(name = "身份证")
    private String studentIdcard;

    /** 生日 */
    @Excel(name = "生日", width = 30, dateFormat = "yyyy-MM-dd")
    private Date studentBirthday;

    /** 照片 */
    @Excel(name = "照片")
    private String studentCard;

    /** 籍贯 */
    @Excel(name = "籍贯")
    private String studentHome;

    /** 信息 */
    @Excel(name = "信息")
    private String info;

    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }
    public void setStudentStuid(String studentStuid) 
    {
        this.studentStuid = studentStuid;
    }

    public String getStudentStuid() 
    {
        return studentStuid;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setStudentIdcard(String studentIdcard) 
    {
        this.studentIdcard = studentIdcard;
    }

    public String getStudentIdcard() 
    {
        return studentIdcard;
    }
    public void setStudentBirthday(Date studentBirthday) 
    {
        this.studentBirthday = studentBirthday;
    }

    public Date getStudentBirthday() 
    {
        return studentBirthday;
    }
    public void setStudentCard(String studentCard) 
    {
        this.studentCard = studentCard;
    }

    public String getStudentCard() 
    {
        return studentCard;
    }
    public void setStudentHome(String studentHome) 
    {
        this.studentHome = studentHome;
    }

    public String getStudentHome() 
    {
        return studentHome;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("studentId", getStudentId())
            .append("studentStuid", getStudentStuid())
            .append("studentName", getStudentName())
            .append("studentIdcard", getStudentIdcard())
            .append("studentBirthday", getStudentBirthday())
            .append("studentCard", getStudentCard())
            .append("studentHome", getStudentHome())
            .toString();
    }
}
