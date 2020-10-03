package com.sist.xml;
import javax.xml.bind.annotation.XmlRootElement;
import jdk.internal.dynalink.ChainedCallSite;

/*
 *  XML , JSON , CSV
 *  ===========
 *    XML 파싱 (태그나 속성값을 읽어 오는 과정)
 *    JAXB : 외부에서 데이터를 XML로 보내는 경우에 주로 사용 (많이 사용)
 *           Java와 XML응 연결 => 라이브러리 
 *    ======================================================
 *    JAXP : DOM (수정,삭제,추가 , 검색) => XML을 메모리에 저장하고 제어 
 *           속도가 늦다 (XML을 오라클 대신 사용)
 *           ***** SAX (검색=>데이터 읽기만 가능) : MyBatis,Spring
 *           ===============================================
 *            기억 => 자바에서는 에러가 거의 없다,XML파일(SAX파싱 에러)
 *            Spring => 기본구조를 직접 제작 => XML(클래스등록 => 메모리 할당=>클래스는 주는 역할)
 *            ====== 클래스관리자(생성~소멸)
 *            
 *    XML 태그 (사용자 정의) => 고정 태그가 아니다 (업체에서 제공하는 XML태그만 사용해야 한다)
 *    MyBatis : google에서 재공하는 XML만 사용(태그,속성) => XML의 태그나 속성이 어떤게 있는지 알 수 없다 
 *                                                  =================================
 *                                                  태그나 속성의 목록을 제공 => DTD
 *    ===============================================================================
 *    XML (데이터를 문서로 저장하는 목적) , JSON => 지능형웹,트워터,페이스북,인스타그램
 *                                                 오픈 API
 *    ===
 *     태그명 + 속성 
 *     데이터가 저장  
 *       = <태그>데이터 저장</태그>
 *         <td>데이터출력</td>  ==> text()
 *       = <태그 속성="데이터 저장"/>
 *         <img src="데이터저장"/> ==> attr("src")
 *     문법 : DTD안에 있는 태그나 속성만 사용 (HTML은 자유롭다)
 *     
 *     XML 데이터 읽기 
 *     ============
 *      1) JAXB
 *         자바클래스 <===> XML의 태그 매칭
 *         =======
 *          => 클래스 , 변수
 *          
 *         <rss>    ====> Rss 클래스
 *           <channel> ===> Channel 클래스
 *             <item>  ===> Item 클래스
 *             ================================
 *               <title>aaa</title>
 *               <img>aaa</img>
 *               <link>aaa</link> ==> 데이터 필요 
 *              ============================== 변수
 *             </item>
 *           </channel>
 *         </rss>
 *         태그안에 태그 ==> 클래스로 제작
 *         태그안에 문자열이 있는 경우 ==> 변수로 제작
 *         
 *         == XML데이터 => 자바변수에 저장 (언마샬) ==> XML의 데이터를 추출 
 *         == 자바변수를 => XML데이터로 출력 (마샬)
 *         
 *         오라클 
 *         ===================
 *          id    name   sex  ====> 데이터를 구분
 *         ===================
 *          aaa   hong   man  ====> 데이터
 *          bbb   shim   woman
 *         ===================
 *         
 *         데이터 
 *           = 오라클 (실시간 변경을 할 수 없다)
 *           = 웹사이트에 크롤링 (날씨,인기검색어...) => XML
 *           = 파일(txt,xml,json)
 *           
 *        ============================ 데이터를 읽어서 출력 ======== 사용자가 보기 쉽게 CSS
 *          
 */
//@xmlRootElement
public class Rss {
	private Channel channel=new Channel();

	public Channel getChannel() {
		return channel;
	}

	public void setChannel(Channel channel) {
		this.channel = channel;
	}
	

}