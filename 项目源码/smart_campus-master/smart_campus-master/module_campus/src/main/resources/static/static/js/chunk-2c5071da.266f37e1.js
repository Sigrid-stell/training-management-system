(window["webpackJsonp"] = window["webpackJsonp"] || []).push([//登录
	["chunk-2c5071da"], {
		2017: function(e, t, o) {
			"use strict";
			o("cafe")
		},
		"9ed6": function(e, t, o) {
			"use strict";
			o.r(t);
			var s = function() {
					var e = this,
						t = e.$createElement,
						o = e._self._c || t;
					return o("div", {
						staticClass: "login-container"
					}, [o("el-form", {
						ref: "loginForm",//引用名
						staticClass: "login-form",//类名
						attrs: {
							model: e.loginForm,//数据对象
							rules: e.loginRules,//规则对象
							"auto-complete": "on",//自动完成状态的打开状态
							"label-position": "left"//表单标签的位置为左侧
						}
					}, [o("div", {
						staticClass: "title-container"//标题
					}, [o("h3", {
						staticClass: "title"
					}, [e._v("企业内部培训管理系统")])]), o("el-form-item", {//标题文字
						attrs: {
							prop: "username"
						}
					}, [o("span", {
						staticClass: "svg-container"
					}, [o("svg-icon", {
						attrs: {
							"icon-class": "user"
						}
					})], 1), o("el-input", {
						ref: "username",
						attrs: {
							placeholder: "用户名",//标签
							name: "username",//文本
							type: "text",//为单行输入框
							tabindex: "1",//标志号
							"auto-complete": "on"
						},
						model: {
							value: e.loginForm.username,
							callback: function(t) {
								e.$set(e.loginForm, "username", t)//设置/传入
							},
							expression: "loginForm.username"
						}
					})], 1), o("el-form-item", {
						attrs: {
							prop: "password"
						}
					}, [o("span", {
						staticClass: "svg-container"
					}, [o("svg-icon", {
						attrs: {
							"icon-class": "password"
						}
					})], 1), o("el-input", {
						key: e.passwordType,
						ref: "password",
						attrs: {
							type: e.passwordType,
							placeholder: "密码",
							name: "password",
							tabindex: "2",
							"auto-complete": "on"
						},
						nativeOn: {
							keyup: function(t) {
								return !t.type.indexOf("key") && e._k(t
									.keyCode, "enter", 13, t.key,
									"Enter") ? null : e.handleLogin(
									t)
							}
						},
						model: {
							value: e.loginForm.password,
							callback: function(t) {
								e.$set(e.loginForm, "password", t)
							},
							expression: "loginForm.password"
						}
					}), o("span", {
						staticClass: "show-pwd",
						on: {
							click: e.showPwd
						}
					}, [o("svg-icon", {
						attrs: {
							"icon-class": "password" === e
								.passwordType ? "eye" : "eye-open"//密码的显示和隐藏
						}
					})], 1)], 1), o("el-form-item", {
						attrs: {
							prop: "verifiCode"
						}
					}, [o("span", {
						staticClass: "svg-container"
					}, [o("svg-icon", {
						attrs: {
							"icon-class": "people"
						}
					})], 1), o("el-input", {
						ref: "verifiCode",
						attrs: {
							placeholder: "验证码",
							name: "verifiCode"
						},
						model: {
							value: e.loginForm.verifiCode,
							callback: function(t) {
								e.$set(e.loginForm, "verifiCode", t)
							},
							expression: "loginForm.verifiCode"
						}
					}), o("span", {
						staticClass: "show-pwd",
						on: {
							click: e.updateCode
						}
					}, [o("img", {
						attrs: {
							title: "点击切换验证码",
							src: e.codeImgUrl,
							alt: "#"
						}
					})])], 1), o("el-form-item", {
						staticClass: "user-type",
						attrs: {
							prop: "userType"//用户类型（管理员或员工）
						}
					}, [o("el-radio-group", {
						model: {
							value: e.loginForm.userType,
							callback: function(t) {
								e.$set(e.loginForm, "userType", t)
							},
							expression: "loginForm.userType"
						}
					}, [o("el-radio", {
						attrs: {
							label: 1
						}
					}, [e._v("管理员")]), o("el-radio", {
						attrs: {
							label: 3
						}
					}, [e._v("员工")])], 1)], 1), o("el-button", {
						staticStyle: {
							width: "100%",
							"margin-bottom": "30px"
						},
						attrs: {
							loading: e.loading,
							type: "primary"
						},
						nativeOn: {
							click: function(t) {
								return t.preventDefault(), e.handleLogin(t)
							}
						}
					}, [e._v("登 陆")])], 1)], 1)//按钮
				},
				r = [],
				n = (o("99af"), {
					name: "Login",
					data: function() {
						var e = function(e, t, o) {
								t.length < 2 ? o(new Error("用户名长度不能小于2位")) : o()//当用户名小于2位时用户名的提示消息
							},
							t = function(e, t, o) {//密码小于5位时的提示
								t.length < 5 ? o(new Error("密码长度不能小于5位")) : o()
							};
						return {//验证码的接口（获取）
							codeImgUrl: "".concat(this.$BASE_API, "/sms/system/getVerifiCodeImage"),
							loginForm: {
								username: null,
								password: null,
								verifiCode: null,
								userType: null
							},
							loginRules: {
								username: [{
									required: !0,//用户名不为空
									validator: e
								}],
								password: [{
									required: !0,//密码不为空
									trigger: "blur",
									validator: t
								}],
								verifiCode: [{
									required: !0,//验证码不为空
									message: "请输入验证码"
								}],
								userType: [{
									required: !0,//用户类型不为空
									message: "请选择用户类型"
								}]
							},
							loading: !1,
							passwordType: "password",
							redirect: void 0
						}
					},
					watch: {//检查路由和数据变化
						$route: {
							handler: function(e) {
								this.redirect = e.query && e.query.redirect
							},
							immediate: !0
						}
					},
					mounted: function() {
						this.updateCode()
					},
					methods: {//获取/更新验证码
						updateCode: function() {
							this.codeImgUrl = "".concat(this.$BASE_API,
								"/sms/system/getVerifiCodeImage?t=").concat(Date.now())
						},
						showPwd: function() {
							var e = this;
							"password" === this.passwordType ? this.passwordType = "text" : this
								.passwordType = "password", this.$nextTick((function() {
									e.$refs.password.focus()
								}))
						},
						handleLogin: function() {
							var e = this;
							this.$refs.loginForm.validate((function(t) {
								t && (e.loading = !0, e.$store.dispatch("user/login", e
									.loginForm).then((function() {
									e.$router.push({
										path: e.redirect || "/"
									}), e.loading = !1
								})).catch((function() {
									e.loading = !1, e.updateCode()
								})))
							}))
						}
					}
				}),
				i = n,
				a = (o("2017"), o("d00b"), o("2877")),
				l = Object(a["a"])(i, s, r, !1, null, "4132c592", null);
			t["default"] = l.exports
		},
		cafe: function(e, t, o) {},
		d00b: function(e, t, o) {
			"use strict";
			o("d01d")
		},
		d01d: function(e, t, o) {}
	}
]);
