$(function(){
	
	
	/* 
	 * 입력box에 키보드로 뭔가를 입력할때마다 발생하는 이벤트
	 * 키보드 이벤트
	 * keydown
	 * 	키보드를 누르는 순간 발생
	 * 
	 * keypress
	 * 	글자가 입력되어서 컴퓨터로 입력되는 순간
	 *  어떤 글자가 입력되었는가를 캐취하기 위한 이벤트
	 *  
	 * keyup
	 * 	키보드에서 손을 떼는 순간 발생
	 */
	$("#io_dcode").keypress(function( event ){
		
		// 키보드에서 어떤 문자를 입력하면 event의 keyCode라는 속성에
		// 문자의 ASCII  코드값이 저장되어 전달된다.
		if(event.keyCode == 13) { // ASCII 13 : Enter 키, 28 : ESC
			let str = $(this).val()
			window.open("https://naver.com","_blank")
		}
	})
	
})
