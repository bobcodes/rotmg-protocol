package johazoq
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import com.company.ui.Sytubyvyg;
   import sygumagu.Genuqo;
   import nec.Sire;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.text.TextFieldAutoSize;
   import flash.events.TextEvent;
   import flash.events.FocusEvent;
   import flash.events.Event;
   import tulunyno.Hugyqufyq;
   import flash.filters.DropShadowFilter;
   import aaa.rotmg.i18n.I18nKeys;


   public class DateField extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function DateField() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.vasido=new Genuqo();
         this.vilaq=new Date().getFullYear();
         this.label=new Lufub().setSize(18).setColor(11776947);
         this.label.setBold(true);
         this.label.setStringBuilder(new Sire().setParams(name));
         this.label.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.label);
         this.tole=new Sytubyvyg(20,salywoju,true,35,30);
         this.tole.restrict=cawyjo;
         this.tole.maxChars=2;
         this.tole.y=30;
         this.tole.x=6;
         this.tole.border=false;
         this.tole.nuji();
         this.tole.addEventListener(TextEvent.TEXT_INPUT,this.mufoq);
         this.tole.addEventListener(FocusEvent.FOCUS_OUT,this.ridybanos);
         this.tole.addEventListener(Event.CHANGE,this.lyqutiwe);
         this.vebuz=this.fapesilah(this.tole,I18nKeys.cuketeqiq);
         addChild(this.vebuz);
         addChild(this.tole);
         this.days=new Sytubyvyg(20,salywoju,true,35,30);
         this.days.restrict=cawyjo;
         this.days.maxChars=2;
         this.days.y=30;
         this.days.x=63;
         this.days.border=false;
         this.days.nuji();
         this.days.addEventListener(TextEvent.TEXT_INPUT,this.poziti);
         this.days.addEventListener(FocusEvent.FOCUS_OUT,this.norolego);
         this.days.addEventListener(Event.CHANGE,this.lyfywaj);
         this.keqakufid=this.fapesilah(this.days,I18nKeys.kus);
         addChild(this.keqakufid);
         addChild(this.days);
         this.buruke=new Sytubyvyg(20,salywoju,true,55,30);
         this.buruke.restrict=cawyjo;
         this.buruke.maxChars=4;
         this.buruke.y=30;
         this.buruke.x=118;
         this.buruke.border=false;
         this.buruke.nuji();
         this.buruke.restrict=cawyjo;
         this.buruke.addEventListener(TextEvent.TEXT_INPUT,this.qynacupes);
         this.buruke.addEventListener(Event.CHANGE,this.sywovo);
         this.pelol=this.fapesilah(this.buruke,I18nKeys.jybotoj);
         addChild(this.pelol);
         addChild(this.buruke);
         this.pimaq(false);
         return;
      }

      private static const zysohygo:uint = 3355443;

      private static const ryduvizyz:uint = 16549442;

      private static const zileb:uint = 4539717;

      private static const salywoju:uint = 11776947;

      private static const cawyjo:String = "1234567890";

      private static const byneqohyw:uint = 5592405;

      public var label:Lufub;

      public var days:Sytubyvyg;

      public var tole:Sytubyvyg;

      public var buruke:Sytubyvyg;

      private var keqakufid:Lufub;

      private var vebuz:Lufub;

      private var pelol:Lufub;

      private var vilaq:int;

      private var vasido:Genuqo;

      public function setTitle(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.label.setStringBuilder(new Sire().setParams(param1));
         return;
      }

      public function pimaq(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lynyhobum(this.tole,0,0,param1);
         this.lynyhobum(this.days,0,0,param1);
         this.lynyhobum(this.buruke,0,0,param1);
         return;
      }

      private function lynyhobum(param1:Sytubyvyg, param2:int, param3:int, param4:Boolean) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:uint = param4?ryduvizyz:zileb;
         graphics.lineStyle(2,_loc5_,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         graphics.beginFill(zysohygo,1);
         graphics.drawRect(param1.x-param2-5,param1.y-param3,param1.width+param2*2,param1.height+param3*2);
         graphics.endFill();
         graphics.lineStyle();
         return;
      }

      private function fapesilah(param1:Sytubyvyg, param2:String) : Lufub {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Lufub = new Lufub().setSize(16).setColor(byneqohyw);
         _loc3_.setTextWidth(param1.width+4).setTextHeight(param1.height);
         _loc3_.x=param1.x-6;
         _loc3_.y=param1.y+3;
         _loc3_.setStringBuilder(new Sire().setParams(param2));
         _loc3_.setAutoSize(TextFieldAutoSize.CENTER);
         return _loc3_;
      }

      private function mufoq(param1:TextEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.tole.text+param1.text;
         var _loc3_:int = int(_loc2_);
         if(!(_loc2_=="0")&&!this.vasido.volalecur(_loc3_))
         {
            param1.preventDefault();
         }
         return;
      }

      private function ridybanos(param1:FocusEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = int(this.tole.text);
         if(_loc2_<10&&!(this.days.text==""))
         {
            this.tole.text="0"+_loc2_.toString();
         }
         return;
      }

      private function lyqutiwe(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vebuz.visible=!this.tole.text;
         return;
      }

      private function poziti(param1:TextEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = this.days.text+param1.text;
         var _loc3_:int = int(_loc2_);
         if(!(_loc2_=="0")&&!this.vasido.qiqyqewij(_loc3_))
         {
            param1.preventDefault();
         }
         return;
      }

      private function norolego(param1:FocusEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = int(this.days.text);
         if(_loc2_<10&&!(this.days.text==""))
         {
            this.days.text="0"+_loc2_.toString();
         }
         return;
      }

      private function lyfywaj(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.keqakufid.visible=!this.days.text;
         return;
      }

      private function qynacupes(param1:TextEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.buruke.text+param1.text;
         var _loc3_:int = this.faga(_loc2_);
         if(_loc3_>this.vilaq)
         {
            param1.preventDefault();
         }
         return;
      }

      private function faga(param1:String) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         while(param1.length<4)
         {
            param1=param1+"0";
         }
         return int(param1);
      }

      private function sywovo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pelol.visible=!this.buruke.text;
         return;
      }

      public function tamufaf() : Boolean {
         var _loc1_:int = int(this.tole.text);
         var _loc2_:int = int(this.days.text);
         var _loc3_:int = int(this.buruke.text);
         return this.vasido.tamufaf(_loc1_,_loc2_,_loc3_,100);
      }

      public function gurupin() : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = this.hegysyzo(this.tole.text,2);
         var _loc2_:String = this.hegysyzo(this.days.text,2);
         var _loc3_:String = this.hegysyzo(this.buruke.text,4);
         return _loc1_+"/"+_loc2_+"/"+_loc3_;
      }

      private function hegysyzo(param1:String, param2:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         while(param1.length<param2)
         {
            param1="0"+param1;
         }
         return param1;
      }

      public function ratijuje() : Hugyqufyq {
         return this.label.textChanged;
      }
   }

}