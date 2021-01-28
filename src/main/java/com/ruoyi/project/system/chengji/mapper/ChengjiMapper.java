package com.ruoyi.project.system.chengji.mapper;

import com.ruoyi.project.system.chengji.domain.Chengji;
import com.ruoyi.project.system.zt.domain.Zt;

import java.util.List;

/**
 * 学生成绩信息Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-03
 */
public interface ChengjiMapper 
{
    /**
     * 查询学生成绩信息
     * 
     * @param chengjiId 学生成绩信息ID
     * @return 学生成绩信息
     */
    public Chengji selectChengjiById(Long chengjiId);

    /**
     * 查询学生成绩信息列表
     * 
     * @param chengji 学生成绩信息
     * @return 学生成绩信息集合
     */
    public List<Chengji> selectChengjiList(Chengji chengji);

    /**
     * 新增学生成绩信息
     * 
     * @param chengji 学生成绩信息
     * @return 结果
     */
    public int insertChengji(Chengji chengji);

    /**
     * 修改学生成绩信息
     * 
     * @param chengji 学生成绩信息
     * @return 结果
     */
    public int updateChengji(Chengji chengji);

    /**
     * 删除学生成绩信息
     * 
     * @param chengjiId 学生成绩信息ID
     * @return 结果
     */
    public int deleteChengjiById(Long chengjiId);

    /**
     * 批量删除学生成绩信息
     * 
     * @param chengjiIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteChengjiByIds(String[] chengjiIds);

    /**
     * 统计信息
     *
     * @param zt 统计信息
     * @return 结果
     */
    public int ztChengji(Zt zt);
}
