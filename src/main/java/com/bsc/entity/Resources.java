package com.bsc.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Resources {
    private String ids;

    private Long version;

    private String osname;

    private String ips;

    private String hostname;

    private Long cpunumber;

    private BigDecimal cpuratio;

    private Long phymemory;

    private Long phyfreememory;

    private Long jvmtotalmemory;

    private Long jvmfreememory;

    private Long jvmmaxmemory;

    private Long gccount;

    private Date createdate;

    public String getIds() {
        return ids;
    }

    public void setIds(String ids) {
        this.ids = ids == null ? null : ids.trim();
    }

    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }

    public String getOsname() {
        return osname;
    }

    public void setOsname(String osname) {
        this.osname = osname == null ? null : osname.trim();
    }

    public String getIps() {
        return ips;
    }

    public void setIps(String ips) {
        this.ips = ips == null ? null : ips.trim();
    }

    public String getHostname() {
        return hostname;
    }

    public void setHostname(String hostname) {
        this.hostname = hostname == null ? null : hostname.trim();
    }

    public Long getCpunumber() {
        return cpunumber;
    }

    public void setCpunumber(Long cpunumber) {
        this.cpunumber = cpunumber;
    }

    public BigDecimal getCpuratio() {
        return cpuratio;
    }

    public void setCpuratio(BigDecimal cpuratio) {
        this.cpuratio = cpuratio;
    }

    public Long getPhymemory() {
        return phymemory;
    }

    public void setPhymemory(Long phymemory) {
        this.phymemory = phymemory;
    }

    public Long getPhyfreememory() {
        return phyfreememory;
    }

    public void setPhyfreememory(Long phyfreememory) {
        this.phyfreememory = phyfreememory;
    }

    public Long getJvmtotalmemory() {
        return jvmtotalmemory;
    }

    public void setJvmtotalmemory(Long jvmtotalmemory) {
        this.jvmtotalmemory = jvmtotalmemory;
    }

    public Long getJvmfreememory() {
        return jvmfreememory;
    }

    public void setJvmfreememory(Long jvmfreememory) {
        this.jvmfreememory = jvmfreememory;
    }

    public Long getJvmmaxmemory() {
        return jvmmaxmemory;
    }

    public void setJvmmaxmemory(Long jvmmaxmemory) {
        this.jvmmaxmemory = jvmmaxmemory;
    }

    public Long getGccount() {
        return gccount;
    }

    public void setGccount(Long gccount) {
        this.gccount = gccount;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}