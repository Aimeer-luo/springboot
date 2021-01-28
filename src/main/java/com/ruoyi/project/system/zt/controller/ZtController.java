package com.ruoyi.project.system.zt.controller;

import java.util.List;
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
import com.ruoyi.project.system.zt.domain.Zt;
import com.ruoyi.project.system.zt.service.IZtService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 成绩统计及正态分布信息Controller
 * 
 * @author ruoyi
 * @date 2020-01-03
 */
@Controller
@RequestMapping("/system/zt")
public class ZtController extends BaseController
{
    private String prefix = "system/zt";

    @Autowired
    private IZtService ztService;

    @RequiresPermissions("system:zt:view")
    @GetMapping()
    public String zt()
    {
        return prefix + "/zt";
    }

    /**
     * 查询成绩统计及正态分布信息列表
     */
    @RequiresPermissions("system:zt:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Zt zt)
    {
        startPage();
        List<Zt> list = ztService.selectZtList(zt);
        return getDataTable(list);
    }

    /**
     * 导出成绩统计及正态分布信息列表
     */
    @RequiresPermissions("system:zt:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Zt zt)
    {
        List<Zt> list = ztService.selectZtList(zt);
        ExcelUtil<Zt> util = new ExcelUtil<Zt>(Zt.class);
        return util.exportExcel(list, "zt");
    }

    /**
     * 新增成绩统计及正态分布信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存成绩统计及正态分布信息
     */
    @RequiresPermissions("system:zt:add")
    @Log(title = "成绩统计及正态分布信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Zt zt)
    {
        return toAjax(ztService.insertZt(zt));
    }

    /**
     * 修改成绩统计及正态分布信息
     */
    @GetMapping("/edit/{ksId}")
    public String edit(@PathVariable("ksId") Long ksId, ModelMap mmap)
    {
        Zt zt = ztService.selectZtById(ksId);
        mmap.put("zt", zt);
        return prefix + "/edit";
    }

    /**
     * 修改保存成绩统计及正态分布信息
     */
    @RequiresPermissions("system:zt:edit")
    @Log(title = "成绩统计及正态分布信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Zt zt)
    {
        return toAjax(ztService.updateZt(zt));
    }

    /**
     * 删除成绩统计及正态分布信息
     */
    @RequiresPermissions("system:zt:remove")
    @Log(title = "成绩统计及正态分布信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ztService.deleteZtByIds(ids));
    }
    @RequestMapping("test")
    public String test(){
        return "testPage";
    }
}
