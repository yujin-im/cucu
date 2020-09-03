package com.board.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

 @Inject
 private SqlSession sql;
 
 private static String namespace = "com.board.mappers.board";

 // 게시물 목록
 @Override
 public List<BoardVO> list() throws Exception { 
  
  return sql.selectList(namespace + ".list");
 }

@Override
public void write(BoardVO vo) throws Exception {
	// TODO Auto-generated method stub
	sql.insert(namespace + ".write", vo);
}

@Override
public BoardVO view(int bno) throws Exception {
	// TODO Auto-generated method stub
	return sql.selectOne(namespace + ".view", bno); 
}

@Override
public void modify(BoardVO vo) throws Exception {
	// TODO Auto-generated method stub
	sql.update(namespace + ".modify", vo);
}

@Override
public void delete(int bno) throws Exception {
	// TODO Auto-generated method stub
	sql.delete(namespace + ".delete", bno);
}

@Override
public int count() throws Exception {
	// TODO Auto-generated method stub
	return sql.selectOne(namespace + ".count");
}

//게시물 목록 + 페이징
@Override
public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {

HashMap data = new HashMap();

data.put("displayPost", displayPost);
data.put("postNum", postNum);

return sql.selectList(namespace + ".listPage", data);
}

}