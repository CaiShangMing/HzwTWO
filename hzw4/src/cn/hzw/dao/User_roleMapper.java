package cn.hzw.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hzw.pojo.User_role;

public interface User_roleMapper {
	//通过用户名和密码查询用户
   public User_role selectUser(User_role user)throws Exception ;
   //添加新的用户
   public int insertByUser(User_role user)throws Exception ;
   //通过用户名查询用户，以此判断该用户名是否存在
   public User_role selectByUserName(@Param("username")String username)throws Exception ;
   //查询用户进行分页
   public List<User_role> findAllUserLimit(@Param("currentPage")Integer currentPage,@Param("pageSize")Integer pageSize)throws Exception ;
   //查询用户以确定总页数
   public int findAllUser()throws Exception ;
   //通过用户ID查询用户，只有用户ID不能修改
   public User_role findById(Integer id)throws Exception ;
   //更改用户信息
   public int updateUser(User_role newUser)throws Exception ;
   //通过ID删除用户
   public int delUser(Integer id)throws Exception ;
}