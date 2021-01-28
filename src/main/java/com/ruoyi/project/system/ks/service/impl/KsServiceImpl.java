package com.ruoyi.project.system.ks.service.impl;

import java.util.List;

import com.ruoyi.project.system.chengji.domain.Chengji;
import com.ruoyi.project.system.chengji.mapper.ChengjiMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.ks.mapper.KsMapper;
import com.ruoyi.project.system.ks.domain.Ks;
import com.ruoyi.project.system.ks.service.IKsService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 学生体测信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-11-17
 */
@Service
public class KsServiceImpl implements IKsService 
{
    @Autowired
    private KsMapper ksMapper;

    @Autowired
    private ChengjiMapper chengjiMapper;

    /**
     * 查询学生体测信息
     * 
     * @param ksId 学生体测信息ID
     * @return 学生体测信息
     */
    @Override
    public Ks selectKsById(Long ksId)
    {
        return ksMapper.selectKsById(ksId);
    }

    /**
     * 查询学生体测信息列表
     * 
     * @param ks 学生体测信息
     * @return 学生体测信息
     */
    @Override
    public List<Ks> selectKsList(Ks ks)
    {
        return ksMapper.selectKsList(ks);
    }

    /**
     * 新增学生体测信息
     * 
     * @param ks 学生体测信息
     * @return 结果
     */
    @Override
    public int insertKs(Ks ks)
    {
        return ksMapper.insertKs(ks);
    }

    /**
     * 修改学生体测信息
     * 
     * @param ks 学生体测信息
     * @return 结果
     */
    @Override
    public int updateKs(Ks ks)
    {
        return ksMapper.updateKs(ks);
    }

    /**
     * 删除学生体测信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteKsByIds(String ids)
    {
        return ksMapper.deleteKsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生体测信息信息
     * 
     * @param ksId 学生体测信息ID
     * @return 结果
     */
    @Override
    public int deleteKsById(Long ksId)
    {
        return ksMapper.deleteKsById(ksId);
    }
    /**
     * 评分信息
     *
     * @param chengji 评分信息
     * @return 结果
     */
    @Override
    public int chengjiKs(Chengji chengji) { return chengjiMapper.insertChengji(chengji); }
}
