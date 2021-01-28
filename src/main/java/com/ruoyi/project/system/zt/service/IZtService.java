package com.ruoyi.project.system.zt.service;

import com.ruoyi.project.system.zt.domain.Zt;
import java.util.List;

/**
 * 成绩统计及正态分布信息Service接口
 * 
 * @author ruoyi
 * @date 2020-01-03
 */
public interface IZtService 
{
    /**
     * 查询成绩统计及正态分布信息
     * 
     * @param ksId 成绩统计及正态分布信息ID
     * @return 成绩统计及正态分布信息
     */
    public Zt selectZtById(Long ksId);

    /**
     * 查询成绩统计及正态分布信息列表
     * 
     * @param zt 成绩统计及正态分布信息
     * @return 成绩统计及正态分布信息集合
     */
    public List<Zt> selectZtList(Zt zt);

    /**
     * 新增成绩统计及正态分布信息
     * 
     * @param zt 成绩统计及正态分布信息
     * @return 结果
     */
    public int insertZt(Zt zt);

    /**
     * 修改成绩统计及正态分布信息
     * 
     * @param zt 成绩统计及正态分布信息
     * @return 结果
     */
    public int updateZt(Zt zt);

    /**
     * 批量删除成绩统计及正态分布信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteZtByIds(String ids);

    /**
     * 删除成绩统计及正态分布信息信息
     * 
     * @param ksId 成绩统计及正态分布信息ID
     * @return 结果
     */
    public int deleteZtById(Long ksId);
}
