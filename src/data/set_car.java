package data;

import java.util.Random;

import com.DAO.CarDAO;
import com.DAO.MemberDAO;
import com.DTO.CarDTO;

public class set_car {
	public static void main(String[] args) {
		MemberDAO memberDAO = new MemberDAO();
		CarDAO cardao = new CarDAO();
		Random random = new Random();
		int hap = 50*40; //2000개 데이터 만듦
		String[] types = {"경차 ", "소형", "준중형", "중형", "대형", "SUV"};
		String[][] names = {{"모닝","레이","스파크","마티즈"},{"티볼리","스토닉","트랙스","엑센트","프라이드"},
				{"아벤떼","K3","크루즈","SM3","벨로스터"},{"쏘나타","K5","스팅어","SM6","말리부","SM5"},
				{"K7","K9","제네시스","그렌저","임팔라"},{"텔루라이드","렉스턴","쏘렌토","싼타페","투싼","스포티지"}}; 
		String[] fuels = {"휘발유", "LPG","경유"};
		String[] car_num_middle = {"하","허","호"};
		
		//랜덤함수를 이용하여 데이터 생성
		for (int i = 0; i < hap; i++) {			
			int typeN = random.nextInt(types.length);
			String car_type =  types[typeN];	//차종
			String name = names[typeN][random.nextInt(names[typeN].length)]; //차 이름
			String fuel = fuels[random.nextInt(fuels.length)];		//연료
			if(typeN == 4) { fuel ="휘발유";} //대형차일 경우 휘발유로 고정
			String car_year = random.nextInt(7)+2014 + " 년";	//년식 2014년~2020년
			
			String car_num="";		//번호판 승용차1~69, 승합차70~79 + 하, 허, 호 + 랜덤4자리
			if(typeN == 5) {
				car_num = String.format("%02d", random.nextInt(10)+70);	//승합차			
			}else {
				car_num = String.format("%02d", random.nextInt(70)+1); //승용차
			}
			car_num += car_num_middle[random.nextInt(3)];
			car_num += String.format("%04d", random.nextInt(10000)); //자동차 마지막 4자리
			
			//String img;  		//차 이미지
			int rent = 0; 			// 1 : 대여중, 0 : 대여가능
			int company_id = random.nextInt(memberDAO.countRentCompany()+1);
			
			CarDTO dto = new CarDTO();
			dto.setCar_num(car_num);
			dto.setName(name);
			dto.setCar_type(car_type);
			dto.setFuel(fuel);
			dto.setCar_year(car_year);
			dto.setRent(rent);
			dto.setCompany_id(company_id);
			
			
			try {
				int cnt = cardao.insertCar(dto);
				if (cnt > 0) {
					System.out.println("자동차 넣기 성공");
				} else {
					System.out.println("자동차 넣기 실패");
				}
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		}
		
		
		
	}

}
