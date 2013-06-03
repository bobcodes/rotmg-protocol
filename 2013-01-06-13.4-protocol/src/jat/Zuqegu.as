package jat
{
[CLASS948]   import com.company.assembleegameclient.game.GameSprite;
   import kirofyny.Tiqimav;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import aaa.Parameters;
   import jutesesel.Qibigagal;
   import haqakel.Kefyfa;
   import cejyva.Dialog;


   public class Zuqegu extends Rymowig
   {
      public function Zuqegu(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cunaraf=Qibigagal.husuha().getInstance(Tiqimav);
         this.palaliz=param1;
         super("LeavePetYardDialog.title","LeavePetYardDialog.text",Kefyfa.hejuka,Kefyfa.fuk,null);
         addEventListener(Dialog.LEFT_BUTTON,this.pikymasa);
         addEventListener(Dialog.RIGHT_BUTTON,this.nokypivyr);
         danypifev.setMultiLine(true);
         return;
      }

      private var palaliz:GameSprite;

      private var cunaraf:Tiqimav;

      private function pikymasa(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cunaraf.dispatch();
         return;
      }

      private function nokypivyr(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.palaliz.gsc_.escape();
         GA.global().trackEvent("enterPortal","Nexus Button");
         Parameters.data_.needsRandomRealm=false;
         Parameters.save();
         this.cunaraf.dispatch();
         return;
      }
   }
[/CLASS]
}