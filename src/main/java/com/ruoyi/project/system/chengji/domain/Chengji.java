package com.ruoyi.project.system.chengji.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 学生成绩信息对象 sys_chengji
 * 
 * @author ruoyi
 * @date 2019-12-03
 */
public class Chengji extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long chengjiId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String ksUsername;

    /** 里程 */
    @Excel(name = "里程")
    private String ksLc;

    /** 耗时 */
    @Excel(name = "耗时")
    private String ksHs;

    /** 考试时间 */
    @Excel(name = "考试时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date ksTime;

    /** 分数 */
    @Excel(name = "分数")
    private String chengjiMark;

    /** 评分教师 */
    @Excel(name = "评分教师")
    private String chengjiJs;

    /** 状态（0待审核 1通过） */
    @Excel(name = "状态", readConverterExp = "0=待审核,1=通过")
    private String chengjiStatus;

    public void setChengjiId(Long chengjiId) 
    {
        this.chengjiId = chengjiId;
    }

    public Long getChengjiId() 
    {
        return chengjiId;
    }
    public void setKsUsername(String ksUsername) 
    {
        this.ksUsername = ksUsername;
    }

    public String getKsUsername() 
    {
        return ksUsername;
    }
    public void setKsLc(String ksLc) 
    {
        this.ksLc = ksLc;
    }

    public String getKsLc() 
    {
        return ksLc;
    }
    public void setKsHs(String ksHs) 
    {
        this.ksHs = ksHs;
    }

    public String getKsHs() 
    {
        return ksHs;
    }
    public void setKsTime(Date ksTime) 
    {
        this.ksTime = ksTime;
    }

    public Date getKsTime() 
    {
        return ksTime;
    }
    public void setChengjiMark(String chengjiMark) 
    {
        this.chengjiMark = chengjiMark;
    }

    public String getChengjiMark() 
    {
        return chengjiMark;
    }
    public void setChengjiJs(String chengjiJs) 
    {
        this.chengjiJs = chengjiJs;
    }

    public String getChengjiJs() 
    {
        return chengjiJs;
    }
    public void setChengjiStatus(String chengjiStatus) 
    {
        this.chengjiStatus = chengjiStatus;
    }

    public String getChengjiStatus() 
    {
        return chengjiStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("chengjiId", getChengjiId())
            .append("ksUsername", getKsUsername())
            .append("ksLc", getKsLc())
            .append("ksHs", getKsHs())
            .append("ksTime", getKsTime())
            .append("chengjiMark", getChengjiMark())
            .append("chengjiJs", getChengjiJs())
            .append("chengjiStatus", getChengjiStatus())
            .toString();
    }
}
