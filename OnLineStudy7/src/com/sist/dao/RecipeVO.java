package com.sist.dao;
/*
 * 자바 => 데이터 보호(캡슐화 : 변수는 은닉화 메소드를 이용해서 접근하는 방식)
 * 은닉화 => private
 * 
 * 마이바티스, 스프링
 * 변수 : public ==> 값을 설정, 값을 얻어오는 경우 ==> setXxx(), getXxx()
 * 보안 프로그램 기본
 * 
 * => 재사용 기법
 *   = 포함 클래스
 *   = 상속 (속도문제)
 *   = 재사용 => 프로그래머들이 만든 클래스, 변수 ==> 저장한느 공간(XML)
 *   = 
 * 
 */
public class RecipeVO {
	private int no;
	private String title;
	private String poster;
	private String chef;
	private String link;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getChef() {
		return chef;
	}
	public void setChef(String chef) {
		this.chef = chef;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
}
