package waryp
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Kedilur;
   import sefylew.Rut;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import mavew.RankToolTip;


   public class Cysaruha extends Sprite
   {
      public function Cysaruha() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tooltip=new Qanyduk();
         this.simanecok();
         return;
      }

      public var tooltip:Qanyduk;

      private var fyvihel:Sprite;

      private var juq:Sprite;

      private var susalefo:Sprite;

      private var guildName:String;

      private var qogaze:int;

      private var stars:int;

      private var rankText:RankText;

      private var dazyrap:Kedilur;

      private var accountInfo:Rut;

      private function simanecok() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(this.fyvihel=new Sprite());
         addChild(this.juq=new Sprite());
         addChild(this.susalefo=new Sprite());
         return;
      }

      private function lanaluf() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(0,0.5);
         _loc1_.graphics.drawRect(0,0,800,35);
         return _loc1_;
      }

      public function fybat(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.guildName=param1;
         this.qogaze=param2;
         this.fyfu();
         return;
      }

      private function fyfu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dazyrap=new Kedilur(this.guildName,this.qogaze);
         this.dazyrap.x=92;
         this.dazyrap.y=6;
         this.juq.addChild(this.dazyrap);
         return;
      }

      public function gidukamo(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.stars=param1;
         this.holizeryc();
         return;
      }

      private function holizeryc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rankText=new RankText(this.stars,true,false);
         this.rankText.x=36;
         this.rankText.y=4;
         this.rankText.mouseEnabled=true;
         this.rankText.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.rankText.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.fyvihel.addChild(this.rankText);
         return;
      }

      public function cycuza(param1:Rut) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:DisplayObject = null;
         this.accountInfo=param1;
         _loc2_=param1 as DisplayObject;
         _loc2_.x=stage.stageWidth-10;
         _loc2_.y=2;
         this.susalefo.addChild(_loc2_);
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tooltip.dispatch(new RankToolTip(this.stars));
         return;
      }

      protected function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tooltip.dispatch(null);
         return;
      }
   }

}