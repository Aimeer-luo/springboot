package com.ruoyi.project.system.chengji.controller;

import java.util.List;

import com.ruoyi.project.system.zt.domain.Zt;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.system.chengji.domain.Chengji;
import com.ruoyi.project.system.chengji.service.IChengjiService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 学生成绩信息Controller
 * 
 * @author ruoyi
 * @date 2019-12-03
 */
@Controller
@RequestMapping("/system/chengji")
public class ChengjiController extends BaseController
{
    private String prefix = "system/chengji";

    @Autowired
    private IChengjiService chengjiService;

    @RequiresPermissions("system:chengji:view")
    @GetMapping()
    public String chengji()
    {
        return prefix + "/chengji";
    }

    /**
     * 查询学生成绩信息列表
     */
    @RequiresPermissions("system:chengji:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Chengji chengji)
    {
        startPage();
        List<Chengji> list = chengjiService.selectChengjiList(chengji);
        return getDataTable(list);
    }

    /**
     * 导出学生成绩信息列表
     */
    @RequiresPermissions("system:chengji:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Chengji chengji)
    {
        List<Chengji> list = chengjiService.selectChengjiList(chengji);
        ExcelUtil<Chengji> util = new ExcelUtil<Chengji>(Chengji.class);
        return util.exportExcel(list, "chengji");
    }

    /**
     * 新增学生成绩信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生成绩信息
     */
    @RequiresPermissions("system:chengji:add")
    @Log(title = "学生成绩信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Chengji chengji)
    {
        return toAjax(chengjiService.insertChengji(chengji));
    }

    /**
     * 修改学生成绩信息
     */
    @GetMapping("/edit/{chengjiId}")
    public String edit(@PathVariable("chengjiId") Long chengjiId, ModelMap mmap)
    {
        Chengji chengji = chengjiService.selectChengjiById(chengjiId);
        mmap.put("chengji", chengji);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生成绩信息
     */
    @RequiresPermissions("system:chengji:edit")
    @Log(title = "学生成绩信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Chengji chengji)
    {
        return toAjax(chengjiService.updateChengji(chengji));
    }

    /**
     * 删除学生成绩信息
     */
    @RequiresPermissions("system:chengji:remove")
    @Log(title = "学生成绩信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(chengjiService.deleteChengjiByIds(ids));
    }

    /**
     * 修改学生成绩信息
     */
    @GetMapping("/zt/{chengjiId}")
    public String zt(@PathVariable("chengjiId") Long chengjiId, ModelMap mmap)
    {
        Chengji chengji = chengjiService.selectChengjiById(chengjiId);
        mmap.put("chengji", chengji);
        return prefix + "/zt";
    }

    /**
     * 修改保存学生成绩信息
     */
    @RequiresPermissions("system:chengji:zt")
    @Log(title = "统计", businessType = BusinessType.UPDATE)
    @PostMapping("/zt")
    @ResponseBody
    public AjaxResult ztSave(Zt zt)
    {
        return toAjax(chengjiService.ztChengji(zt));
    }
}
