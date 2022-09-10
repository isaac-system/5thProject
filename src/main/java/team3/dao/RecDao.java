package team3.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team3.vo.*;

@Repository
public interface RecDao {
	public List<Guitar> listByStars();
	public Guitar getGuitar(String guitarid);
	public List<Review1> getGuitarReview(String guitarid);
	public List<Review1> memRec(Member m);
	public List<Review1> revRec(Member m);
	public List<Seller> getSeller(String guitarid);
	public List<Seller> mainRec();
}
