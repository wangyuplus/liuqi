package com.zc.dao;

import com.zc.entity.InterimReport;
import com.zc.entity.ThesisInformation;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @Author: wangyu
 * @Date: 2020/4/27 13:04
 */
public interface InterimReportDao {
    void updateInterimReport(InterimReport interimReport);

    void addInterimReport(InterimReport interimReport);

    void  deleteInterimReport(int studentId);

    InterimReport findInterimReport(int studentId);

    InterimReport findInterimReportPath(String filePath);
}
