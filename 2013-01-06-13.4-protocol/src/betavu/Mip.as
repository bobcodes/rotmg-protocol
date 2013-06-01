package betavu
{
[CLASS895]   import syfuqycy.Gyz;
   import qiwyz.Bozakehy;
   import dylaqezo.Vusun;
   import dyvelo.Vewyr;
   import dyvelo.Tadobeqe;
   import dyvelo.Timespan;
   import __AS3__.vec.Vector;
   import dyvelo.Tobyd;


   public class Mip extends Gyz
   {
      public function Mip() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var client:Bozakehy;

      public var player:Vusun;

      public var model:Vewyr;

      public var factory:Tadobeqe;

      public var timespan:Timespan;

      public var charId:int;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/fame/list",this.sejer());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         pylebodyq(param1,param2);
         return;
      }

      private function syji(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vector.<Tobyd> = this.factory.tef(XML(param1));
         this.model.belejiva(_loc2_);
         return;
      }

      private function sejer() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.timespan=this.timespan.venad();
         _loc1_.accountId=this.player.wegefog();
         _loc1_.charId=this.charId;
         return _loc1_;
      }
   }
[/CLASS]
}