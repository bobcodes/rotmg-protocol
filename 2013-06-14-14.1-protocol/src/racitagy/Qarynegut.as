package racitagy
{
   import com.company.assembleegameclient.game.GameSprite;
   import cizagamym.Lebovas;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import com.company.assembleegameclient.parameters.Parameters;
   import sijizoh.Duq;
   import komi.Vibemod;
   import vysob.Dialog;


   public class Qarynegut extends Sis
   {
      public function Qarynegut(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fysenus=Duq.pamazo().getInstance(Lebovas);
         this.qyhowo=param1;
         super("LeavePetYardDialog.title","LeavePetYardDialog.text",Vibemod.wosybis,Vibemod.leraziwa,null);
         addEventListener(Dialog.LEFT_BUTTON,this.lyb);
         addEventListener(Dialog.RIGHT_BUTTON,this.static);
         tob.setMultiLine(true);
         return;
      }

      private var qyhowo:GameSprite;

      private var fysenus:Lebovas;

      private function lyb(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fysenus.dispatch();
         return;
      }

      private function static(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qyhowo.gsc_.escape();
         GA.global().trackEvent("enterPortal","Nexus Button");
         Parameters.data_.needsRandomRealm=false;
         Parameters.save();
         this.fysenus.dispatch();
         return;
      }
   }

}