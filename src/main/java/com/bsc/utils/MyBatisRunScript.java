package com.bsc.utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.exception.InvalidConfigurationException;
import org.mybatis.generator.exception.XMLParserException;
import org.mybatis.generator.internal.DefaultShellCallback;

/**
 * myBaits自动生成工具
 * 此类配合sqlMapconfig2.xml进行使用
 * @author yuanchao
 *
 */
public class MyBatisRunScript {
	
	private static final String CONFIG_PATH = "generator.xml";
	
	public static void main(String[] args) {
		generateMbgConfiguration();
	}

	private static void generateMbgConfiguration() {
		/*
		 * Mybatis自带Generator工具生成相应东西
		 */
		List<String> warnings = new ArrayList<String>();
		boolean overwrite = true;
		ConfigurationParser cp = new ConfigurationParser(warnings);
		Configuration config = null;
		try {
			InputStream inputStream = Resources.getResourceAsStream(CONFIG_PATH);
			config = cp.parseConfiguration(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (XMLParserException e) {
			e.printStackTrace();
		}
		DefaultShellCallback callback = new DefaultShellCallback(overwrite);
		try {
			MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config,
					callback, warnings);
			myBatisGenerator.generate(null);
		} catch (InvalidConfigurationException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		System.out.println("生成Mybatis配置成功！");
	}
}
