<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar                  responsive">
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
	</script>

	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="ace-icon fa fa-signal"></i>
			</button>

			<button class="btn btn-info">
				<i class="ace-icon fa fa-pencil"></i>
			</button>

			<!-- #section:basics/sidebar.layout.shortcuts -->
			<button class="btn btn-warning">
				<i class="ace-icon fa fa-users"></i>
			</button>

			<button class="btn btn-danger">
				<i class="ace-icon fa fa-cogs"></i>
			</button>

			<!-- /section:basics/sidebar.layout.shortcuts -->
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span>

			<span class="btn btn-info"></span>

			<span class="btn btn-warning"></span>

			<span class="btn btn-danger"></span>
		</div>
	</div><!-- /.sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li class="">
			<a data-url="page/welcome" href="${ctx }/sys/index/toUrl#page/welcome">
				<i class="menu-icon fa fa-tachometer"></i>
				<span class="menu-text"> 首页 </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-desktop"></i>
				<span class="menu-text"> 系统管理 </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/user" href="${ctx }/sys/index/toUrl#page/user">
						<i class="menu-icon fa fa-caret-right"></i>
						用户管理
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a data-url="page/role" href="${ctx }/sys/index/toUrl#page/role">
						<i class="menu-icon fa fa-caret-right"></i>
						角色管理
					</a>

					<b class="arrow"></b>
				</li>
				
				<li class="">
					<a data-url="page/right" href="${ctx }/sys/index/toUrl#page/right">
						<i class="menu-icon fa fa-caret-right"></i>
						资源管理
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/datasource" href="${ctx }/sys/index/toUrl#page/datasource">
						<i class="menu-icon fa fa-caret-right"></i>
						数据源管理
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/syslog" href="${ctx }/sys/index/toUrl#page/syslog">
						<i class="menu-icon fa fa-caret-right"></i>
						系统日志
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/treeview" href="${ctx }/sys/index/toUrl#page/treeview">
						<i class="menu-icon fa fa-caret-right"></i>
						参数管理
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/nestable-list" href="${ctx }/sys/index/toUrl#page/nestable-list">
						<i class="menu-icon fa fa-caret-right"></i>
						字典管理
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>

						Three Level Menu
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>

					<ul class="submenu">
						<li class="">
							<a href="#">
								<i class="menu-icon fa fa-leaf green"></i>
								Item #1
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="#" class="dropdown-toggle">
								<i class="menu-icon fa fa-pencil orange"></i>

								4th level
								<b class="arrow fa fa-angle-down"></b>
							</a>

							<b class="arrow"></b>

							<ul class="submenu">
								<li class="">
									<a href="#">
										<i class="menu-icon fa fa-plus purple"></i>
										Add Product
									</a>

									<b class="arrow"></b>
								</li>

								<li class="">
									<a href="#">
										<i class="menu-icon fa fa-eye pink"></i>
										View Products
									</a>

									<b class="arrow"></b>
								</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-list"></i>
				<span class="menu-text"> Tables </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/tables" href="${ctx }/sys/index/toUrl#page/tables">
						<i class="menu-icon fa fa-caret-right"></i>
						Simple &amp; Dynamic
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/jqgrid" href="${ctx }/sys/index/toUrl#page/jqgrid">
						<i class="menu-icon fa fa-caret-right"></i>
						jqGrid plugin
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> Forms </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/form-elements" href="${ctx }/sys/index/toUrl#page/form-elements">
						<i class="menu-icon fa fa-caret-right"></i>
						Form Elements
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/form-wizard" href="${ctx }/sys/index/toUrl#page/form-wizard">
						<i class="menu-icon fa fa-caret-right"></i>
						Wizard &amp; Validation
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/wysiwyg" href="${ctx }/sys/index/toUrl#page/wysiwyg">
						<i class="menu-icon fa fa-caret-right"></i>
						Wysiwyg &amp; Markdown
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/dropzone" href="${ctx }/sys/index/toUrl#page/dropzone">
						<i class="menu-icon fa fa-caret-right"></i>
						Dropzone File Upload
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a data-url="page/widgets" href="${ctx }/sys/index/toUrl#page/widgets">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text"> Widgets </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a data-url="page/calendar" href="${ctx }/sys/index/toUrl#page/calendar">
				<i class="menu-icon fa fa-calendar"></i>

				<span class="menu-text">
					Calendar

					<!-- #section:basics/sidebar.layout.badge -->
					<span class="badge badge-transparent tooltip-error" title="2 Important Events">
						<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
					</span>

					<!-- /section:basics/sidebar.layout.badge -->
				</span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a data-url="page/gallery" href="${ctx }/sys/index/toUrl#page/gallery">
				<i class="menu-icon fa fa-picture-o"></i>
				<span class="menu-text"> Gallery </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-tag"></i>
				<span class="menu-text"> More Pages </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/profile" href="${ctx }/sys/index/toUrl#page/profile">
						<i class="menu-icon fa fa-caret-right"></i>
						User Profile
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/inbox" href="${ctx }/sys/index/toUrl#page/inbox">
						<i class="menu-icon fa fa-caret-right"></i>
						Inbox
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/pricing" href="${ctx }/sys/index/toUrl#page/pricing">
						<i class="menu-icon fa fa-caret-right"></i>
						Pricing Tables
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/invoice" href="${ctx }/sys/index/toUrl#page/invoice">
						<i class="menu-icon fa fa-caret-right"></i>
						Invoice
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/timeline" href="${ctx }/sys/index/toUrl#page/timeline">
						<i class="menu-icon fa fa-caret-right"></i>
						Timeline
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/email" href="${ctx }/sys/index/toUrl#page/email">
						<i class="menu-icon fa fa-caret-right"></i>
						Email Templates
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/login" href="../login.html">
						<i class="menu-icon fa fa-caret-right"></i>
						Login &amp; Register
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-file-o"></i>

				<span class="menu-text">
					Other Pages

					<!-- #section:basics/sidebar.layout.badge -->
					<span class="badge badge-primary">5</span>

					<!-- /section:basics/sidebar.layout.badge -->
				</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/faq" href="${ctx }/sys/index/toUrl#page/faq">
						<i class="menu-icon fa fa-caret-right"></i>
						FAQ
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/error-404" href="${ctx }/sys/index/toUrl#page/error-404">
						<i class="menu-icon fa fa-caret-right"></i>
						Error 404
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/error-500" href="${ctx }/sys/index/toUrl#page/error-500">
						<i class="menu-icon fa fa-caret-right"></i>
						Error 500
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/grid" href="${ctx }/sys/index/toUrl#page/grid">
						<i class="menu-icon fa fa-caret-right"></i>
						Grid
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/blank" href="${ctx }/sys/index/toUrl#page/blank">
						<i class="menu-icon fa fa-caret-right"></i>
						Blank Page
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
	</ul><!-- /.nav-list -->

	<!-- #section:basics/sidebar.layout.minimize -->
	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>

	<!-- /section:basics/sidebar.layout.minimize -->
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
	</script>
</div>
<!-- /section:basics/sidebar -->