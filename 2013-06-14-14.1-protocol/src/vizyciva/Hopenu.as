package vizyciva
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import mukyrosu.Qanyduk;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;


   public class Hopenu extends Sprite
   {
      public function Hopenu(param1:String, param2:int, param3:int) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.sohu=new Kybidu();
         super();
         this.w_=param2;
         this.h_=param3;
         this.name_=param1;
         mouseChildren=false;
         this.nameText_=new Guzowoja().setSize(16).setColor(11776947).setBold(true);
         this.nameText_.setStringBuilder(this.sohu.setParams(param1));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.guviqejy(3552822);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      public var w_:int;

      public var h_:int;

      private var name_:String;

      private var nameText_:Guzowoja;

      private var sohu:Kybidu;

      public function qukahew() : Qanyduk {
         return this.nameText_.textChanged;
      }

      public function getValue() : String {
         return this.name_;
      }

      public function setValue(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name_=param1;
         this.nameText_.setStringBuilder(this.sohu.setParams(param1));
         return;
      }

      public function setWidth(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.w_=param1;
         this.nameText_.x=this.w_/2-this.nameText_.width/2;
         this.nameText_.y=this.h_/2-this.nameText_.height/2;
         this.guviqejy(3552822);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.guviqejy(5658198);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.guviqejy(3552822);
         return;
      }

      private function guviqejy(param1:uint) : void {
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