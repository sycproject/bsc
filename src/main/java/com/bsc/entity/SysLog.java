package com.bsc.entity;

import java.util.Date;

public class SysLog {
    private String ids;

    private String loginname;

    private String ipaddress;

    private String contextpath;

    private String requestpath;

    private String requestmethod;

    private String methodname;

    private String methodremark;

    private String packagepath;

    private Date starttime;

    private Date endtime;

    private Long costtime;

    public String getIds() {
        return ids;
    }

    public void setIds(String ids) {
        this.ids = ids == null ? null : ids.trim();
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname == null ? null : loginname.trim();
    }

    public String getIpaddress() {
        return ipaddress;
    }

    public void setIpaddress(String ipaddress) {
        this.ipaddress = ipaddress == null ? null : ipaddress.trim();
    }

    public String getContextpath() {
        return contextpath;
    }

    public void setContextpath(String contextpath) {
        this.contextpath = contextpath == null ? null : contextpath.trim();
    }

    public String getRequestpath() {
        return requestpath;
    }

    public void setRequestpath(String requestpath) {
        this.requestpath = requestpath == null ? null : requestpath.trim();
    }

    public String getRequestmethod() {
        return requestmethod;
    }

    public void setRequestmethod(String requestmethod) {
        this.requestmethod = requestmethod == null ? null : requestmethod.trim();
    }

    public String getMethodname() {
        return methodname;
    }

    public void setMethodname(String methodname) {
        this.methodname = methodname == null ? null : methodname.trim();
    }

    public String getMethodremark() {
        return methodremark;
    }

    public void setMethodremark(String methodremark) {
        this.methodremark = methodremark == null ? null : methodremark.trim();
    }

    public String getPackagepath() {
        return packagepath;
    }

    public void setPackagepath(String packagepath) {
        this.packagepath = packagepath == null ? null : packagepath.trim();
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Long getCosttime() {
        return costtime;
    }

    public void setCosttime(Long costtime) {
        this.costtime = costtime;
    }
}