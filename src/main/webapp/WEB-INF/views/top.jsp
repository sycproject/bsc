<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- #section:basics/sidebar.mobile.toggle -->
<button type="button" class="navbar-toggle menu-toggler pull-left"
	id="menu-toggler">
	<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

	<span class="icon-bar"></span> <span class="icon-bar"></span>
</button>

<!-- /section:basics/sidebar.mobile.toggle -->
<div class="navbar-header pull-left">
	<!-- #section:basics/navbar.layout.brand -->
	<a href="#" class="navbar-brand"> <small> <i
			class="fa fa-leaf"></i> 蓝卫通健康中心
	</small>
	</a>

	<!-- /section:basics/navbar.layout.brand -->

	<!-- #section:basics/navbar.toggle -->

	<!-- /section:basics/navbar.toggle -->
</div>

<!-- #section:basics/navbar.dropdown -->
<div class="navbar-buttons navbar-header pull-right" role="navigation">
	<ul class="nav ace-nav">

		<!-- #section:basics/navbar.user_menu -->
		<li class="light-blue"><a data-toggle="dropdown" href="#"
			class="dropdown-toggle"> <img class="nav-user-photo"
				src="${ctx}/ui/assets/avatars/user.jpg" alt="Jason's Photo" /> <span
				class="user-info"> <small>Welcome,</small> Jason
			</span> <i class="ace-icon fa fa-caret-down"></i>
		</a>

			<ul
				class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
				<li><a href="#"> <i class="ace-icon fa fa-cog"></i> 设置
				</a></li>

				<li><a href="../profile.html"> <i
						class="ace-icon fa fa-user"></i> 用户信息
				</a></li>

				<li class="divider"></li>

				<li><a href="#"> <i class="ace-icon fa fa-power-off"></i>
						注销
				</a></li>
			</ul></li>

		<!-- /section:basics/navbar.user_menu -->
	</ul>
</div>
<!-- /section:basics/navbar.dropdown -->