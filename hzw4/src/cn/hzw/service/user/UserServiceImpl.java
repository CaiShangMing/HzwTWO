package cn.hzw.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.hzw.dao.User_roleMapper;
import cn.hzw.pojo.User_role;
@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private User_roleMapper userMapper;
	@Override
	public User_role findUser(User_role user)throws Exception {
		// TODO Auto-generated method stub
		return userMapper.selectUser(user);
	}
	@Override
	public int addUser(User_role user) throws Exception{
		// TODO Auto-generated method stub
		return userMapper.insertByUser(user);
	}
	@Override
	public int findByUserName(String username) throws Exception{
		// TODO Auto-generated method stub
		User_role registerUser=userMapper.selectByUserName(username);
		if(null!=registerUser){
			return 1;
		}
		return 0;
	}
	@Override
	public List<User_role> findAllUserLimit(Integer currentPage,Integer pageSize)throws Exception {
		// TODO Auto-generated method stub
		return userMapper.findAllUserLimit(currentPage,pageSize);
	}
	@Override
	public int findAllUser()throws Exception {
		// TODO Auto-generated method stub
		return userMapper.findAllUser();
	}
	@Override
	public User_role findById(Integer id) throws Exception{
		// TODO Auto-generated method stub
		return userMapper.findById(id);
	}
	@Override
	public int modifyUser(User_role newUser) throws Exception{
		// TODO Auto-generated method stub
		return userMapper.updateUser(newUser);
	}
	@Override
	public int delUser(Integer id)throws Exception {
		// TODO Auto-generated method stub
		return userMapper.delUser(id);
	}

}
