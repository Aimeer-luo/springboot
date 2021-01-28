package com.ruoyi.project.system.ks.controller;

import java.io.IOException;
import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.project.system.chengji.domain.Chengji;
import com.ruoyi.project.system.student.domain.Student;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.system.ks.domain.Ks;
import com.ruoyi.project.system.ks.service.IKsService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 学生体测信息Controller
 * 
 * @author ruoyi
 * @date 2019-11-17
 */
@Controller
@RequestMapping("/system/ks")
public class KsController extends BaseController
{
    private String prefix = "system/ks";

    @Autowired
    private IKsService ksService;

    @RequiresPermissions("system:ks:view")
    @GetMapping()
    public String ks()
    {
        return prefix + "/ks";
    }

    /**
     * 查询学生体测信息列表
     */
    @RequiresPermissions("system:ks:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Ks ks)
    {
        startPage();
        List<Ks> list = ksService.selectKsList(ks);
        return getDataTable(list);
    }

    /**
     * 导出学生体测信息列表
     */
    @RequiresPermissions("system:ks:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Ks ks)
    {
        List<Ks> list = ksService.selectKsList(ks);
        ExcelUtil<Ks> util = new ExcelUtil<Ks>(Ks.class);
        return util.exportExcel(list, "ks");
    }

    /**
     * 新增学生体测信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生体测信息
     */
    @RequiresPermissions("system:ks:add")
    @Log(title = "学生体测信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    /*public AjaxResult addSave(Ks ks)
    {
        return toAjax(ksService.insertKs(ks));
    }*/
    public AjaxResult addSave(@RequestParam("file") MultipartFile file, Ks ks ) throws IOException
    {

        // 上传文件路径
        String ksPic = RuoYiConfig.getUploadPath();
        // 上传并返回新文件名称
        String ksName = FileUploadUtils.upload(ksPic, file);
        ks.setKsTime(DateUtils.getNowDate());
        ks.setKsPic(ksName);
        return toAjax(ksService.insertKs(ks));
    }

    /**
     * 修改学生体测信息
     */
    @GetMapping("/edit/{ksId}")
    public String edit(@PathVariable("ksId") Long ksId, ModelMap mmap)
    {
        Ks ks = ksService.selectKsById(ksId);
        mmap.put("ks", ks);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生体测信息
     */
    @RequiresPermissions("system:ks:edit")
    @Log(title = "学生体测信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    /*public AjaxResult editSave(Ks ks)
    {
        return toAjax(ksService.updateKs(ks));
    }*/
    public AjaxResult editSave(@RequestParam("file") MultipartFile file, Ks ks ) throws IOException
    {

        // 上传文件路径
        String ksPic = RuoYiConfig.getUploadPath();
        // 上传并返回新文件名称
        String ksName = FileUploadUtils.upload(ksPic, file);
        ks.setKsTime(DateUtils.getNowDate());
        ks.setKsPic(ksName);
        return toAjax(ksService.updateKs(ks));
    }

    /**
     * 删除学生体测信息
     */
    @RequiresPermissions("system:ks:remove")
    @Log(title = "学生体测信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ksService.deleteKsByIds(ids));
    }

    /**
     * 评分信息
     */
    @GetMapping("/chengji/{ksId}")
    public String chengji(@PathVariable("ksId") Long ksId, ModelMap mmap)
    {
        Ks ks = ksService.selectKsById(ksId);
        mmap.put("ks", ks);
        return prefix + "/chengji";
    }

    /**
     * 评分信息
     */
    @RequiresPermissions("system:ks:chengji")
    @Log(title = "评分", businessType = BusinessType.UPDATE)
    @PostMapping("/chengji")
    @ResponseBody
    public AjaxResult chengjiSave(Chengji chengji)
    {
        return toAjax(ksService.chengjiKs(chengji));
    }
}
