package com.infotop.system.account.service;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.hibernate.service.spi.ServiceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Collections3;
import org.springside.modules.utils.Encodes;

import com.infotop.system.account.entity.User;
import com.infotop.system.account.repository.UserDao;
import com.infotop.system.account.service.ShiroDbRealm.ShiroUser;

@Component
@Transactional(readOnly = true)
public class AccountService {

	@Autowired
	private UserDao userDao;
	
	public static final String HASH_ALGORITHM = "SHA-1";
	public static final int HASH_INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;
	
	public User findUserByLoginName(String loginName) {
		return userDao.findByLoginName(loginName);
	}
	
	public User getUser(Long id) {
		return userDao.findOne(id);
	}
	
	@Transactional(readOnly = false)
	public void deleteUser(List<Long> ids) {
		List<User> test = (List<User>) this.userDao.findAll(ids);
		if (Collections3.isNotEmpty(test)) {
			for (User user : test) {
				if (isSupervisor(user)) {
					//logger.warn("操作员{}尝试删除超级管理员用户", getCurrentUserName());
					throw new ServiceException("不能删除超级管理员用户");
				} else {
					userDao.delete(user);
				}
			}
		}
		/*Map logData = Maps.newHashMap();
		logData.put("用户ID列表", ids);*/
		//businessLogger.log("USER", "删除", getCurrentUserName(), logData);
	}

	public List<User> getAllUser() {
		return (List<User>) userDao.findAll();
	}
	

	
	
	@Transactional(readOnly = false)
	public void registerUser(User user) throws NoSuchAlgorithmException {
		entryptPassword(user);
		userDao.save(user);
		//Map logData = Maps.newHashMap();
		//logData.put("user", user);
		//businessLogger.log("USER", "注册", getCurrentUserName(), logData);
	}

	@Transactional(readOnly = false)
	public void updateUser(User user) {
		if (StringUtils.isNotBlank(user.getPlainPassword())) {
			try {
				entryptPassword(user);
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
		}
		userDao.save(user);
		/*Map logData = Maps.newHashMap();
		logData.put("用户ID", user.getId());*/
		//businessLogger.log("USER", "更新", getCurrentUserName(), logData);
	}

	@Transactional(readOnly = false)
	public void deleteUser(Long id) {
		if (isSupervisor(id)) {
			//logger.warn("操作员{}尝试删除超级管理员用户", getCurrentUserName());
			throw new ServiceException("不能删除超级管理员用户");
		} else {
			userDao.delete(id);
		}
		/*Map logData = Maps.newHashMap();
		logData.put("用户ID", id);*/
		//businessLogger.log("USER", "删除", getCurrentUserName(), logData);
	}
	
	/*public List<User> findUserByUserType(int i) {
		return userDao.findByUserType(i);
	}	
	*/
	private void entryptPassword(User user) throws NoSuchAlgorithmException {
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		user.setSalt(Encodes.encodeHex(salt));
		// MessageDigest md=MessageDigest.getInstance("MD5");
		// byte[] hashPassword = md.digest(user.getPlainPassword().getBytes());
		byte[] hashPassword = Digests.sha1(user.getPlainPassword().getBytes(),
				salt, HASH_INTERATIONS);
		user.setPassword(Encodes.encodeHex(hashPassword));

	}
	
	public String getCurrentUserName() {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		return user.loginName;
	}
	private boolean isSupervisor(User user) {
		return (user.getId() != null && user.getId() == 1L);
	}
	
	private boolean isSupervisor(Long id) {
		return id == 1;
	}
}
