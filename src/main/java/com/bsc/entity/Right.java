package com.bsc.entity;

import java.util.HashSet;
import java.util.Set;


public class Right {
    private Integer id;

    private String name;

    private Integer parentid;

    private String reskey;

    private String restype;

    private String resurl;

    private Integer reslevel;

    private String description;
    
    private Set<Role> roles = new HashSet<Role>(0);
	private Set<Right> childs = new HashSet<Right>(0); 

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    public String getReskey() {
        return reskey;
    }

    public void setReskey(String reskey) {
        this.reskey = reskey == null ? null : reskey.trim();
    }

    public String getRestype() {
        return restype;
    }

    public void setRestype(String restype) {
        this.restype = restype == null ? null : restype.trim();
    }

    public String getResurl() {
        return resurl;
    }

    public void setResurl(String resurl) {
        this.resurl = resurl == null ? null : resurl.trim();
    }

    public Integer getReslevel() {
        return reslevel;
    }

    public void setReslevel(Integer reslevel) {
        this.reslevel = reslevel;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public Set<Right> getChilds() {
		return childs;
	}

	public void setChilds(Set<Right> childs) {
		this.childs = childs;
	}
    
}