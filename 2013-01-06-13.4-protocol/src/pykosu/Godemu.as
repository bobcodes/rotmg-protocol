package pykosu
{
[CLASS226]   import syfuqycy.Gyz;
   import qiwyz.Bozakehy;
   import kirofyny.Hehuf;
   import gyqadewa.Hod;
   import koqeko.Vona;
   import gyqadewa.Jycomynig;
   import __AS3__.vec.Vector;
   import gyqadewa.Byk;
   import cejyva.ErrorDialog;


   public class Godemu extends Gyz implements Jiqawehe
   {
      public function Godemu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var client:Bozakehy;

      public var lyhog:Hehuf;

      public var model:Hod;

      public var pawale:Vona;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/app/globalNews",{language:this.pawale.bebukir()});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.jytibugot(param2);
         }
         else
         {
            this.cyqaq(param2);
         }
         pylebodyq(param1,param2);
         return;
      }

      private function jytibugot(param1:String) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Object = null;
         var _loc2_:Vector.<Jycomynig> = new Vector.<Jycomynig>();
         var _loc3_:Object = JSON.parse(param1);
         for each (_loc4_ in _loc3_)
         {
            _loc2_.push(this.tuhed(_loc4_));
         }
         this.model.momyheny(_loc2_);
         return;
      }

      private function tuhed(param1:Object) : Jycomynig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Jycomynig = null;
         _loc2_=new Jycomynig();
         _loc2_.celoqiji=param1.title;
         _loc2_.maruwab=param1.image;
         _loc2_.linkDetail=param1.linkDetail;
         _loc2_.jymoto=Number(param1.startTime);
         _loc2_.cubegiryf=Number(param1.endTime);
         _loc2_.linkType=Byk.parse(param1.linkType);
         _loc2_.jiky=String(param1.platform).split(",");
         _loc2_.priority=uint(param1.priority);
         _loc2_.slot=uint(param1.slot);
         return _loc2_;
      }

      private function cyqaq(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lyhog.dispatch(new ErrorDialog("Unable to get news data."));
         return;
      }
   }
[/CLASS]
}