package com.infotop.system.account.service;

import java.io.Serializable;

import javax.annotation.PostConstruct;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springside.modules.utils.Encodes;
import com.infotop.system.account.entity.User;


public class ShiroDbRealm extends AuthorizingRealm{
	
	protected AccountService accountService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection authcToken)throws AuthenticationException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		User user = accountService.findUserByLoginName(token.getUsername());
		ShiroUser shiroUser = null;
		System.out.println("in shiro do get authentication info");
		if (user != null) {
			shiroUser = new ShiroUser(user.getId(), user.getLoginName(),user.getName());
			byte[] salt = Encodes.decodeHex(user.getSalt());
			System.out.println(getName());
			return new SimpleAuthenticationInfo(shiroUser, user.getPassword(),
					ByteSource.Util.bytes(salt), getName());
			
		} else {
			return null;
		}
	}
	
	@PostConstruct
	public void initCredentialsMatcher() {
		HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(
				AccountService.HASH_ALGORITHM);
		matcher.setHashIterations(AccountService.HASH_INTERATIONS);

		setCredentialsMatcher(matcher);
	}

	@Autowired
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}
	public static class ShiroUser implements Serializable {
		private static final long serialVersionUID = -1373760761780840081L;
		public Long id;
		public String loginName;
		public String name;
		

		public ShiroUser(Long id, String loginName, String name) {
			this.id = id;
			this.loginName = loginName;
			this.name = name;
			System.out.println("in shirodbrealm");
		}

		public String getName() {
			return name;
		}

		public Long getId() {
			return id;
		}

		public String getLoginName() {
			return loginName;
		}

		@Override
		public String toString() {
			return loginName;
		}

	
		@Override
		public int hashCode() {
			return HashCodeBuilder.reflectionHashCode(this, "loginName");
		}

		
		@Override
		public boolean equals(Object obj) {
			return EqualsBuilder.reflectionEquals(this, obj, "loginName");
		}
	}

}
