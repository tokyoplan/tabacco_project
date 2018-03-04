/**
 * 
 */

 $(document).ready(function () {
     iphone_Init();
     iphone_Init1();
     iphone_Init2();
     iphone_Init3();
 });
 
 
 
 //아이폰 움직임 초기화
 function iphone_Init() {
     $("#img_iphone").hover(function () {
         iphone_shake();
     }, function () {
         //MouseOut 시 애니메이션 Stop
         $(this).stop();
     });
 }
 
 //아이폰 쉐이크
 function iphone_shake() {
     $("#img_iphone").animate({ marginLeft: "15px" }, 50, "", function () {
         $(this)
         .animate({ marginLeft: "0px" }, 50,"", function () { 
         iphone_shake(); });
     });
 }
 
 function iphone_Init1() {
     $("#img_iphone1").hover(function () {
         iphone_shake1();
     }, function () {
         //MouseOut 시 애니메이션 Stop
         $(this).stop();
     });
 }
 
 //아이폰 쉐이크
 function iphone_shake1() {
     $("#img_iphone1").animate({ marginLeft: "15px" }, 50, "", function () {
         $(this)
         .animate({ marginLeft: "0px" }, 50, "", function () { 
         iphone_shake1(); });
     });
 }
 
 function iphone_Init2() {
     $("#img_iphone2").hover(function () {
         iphone_shake2();
     }, function () {
         //MouseOut 시 애니메이션 Stop
         $(this).stop();
     });
 }
 
 //아이폰 쉐이크
 function iphone_shake2() {
     $("#img_iphone2").animate({ marginLeft: "15px" }, 50, "", function () {
         $(this)
         .animate({ marginLeft: "0px" }, 50, "", function () { 
         iphone_shake2(); });
     });
 }
 function iphone_Init3() {
     $("#img_iphone3").hover(function () {
         iphone_shake3();
     }, function () {
         //MouseOut 시 애니메이션 Stop
         $(this).stop();
     });
 }
 
 //아이폰 쉐이크
 function iphone_shake3() {
     $("#img_iphone3").animate({ marginLeft: "15px" }, 50, "", function () {
         $(this)
         .animate({ marginLeft: "0px" }, 50, "", function () { 
         iphone_shake3(); });
     });
 }
