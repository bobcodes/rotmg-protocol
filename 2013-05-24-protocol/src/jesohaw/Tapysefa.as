package jesohaw
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import nec.Sire;
   import tulunyno.Hugyqufyq;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;


   public class Tapysefa extends Sprite
   {
      public function Tapysefa(param1:String, param2:int, param3:int) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.diryjug=new Sire();
         super();
         this.w_=param2;
         this.h_=param3;
         this.name_=param1;
         mouseChildren=false;
         this.nameText_=new Lufub().setSize(16).setColor(11776947).setBold(true);
         this.nameText_.setStringBuilder(this.diryjug.setParams(param1));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.tizyf(3552822);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      public var w_:int;

      public var h_:int;

      private var name_:String;

      private var nameText_:Lufub;

      private var diryjug:Sire;

      public function ratijuje() : Hugyqufyq {
         return this.nameText_.textChanged;
      }

      public function getValue() : String {
         return this.name_;
      }

      public function setValue(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.name_=param1;
         this.nameText_.setStringBuilder(this.diryjug.setParams(param1));
         return;
      }

      public function setWidth(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.w_=param1;
         this.nameText_.x=this.w_/2-this.nameText_.width/2;
         this.nameText_.y=this.h_/2-this.nameText_.height/2;
         this.tizyf(3552822);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tizyf(5658198);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tizyf(3552822);
         return;
      }

      private function tizyf(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         graphics.clear();
         graphics.lineStyle(2,5526612);
         graphics.beginFill(param1,1);
         graphics.drawRect(0,0,this.w_,this.h_);
         graphics.endFill();
         graphics.lineStyle();
         return;
      }
   }

}