package zoqabel
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import com.company.ui.Vovoj;
   import bamozifaw.Lyh;
   import jediwip.Kybidu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.text.TextFieldAutoSize;
   import flash.events.TextEvent;
   import flash.events.FocusEvent;
   import flash.events.Event;
   import mukyrosu.Qanyduk;
   import flash.filters.DropShadowFilter;
   import komi.Vibemod;


   public class DateField extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function DateField() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.mynatybow=new Lyh();
         this.qykefybuv=new Date().getFullYear();
         this.label=new Guzowoja().setSize(18).setColor(11776947);
         this.label.setBold(true);
         this.label.setStringBuilder(new Kybidu().setParams(name));
         this.label.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.label);
         this.jahufeqi=new Vovoj(20,wokijeny,true,35,30);
         this.jahufeqi.restrict=cikesagyc;
         this.jahufeqi.maxChars=2;
         this.jahufeqi.y=30;
         this.jahufeqi.x=6;
         this.jahufeqi.border=false;
         this.jahufeqi.dog();
         this.jahufeqi.addEventListener(TextEvent.TEXT_INPUT,this.lydenajo);
         this.jahufeqi.addEventListener(FocusEvent.FOCUS_OUT,this.tiny);
         this.jahufeqi.addEventListener(Event.CHANGE,this.tesanigur);
         this.zeladofop=this.zifoqo(this.jahufeqi,Vibemod.kawiharig);
         addChild(this.zeladofop);
         addChild(this.jahufeqi);
         this.days=new Vovoj(20,wokijeny,true,35,30);
         this.days.restrict=cikesagyc;
         this.days.maxChars=2;
         this.days.y=30;
         this.days.x=63;
         this.days.border=false;
         this.days.dog();
         this.days.addEventListener(TextEvent.TEXT_INPUT,this.migelan);
         this.days.addEventListener(FocusEvent.FOCUS_OUT,this.vomihe);
         this.days.addEventListener(Event.CHANGE,this.mewohegyd);
         this.puv=this.zifoqo(this.days,Vibemod.guwid);
         addChild(this.puv);
         addChild(this.days);
         this.lezysi=new Vovoj(20,wokijeny,true,55,30);
         this.lezysi.restrict=cikesagyc;
         this.lezysi.maxChars=4;
         this.lezysi.y=30;
         this.lezysi.x=118;
         this.lezysi.border=false;
         this.lezysi.dog();
         this.lezysi.restrict=cikesagyc;
         this.lezysi.addEventListener(TextEvent.TEXT_INPUT,this.hagatutu);
         this.lezysi.addEventListener(Event.CHANGE,this.tytutijy);
         this.vasiqopi=this.zifoqo(this.lezysi,Vibemod.surinibyh);
         addChild(this.vasiqopi);
         addChild(this.lezysi);
         this.nis(false);
         return;
      }

      private static const filol:uint = 3355443;

      private static const cesagi:uint = 16549442;

      private static const dapa:uint = 4539717;

      private static const wokijeny:uint = 11776947;

      private static const cikesagyc:String = "1234567890";

      private static const gezik:uint = 5592405;

      public var label:Guzowoja;

      public var days:Vovoj;

      public var jahufeqi:Vovoj;

      public var lezysi:Vovoj;

      private var puv:Guzowoja;

      private var zeladofop:Guzowoja;

      private var vasiqopi:Guzowoja;

      private var qykefybuv:int;

      private var mynatybow:Lyh;

      public function setTitle(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.label.setStringBuilder(new Kybidu().setParams(param1));
         return;
      }

      public function nis(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cuzeke(this.jahufeqi,0,0,param1);
         this.cuzeke(this.days,0,0,param1);
         this.cuzeke(this.lezysi,0,0,param1);
         return;
      }

      private function cuzeke(param1:Vovoj, param2:int, param3:int, param4:Boolean) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:uint = param4?cesagi:dapa;
         graphics.lineStyle(2,_loc5_,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         graphics.beginFill(filol,1);
         graphics.drawRect(param1.x-param2-5,param1.y-param3,param1.width+param2*2,param1.height+param3*2);
         graphics.endFill();
         graphics.lineStyle();
         return;
      }

      private function zifoqo(param1:Vovoj, param2:String) : Guzowoja {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Guzowoja = new Guzowoja().setSize(16).setColor(gezik);
         _loc3_.setTextWidth(param1.width+4).setTextHeight(param1.height);
         _loc3_.x=param1.x-6;
         _loc3_.y=param1.y+3;
         _loc3_.setStringBuilder(new Kybidu().setParams(param2));
         _loc3_.setAutoSize(TextFieldAutoSize.CENTER);
         return _loc3_;
      }

      private function lydenajo(param1:TextEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.jahufeqi.text+param1.text;
         var _loc3_:int = int(_loc2_);
         if(!(_loc2_=="0")&&!this.mynatybow.teru(_loc3_))
         {
            param1.preventDefault();
         }
         return;
      }

      private function tiny(param1:FocusEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = int(this.jahufeqi.text);
         if(_loc2_<10&&!(this.days.text==""))
         {
            this.jahufeqi.text="0"+_loc2_.toString();
         }
         return;
      }

      private function tesanigur(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zeladofop.visible=!this.jahufeqi.text;
         return;
      }

      private function migelan(param1:TextEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.days.text+param1.text;
         var _loc3_:int = int(_loc2_);
         if(!(_loc2_=="0")&&!this.mynatybow.roduna(_loc3_))
         {
            param1.preventDefault();
         }
         return;
      }

      private function vomihe(param1:FocusEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = int(this.days.text);
         if(_loc2_<10&&!(this.days.text==""))
         {
            this.days.text="0"+_loc2_.toString();
         }
         return;
      }

      private function mewohegyd(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.puv.visible=!this.days.text;
         return;
      }

      private function hagatutu(param1:TextEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.lezysi.text+param1.text;
         var _loc3_:int = this.vyjico(_loc2_);
         if(_loc3_>this.qykefybuv)
         {
            param1.preventDefault();
         }
         return;
      }

      private function vyjico(param1:String) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         while(param1.length<4)
         {
            param1=param1+"0";
         }
         return int(param1);
      }

      private function tytutijy(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vasiqopi.visible=!this.lezysi.text;
         return;
      }

      public function dacuceja() : Boolean {
         var _loc1_:int = int(this.jahufeqi.text);
         var _loc2_:int = int(this.days.text);
         var _loc3_:int = int(this.lezysi.text);
         return this.mynatybow.dacuceja(_loc1_,_loc2_,_loc3_,100);
      }

      public function bekezu() : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = this.nep(this.jahufeqi.text,2);
         var _loc2_:String = this.nep(this.days.text,2);
         var _loc3_:String = this.nep(this.lezysi.text,4);
         return _loc1_+"/"+_loc2_+"/"+_loc3_;
      }

      private function nep(param1:String, param2:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         while(param1.length<param2)
         {
            param1="0"+param1;
         }
         return param1;
      }

      public function qukahew() : Qanyduk {
         return this.label.textChanged;
      }
   }

}