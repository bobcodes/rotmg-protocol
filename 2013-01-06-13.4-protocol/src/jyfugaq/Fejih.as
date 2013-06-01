package jyfugaq
{
[CLASS757]   import syfuqycy.Gyz;
   import vofepimy.Tyw;
   import leselo.Account;
   import tizozowof.Fedyl;
   import kyhawibyc.Fapu;
   import vakelac.Zuzycuma;
   import qiwyz.Bozakehy;


   public class Fejih extends Gyz implements Tyw
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Fejih() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const nudo:String = "Kongregate account already registered";

      public var account:Account;

      public var lowemycu:Fedyl;

      public var data:Fapu;

      public var juwigify:Zuzycuma;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/internalRegister",this.winy());
         return;
      }

      private function winy() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.lowemycu.wapen();
         _loc1_.guid=this.account.getUserId();
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.capyhutuz(param2);
         }
         else
         {
            if(param2==nudo)
            {
               this.juwigify.dispatch(this.data);
            }
         }
         pylebodyq(param1,param2);
         return;
      }

      private function capyhutuz(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = new XML(param1);
         this.account.fuv(_loc2_.GUID,_loc2_.Secret);
         this.account.kowumaj(_loc2_.PlatformToken);
         return;
      }
   }
[/CLASS]
}