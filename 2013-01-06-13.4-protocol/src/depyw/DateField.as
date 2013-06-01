package depyw
{
[CLASS1062]   import flash.display.Sprite;
   import pudev.Capitu;
   import com.company.ui.Remyl;
   import sowojotac.Sow;
   import totuhare.Zufi;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.text.TextFieldAutoSize;
   import flash.events.TextEvent;
   import flash.events.FocusEvent;
   import flash.events.Event;
   import tinava.Dab;
   import flash.filters.DropShadowFilter;
   import haqakel.Kefyfa;


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
         this.dybuvy=new Sow();
         this.gyqon=new Date().getFullYear();
         this.label=new Capitu().setSize(18).setColor(11776947);
         this.label.setBold(true);
         this.label.setStringBuilder(new Zufi().setParams(name));
         this.label.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.label);
         this.zifag=new Remyl(20,qomofovi,true,35,30);
         this.zifag.restrict=nuvatydoh;
         this.zifag.maxChars=2;
         this.zifag.y=30;
         this.zifag.x=6;
         this.zifag.border=false;
         this.zifag.mojymak();
         this.zifag.addEventListener(TextEvent.TEXT_INPUT,this.horiryfin);
         this.zifag.addEventListener(FocusEvent.FOCUS_OUT,this.fiwupinu);
         this.zifag.addEventListener(Event.CHANGE,this.tovo);
         this.dutuduseh=this.mupipin(this.zifag,Kefyfa.meb);
         addChild(this.dutuduseh);
         addChild(this.zifag);
         this.days=new Remyl(20,qomofovi,true,35,30);
         this.days.restrict=nuvatydoh;
         this.days.maxChars=2;
         this.days.y=30;
         this.days.x=63;
         this.days.border=false;
         this.days.mojymak();
         this.days.addEventListener(TextEvent.TEXT_INPUT,this.mid);
         this.days.addEventListener(FocusEvent.FOCUS_OUT,this.jodenu);
         this.days.addEventListener(Event.CHANGE,this.hyviros);
         this.bityzinol=this.mupipin(this.days,Kefyfa.sihify);
         addChild(this.bityzinol);
         addChild(this.days);
         this.wyfufi=new Remyl(20,qomofovi,true,55,30);
         this.wyfufi.restrict=nuvatydoh;
         this.wyfufi.maxChars=4;
         this.wyfufi.y=30;
         this.wyfufi.x=118;
         this.wyfufi.border=false;
         this.wyfufi.mojymak();
         this.wyfufi.restrict=nuvatydoh;
         this.wyfufi.addEventListener(TextEvent.TEXT_INPUT,this.sefoq);
         this.wyfufi.addEventListener(Event.CHANGE,this.damo);
         this.pyrowawo=this.mupipin(this.wyfufi,Kefyfa.cazuc);
         addChild(this.pyrowawo);
         addChild(this.wyfufi);
         this.mibaqe(false);
         return;
      }

      private static const nasapap:uint = 3355443;

      private static const jofikona:uint = 16549442;

      private static const makifuviw:uint = 4539717;

      private static const qomofovi:uint = 11776947;

      private static const nuvatydoh:String = "1234567890";

      private static const honocaga:uint = 5592405;

      public var label:Capitu;

      public var days:Remyl;

      public var zifag:Remyl;

      public var wyfufi:Remyl;

      private var bityzinol:Capitu;

      private var dutuduseh:Capitu;

      private var pyrowawo:Capitu;

      private var gyqon:int;

      private var dybuvy:Sow;

      public function setTitle(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.label.setStringBuilder(new Zufi().setParams(param1));
         return;
      }

      public function mibaqe(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bemyhu(this.zifag,0,0,param1);
         this.bemyhu(this.days,0,0,param1);
         this.bemyhu(this.wyfufi,0,0,param1);
         return;
      }

      private function bemyhu(param1:Remyl, param2:int, param3:int, param4:Boolean) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:uint = param4?jofikona:makifuviw;
         graphics.lineStyle(2,_loc5_,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         graphics.beginFill(nasapap,1);
         graphics.drawRect(param1.x-param2-5,param1.y-param3,param1.width+param2*2,param1.height+param3*2);
         graphics.endFill();
         graphics.lineStyle();
         return;
      }

      private function mupipin(param1:Remyl, param2:String) : Capitu {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Capitu = new Capitu().setSize(16).setColor(honocaga);
         _loc3_.setTextWidth(param1.width+4).setTextHeight(param1.height);
         _loc3_.x=param1.x-6;
         _loc3_.y=param1.y+3;
         _loc3_.setStringBuilder(new Zufi().setParams(param2));
         _loc3_.setAutoSize(TextFieldAutoSize.CENTER);
         return _loc3_;
      }

      private function horiryfin(param1:TextEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = this.zifag.text+param1.text;
         var _loc3_:int = int(_loc2_);
         if(!(_loc2_=="0")&&!this.dybuvy.ryqapida(_loc3_))
         {
            param1.preventDefault();
         }
         return;
      }

      private function fiwupinu(param1:FocusEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = int(this.zifag.text);
         if(_loc2_<10&&!(this.days.text==""))
         {
            this.zifag.text="0"+_loc2_.toString();
         }
         return;
      }

      private function tovo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dutuduseh.visible=!this.zifag.text;
         return;
      }

      private function mid(param1:TextEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.days.text+param1.text;
         var _loc3_:int = int(_loc2_);
         if(!(_loc2_=="0")&&!this.dybuvy.fumyqub(_loc3_))
         {
            param1.preventDefault();
         }
         return;
      }

      private function jodenu(param1:FocusEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = int(this.days.text);
         if(_loc2_<10&&!(this.days.text==""))
         {
            this.days.text="0"+_loc2_.toString();
         }
         return;
      }

      private function hyviros(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bityzinol.visible=!this.days.text;
         return;
      }

      private function sefoq(param1:TextEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = this.wyfufi.text+param1.text;
         var _loc3_:int = this.ranoby(_loc2_);
         if(_loc3_>this.gyqon)
         {
            param1.preventDefault();
         }
         return;
      }

      private function ranoby(param1:String) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         while(param1.length<4)
         {
            param1=param1+"0";
         }
         return int(param1);
      }

      private function damo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyrowawo.visible=!this.wyfufi.text;
         return;
      }

      public function losomuwi() : Boolean {
         var _loc1_:int = int(this.zifag.text);
         var _loc2_:int = int(this.days.text);
         var _loc3_:int = int(this.wyfufi.text);
         return this.dybuvy.losomuwi(_loc1_,_loc2_,_loc3_,100);
      }

      public function gawoju() : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = this.jivu(this.zifag.text,2);
         var _loc2_:String = this.jivu(this.days.text,2);
         var _loc3_:String = this.jivu(this.wyfufi.text,4);
         return _loc1_+"/"+_loc2_+"/"+_loc3_;
      }

      private function jivu(param1:String, param2:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         while(param1.length<param2)
         {
            param1="0"+param1;
         }
         return param1;
      }

      public function nifohetac() : Dab {
         return this.label.textChanged;
      }
   }
[/CLASS]
}