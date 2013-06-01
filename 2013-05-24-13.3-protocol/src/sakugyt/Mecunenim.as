package sakugyt
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Teh;
   import kat.Jyhyk;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import povopito.RankToolTip;


   public class Mecunenim extends Sprite
   {
      public function Mecunenim() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tooltip=new Hugyqufyq();
         this.tuzipe();
         return;
      }

      public var tooltip:Hugyqufyq;

      private var tuzepy:Sprite;

      private var fanekas:Sprite;

      private var rijyvof:Sprite;

      private var guildName:String;

      private var jegumagyd:int;

      private var stars:int;

      private var rankText:RankText;

      private var hetaqoby:Teh;

      private var accountInfo:Jyhyk;

      private function tuzipe() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(this.tuzepy=new Sprite());
         addChild(this.fanekas=new Sprite());
         addChild(this.rijyvof=new Sprite());
         return;
      }

      private function mogu() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(0,0.5);
         _loc1_.graphics.drawRect(0,0,800,35);
         return _loc1_;
      }

      public function fadyb(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.guildName=param1;
         this.jegumagyd=param2;
         this.lekok();
         return;
      }

      private function lekok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hetaqoby=new Teh(this.guildName,this.jegumagyd);
         this.hetaqoby.x=92;
         this.hetaqoby.y=6;
         this.fanekas.addChild(this.hetaqoby);
         return;
      }

      public function kewe(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.stars=param1;
         this.jywubene();
         return;
      }

      private function jywubene() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rankText=new RankText(this.stars,true,false);
         this.rankText.x=36;
         this.rankText.y=4;
         this.rankText.mouseEnabled=true;
         this.rankText.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.rankText.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.tuzepy.addChild(this.rankText);
         return;
      }

      public function mogi(param1:Jyhyk) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:DisplayObject = null;
         this.accountInfo=param1;
         _loc2_=param1 as DisplayObject;
         _loc2_.x=stage.stageWidth-10;
         _loc2_.y=2;
         this.rijyvof.addChild(_loc2_);
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