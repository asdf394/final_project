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
		int hap = 50*40; //2000�� ������ ����
		String[] types = {"���� ", "����", "������", "����", "����", "SUV"};
		String[][] names = {{"���","����","����ũ","��Ƽ��"},{"Ƽ����","�����","Ʈ����","����Ʈ","�����̵�"},
				{"�ƺ���","K3","ũ����","SM3","���ν���"},{"�Ÿ","K5","���þ�","SM6","������","SM5"},
				{"K7","K9","���׽ý�","�׷���","���ȶ�"},{"�ڷ���̵�","������","���","��Ÿ��","����","����Ƽ��"}}; 
		String[] fuels = {"�ֹ���", "LPG","����"};
		String[] car_num_middle = {"��","��","ȣ"};
		
		//�����Լ��� �̿��Ͽ� ������ ����
		for (int i = 0; i < hap; i++) {			
			int typeN = random.nextInt(types.length);
			String car_type =  types[typeN];	//����
			String name = names[typeN][random.nextInt(names[typeN].length)]; //�� �̸�
			String fuel = fuels[random.nextInt(fuels.length)];		//����
			if(typeN == 4) { fuel ="�ֹ���";} //�������� ��� �ֹ����� ����
			String car_year = random.nextInt(7)+2014 + " ��";	//��� 2014��~2020��
			
			String car_num="";		//��ȣ�� �¿���1~69, ������70~79 + ��, ��, ȣ + ����4�ڸ�
			if(typeN == 5) {
				car_num = String.format("%02d", random.nextInt(10)+70);	//������			
			}else {
				car_num = String.format("%02d", random.nextInt(70)+1); //�¿���
			}
			car_num += car_num_middle[random.nextInt(3)];
			car_num += String.format("%04d", random.nextInt(10000)); //�ڵ��� ������ 4�ڸ�
			
			//String img;  		//�� �̹���
			int rent = 0; 			// 1 : �뿩��, 0 : �뿩����
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
					System.out.println("�ڵ��� �ֱ� ����");
				} else {
					System.out.println("�ڵ��� �ֱ� ����");
				}
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		}
		
		
		
	}

}
