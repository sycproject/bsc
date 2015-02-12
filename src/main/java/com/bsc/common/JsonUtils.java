package com.bsc.common;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.serializer.ValueFilter;

/**
 * 用途：和dataTable的返回json格式进行匹配的类（Json对象格式）
 * 格式：{"sEcho":1,"iTotalRecords":2,"iTotalDisplayRecords":2,"data":[{"bpLeftH":123.0,"bpLeftL":83.0,"counter":2,"createDate":"2014-10-21","hcname":"蓝卫通","id":6,"pulseRate":125,"username":"syp"},{"bpLeftH":122.0,"bpLeftL":82.0,"counter":2,"createDate":"2014-10-29","hcname":"蓝卫通","id":5,"pulseRate":120,"username":"sym"}]}
 * @author sunyuanda
 *
 */
public class JsonUtils {
	
	/**
	 * 转换List为json对象
	 * @param lists  需要转换为json格式的list对象
	 * @param sEcho  向服务器请求的次数
	 * @param iTotalRecords  过滤前总记录数
	 * @param iTotalDisplayRecords 过滤后总记录数(由于此处没有使用过滤)
	 * @return String形式的json串
	 * @author sunyuanda
	 */
	public static  String toJsonObject(List<?> lists,String sEcho,int iTotalRecords,int iTotalDisplayRecords){
		String json = null;
		String strJson =  JSONArray.toJSONString(lists);
		json = "{\"sEcho\":"+sEcho+",\"iTotalRecords\":"+iTotalRecords+",\"iTotalDisplayRecords\":"+iTotalDisplayRecords+",\"data\":"+strJson+"}";
		return json;
	}
	
	/**
	 * 通过DataTableResponse对象返回json格式的字符串
	 * @param response  封装dataTable的返回的数据对象
	 * @return String形式的json串
	 * @author sunyuanda
	 */
	public static String toJsonObject(DataTableResponse response){
		ValueFilter filter = new ValueFilter() {
		    @Override
		    public Object process(Object obj, String s, Object v) {
		    if(v==null)
		        return "";
		    return v;
		    }
		};
		if(response != null){
			//return JSON.toJSONString(response,filter);
			return JSON.toJSONString(response, filter, SerializerFeature.WriteNullStringAsEmpty);			
		}
		return null;
	}
		
	
}
