package com.bsc.entity;

import java.util.HashSet;
import java.util.Set;


public class Role {
    private Integer id;

    private String name;

    private String rolekey;

    private String description;

    private Integer status;
    
    private Set<Right> resources = new HashSet<Right>(0);

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

    public String getRolekey() {
        return rolekey;
    }

    public void setRolekey(String rolekey) {
        this.rolekey = rolekey == null ? null : rolekey.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

	public Set<Right> getResources() {
		return resources;
	}

	public void setResources(Set<Right> resources) {
		this.resources = resources;
	}
    
    
}