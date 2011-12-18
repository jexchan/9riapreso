package com.jchen.flexunit {
	import com.jchen.service.SimpleMathService;
	
	import org.hamcrest.assertThat;
	import org.hamcrest.object.equalTo;

    public class SimpleMathServiceTest {
    	private var simpleMathService:SimpleMathService;
		
        [Before]
		public function setUp():void {
			simpleMathService = new SimpleMathService();
		}
		
		[After]
		public function tearDown():void {
			simpleMathService = null;
		}
		
		[Test]
		public function testAdd():void {
			assertThat(8, equalTo(simpleMathService.add(3, 5)));
		}
    }
}
