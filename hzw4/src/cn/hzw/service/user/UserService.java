package cn.hzw.service.user;

import java.util.List;

import cn.hzw.pojo.User_role;

public interface UserService {

	public User_role findUser(User_role user)throws Exception;
	public int addUser(User_role user)throws Exception;
	public int findByUserName(String username)throws Exception;
	public List<User_role> findAllUserLimit(Integer currentPage,Integer pageSize)throws Exception;
	public int findAllUser()throws Exception;
	public User_role findById(Integer id)throws Exception;
	public int modifyUser(User_role newUser)throws Exception;
	public int delUser(Integer id)throws Exception;
}
