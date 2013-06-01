package difu
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import koj.Vilan;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.Repipi;
   import wyjowaso.Rycunuv;


   public class Kirygym extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kirygym() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.close=new Hugyqufyq();
         this.select=new Vilan(MouseEvent.CLICK,String);
         this.gehepu();
         this.nagelywig();
         this.lozaloka();
         return;
      }

      public static var bevogina:Class = Jabakut;

      public var close:Hugyqufyq;

      public var select:Vilan;

      public var hycihy:Sprite;

      public var vuwa:Sprite;

      public var google:Sprite;

      public function dyhokopoq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         x=(stage.stageWidth-width)*0.5;
         y=(stage.stageHeight-height)*0.5-5;
         return;
      }

      private function gehepu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(new bevogina());
         return;
      }

      private function nagelywig() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = this.gys(550,30,30,30);
         this.close=new Zojygese(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function lozaloka() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hycihy=this.gys(220,180,180,35);
         this.vuwa=this.gys(220,224,180,35);
         this.google=this.gys(220,268,180,35);
         this.select.map(this.hycihy,Repipi.sev.label_);
         this.select.map(this.vuwa,Repipi.sobelowe.label_);
         this.select.map(this.google,Repipi.heqy.label_);
         return;
      }

      private function gys(param1:int, param2:int, param3:int, param4:int) : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Rycunuv = new Rycunuv(param1,param2,param3,param4);
         addChild(_loc5_);
         return _loc5_;
      }
   }

}