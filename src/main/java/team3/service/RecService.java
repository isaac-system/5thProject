package team3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team3.dao.RecDao;
import team3.vo.*;

@Service
public class RecService {
	@Autowired(required = false)
	private RecDao dao;
	
	public List<Guitar> listByStars(){
		return dao.listByStars();
	}
	public Guitar getGuitar(String guitarid) {
		return dao.getGuitar(guitarid);
	}
	public List<Review1> getGuitarReview(String guitarid) {
		return dao.getGuitarReview(guitarid);
	}
	public List<Review1> memRec(Member m){
		return dao.memRec(m);
	}
	public List<Review1> revRec(Member m){
		return dao.revRec(m);
	}
	public List<Seller> getSeller(String guitarid){
		return dao.getSeller(guitarid);
	}
	public List<Seller> mainRec(){
		return dao.mainRec();
	}
}
