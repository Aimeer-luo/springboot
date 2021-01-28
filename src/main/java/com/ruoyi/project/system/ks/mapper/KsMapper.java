package com.ruoyi.project.system.ks.mapper;

import com.ruoyi.project.system.chengji.domain.Chengji;
import com.ruoyi.project.system.ks.domain.Ks;
import java.util.List;

/**
 * 学生体测信息Mapper接口
 * 
 * @author ruoyi
 * @date 2019-11-17
 */
public interface KsMapper 
{
    /**
     * 查询学生体测信息
     * 
     * @param ksId 学生体测信息ID
     * @return 学生体测信息
     */
    public Ks selectKsById(Long ksId);

    /**
     * 查询学生体测信息列表
     * 
     * @param ks 学生体测信息
     * @return 学生体测信息集合
     */
    public List<Ks> selectKsList(Ks ks);

    /**
     * 新增学生体测信息
     * 
     * @param ks 学生体测信息
     * @return 结果
     */
    public int insertKs(Ks ks);

    /**
     * 修改学生体测信息
     * 
     * @param ks 学生体测信息
     * @return 结果
     */
    public int updateKs(Ks ks);

    /**
     * 删除学生体测信息
     * 
     * @param ksId 学生体测信息ID
     * @return 结果
     */
    public int deleteKsById(Long ksId);

    /**
     * 批量删除学生体测信息
     * 
     * @param ksIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteKsByIds(String[] ksIds);
    /**
     * 评分信息
     *
     * @param chengji 评分信息
     * @return 结果
     */
    public int chengjiKs(Chengji chengji);
}
