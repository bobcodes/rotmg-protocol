package qilarag
{
[CLASS473]   import flash.display.Sprite;
   import tinava.Dab;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Defik;
   import sojul.Jekoje;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import pigeguwo.RankToolTip;


   public class Sinutuci extends Sprite
   {
      public function Sinutuci() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tooltip=new Dab();
         this.lavytuho();
         return;
      }

      public var tooltip:Dab;

      private var kofozygak:Sprite;

      private var tyhaca:Sprite;

      private var wylyfepe:Sprite;

      private var guildName:String;

      private var noc:int;

      private var stars:int;

      private var rankText:RankText;

      private var fitif:Defik;

      private var accountInfo:Jekoje;

      private function lavytuho() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(this.kofozygak=new Sprite());
         addChild(this.tyhaca=new Sprite());
         addChild(this.wylyfepe=new Sprite());
         return;
      }

      private function pugeg() : DisplayObject {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(0,0.5);
         _loc1_.graphics.drawRect(0,0,800,35);
         return _loc1_;
      }

      public function wotab(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.guildName=param1;
         this.noc=param2;
         this.nuvimy();
         return;
      }

      private function nuvimy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fitif=new Defik(this.guildName,this.noc);
         this.fitif.x=92;
         this.fitif.y=6;
         this.tyhaca.addChild(this.fitif);
         return;
      }

      public function pyvepobok(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.stars=param1;
         this.muga();
         return;
      }

      private function muga() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rankText=new RankText(this.stars,true,false);
         this.rankText.x=36;
         this.rankText.y=4;
         this.rankText.mouseEnabled=true;
         this.rankText.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.rankText.addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.kofozygak.addChild(this.rankText);
         return;
      }

      public function tolyqoqa(param1:Jekoje) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:DisplayObject = null;
         this.accountInfo=param1;
         _loc2_=param1 as DisplayObject;
         _loc2_.x=stage.stageWidth-10;
         _loc2_.y=2;
         this.wylyfepe.addChild(_loc2_);
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tooltip.dispatch(new RankToolTip(this.stars));
         return;
      }

      protected function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tooltip.dispatch(null);
         return;
      }
   }
[/CLASS]
}