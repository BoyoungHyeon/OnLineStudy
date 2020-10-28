package com.sist.manager;

import org.jsoup.Jsoup;
import javafx.application.*;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import com.sist.dao.WorkDAO;
import com.sist.dao.WorkBVO;

public class InManager2 {
    public void workdAllData()
    {
    	WorkDAO dao=new WorkDAO();
    	try{
    		int k=2001;
    		// for(int i=1;i<=101;i+=50)
    		// https://www.melon.com/genre/song_list.htm?gnrCode=GN0200#params%5BgnrCode%5D=GN0200&params%5BdtlGnrCode%5D=&params%5BorderBy%5D=NEW&params%5BsteadyYn%5D=N&po=pageObj&startIndex="+i
    		Document doc=Jsoup.connect("http://www.saramin.co.kr/zf_user/jobs/hot100").get();
    		Elements link=doc.select("a.str_tit");
    		System.out.println("link 사이즈"+link.size());
    		for(int i=0;i<link.size();i++)
    		{
    			try {
//    			String httplink=link.get(i).attr("href");
//	    		Document doc2=Jsoup.connect("http://www.saramin.co.kr"+httplink).get();
	    		
	    		Elements lname=doc.select("a.str_tit");
	    		Elements ltitle=doc.select("div.part_top h4.recruit_name");
	    		Elements lapp_qual2=doc.select("div.col p.education");
	    		Elements lapp_qual1=doc.select("div.col p.career");
	    		Elements lapp_con=doc.select("div.col p.employment_type");
	    		Elements ldeadline=doc.select("p.deadlines");
	    		Elements lsal=doc.select("div.col p.salary");
	    		Elements lworkspace=doc.select("div.col p.work_place");
	    		String lname2="";
	    		String ltitle2="";
	    		String lapp_qual12="";
	    		String lapp_qual22="";
	    		String lapp_con2="";
	    		String ldeadline2="";
	    		String lsal2="";
	    		String lworkspace2="";
	    		
	    		System.out.println("번호 :"+k);
//	    		System.out.println("링크 출력"+httplink);
	    		try {
	    		System.out.println("기업명: "+lname.get(i).attr("title"));
	    		lname2=lname.get(i).attr("title");
	    		}catch (Exception e) {
	    			System.out.println("상세 페이지 참고");
	    			lname2="상세 페이지 참고";
	    		}
	    		try {
	    		System.out.println("기업 공고: "+ltitle.get(i).text());
	    		ltitle2=ltitle.get(i).text();
	    		}catch (Exception e) {
	    			System.out.println("공고 페이지 참고");
	    			ltitle2="공고 페이지 참고";
	    		}
	    		
	    		try {
	    		System.out.println("경력 조건 : "+lapp_qual1.get(i).text());
	    		lapp_qual12=lapp_qual1.get(i).text();
	    		}catch (Exception e) {
	    			System.out.println("경력 무관");
	    			lapp_qual12="경력 무관";
	    		}
	    		
	    		try {
	    		System.out.println("학력 조건 : "+lapp_qual2.get(i).text());
	    		lapp_qual22=lapp_qual2.get(i).text();
	    		}catch (Exception e) {
	    			System.out.println("학력 무관");
	    			lapp_qual22="학력 무관";
	    		}
	    		
	    		try {
	    		System.out.println("근무 조건: "+lapp_con.get(i).text());
	    		lapp_con2=lapp_con.get(i).text();
	    		}catch (Exception e) {
	    			System.out.println("무관");
	    			lapp_con2="무관";
	    		}
	    		
	    		try {
	    		System.out.println("마감일: "+ldeadline.get(i).text());
	    		ldeadline2=ldeadline.get(i).text();
	    		}catch (Exception e) {
	    			System.out.println("상시채용");
	    			ldeadline2="상시채용";
	    		}
	    		
	    		try {
	    		System.out.println("급여: "+lsal.get(i).text());
	    		lsal2=lsal.get(i).text();
	    		}catch (Exception e) {
	    			System.out.println("급여 협의");
	    			lsal2="?";
	    		}
	    		
	    		try {
	    		System.out.println("근무지역: "+lworkspace.get(i).text());
	    		lworkspace2=lworkspace.get(i).text();
	    		}catch (Exception e) {
	    			lworkspace2="지역 협의";
	    		}
	    		
	    		
	    		System.out.println("====================================");
	    				
	    				WorkBVO vo=new WorkBVO();
	    				vo.setL_no(k);
	    				vo.setLcateno(21);
//	    				vo.setLdo(ldo.attr("src"));
	    				vo.setLname(lname2);
	    				vo.setLtitle(ltitle2);
	    				vo.setLapp_qual1(lapp_qual12);
	    				vo.setLapp_qual2(lapp_qual22);
	    				vo.setLapp_con(lapp_con2);
	    				vo.setLdeadline(ldeadline2);
	    				vo.setLsal(lsal2);
	    				vo.setLworkspace(lworkspace2);
	    				
	    			    // DAO로 전송 
	    			    dao.WorkInsert(vo);
	    			    k++;
	    			    Thread.sleep(200);
	    			}catch(Exception ex){
	    				ex.printStackTrace();
	    			}
	    		}
	    		System.out.println("End...");   		
    	}catch(Exception ex){
    		ex.printStackTrace();
    	}
    }
    public static void main(String[] args) {
		// TODO Auto-generated method stub
        InManager2 m=new InManager2();
        //m.musicAllData();
        m.workdAllData();
	}
}