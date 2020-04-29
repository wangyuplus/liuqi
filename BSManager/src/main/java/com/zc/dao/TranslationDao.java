package com.zc.dao;

import com.zc.entity.InterimReport;
import com.zc.entity.Translation;

/**
 * @Author: wangyu
 * @Date: 2020/4/28 17:40
 */
public interface TranslationDao {
    void updateTranslation(Translation translation);

    void addTranslation(Translation translation);

    void  deleteTranslation(int studentId);

    Translation findTranslation(int studentId);

    Translation findTranslationPath(String path);
}
