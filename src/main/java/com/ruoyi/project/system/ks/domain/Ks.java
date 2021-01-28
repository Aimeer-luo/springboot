package com.ruoyi.project.system.ks.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 学生体测信息对象 sys_ks
 * 
 * @author ruoyi
 * @date 2019-11-17
 */
public class Ks extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long ksId;

    /** 考试截图 */
    @Excel(name = "考试截图")
    private String ksPic;

    /** 姓名 */
    @Excel(name = "姓名")
    private String ksUsername;

    /** 里程 */
    @Excel(name = "里程")
    private String ksLc;

    /** 耗时 */
    @Excel(name = "耗时")
    private String ksHs;

    /** 考试日期 */
    @Excel(name = "考试日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date ksTime;

    /** 开始时间 */
    @Excel(name = "开始时间")
    private String ksStart;

    /** 耗时 */
    @Excel(name = "耗时")
    private String ksEnd;

    public void setKsId(Long ksId) 
    {
        this.ksId = ksId;
    }

    public Long getKsId() 
    {
        return ksId;
    }
    public void setKsPic(String ksPic) 
    {
        this.ksPic = ksPic;
    }

    public String getKsPic() 
    {
        return ksPic;
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
    public void setKsStart(String ksStart) 
    {
        this.ksStart = ksStart;
    }

    public String getKsStart() 
    {
        return ksStart;
    }
    public void setKsEnd(String ksEnd) 
    {
        this.ksEnd = ksEnd;
    }

    public String getKsEnd() 
    {
        return ksEnd;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("ksId", getKsId())
            .append("ksPic", getKsPic())
            .append("ksUsername", getKsUsername())
            .append("ksLc", getKsLc())
            .append("ksHs", getKsHs())
            .append("ksTime", getKsTime())
            .append("ksStart", getKsStart())
            .append("ksEnd", getKsEnd())
            .toString();
    }
}
