package mapper;

import java.util.List;

import domain.TimeVO;

public interface TimeMapper {
	public List<TimeVO> nTime() throws Exception;
}
