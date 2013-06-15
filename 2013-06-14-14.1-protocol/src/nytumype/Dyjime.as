package nytumype
{
   import gycu.Siv;
   import gokyc.Rud;
   import cizagamym.Boquzojul;
   import nagyc.Wogot;
   import cycuka.Voli;
   import nagyc.Jyt;
   import __AS3__.vec.Vector;
   import nagyc.Guzakis;
   import vysob.ErrorDialog;


   public class Dyjime extends Siv implements Jitoba
   {
      public function Dyjime() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var client:Rud;

      public var ridecy:Boquzojul;

      public var model:Wogot;

      public var hyvitu:Voli;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/app/globalNews",{language:this.hyvitu.hohizo()});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.suninag(param2);
         }
         else
         {
            this.dawaj(param2);
         }
         dom(param1,param2);
         return;
      }

      private function suninag(param1:String) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Object = null;
         var _loc2_:Vector.<Jyt> = new Vector.<Jyt>();
         var _loc3_:Object = JSON.parse(param1);
         for each (_loc4_ in _loc3_)
         {
            _loc2_.push(this.neb(_loc4_));
         }
         this.model.melofafek(_loc2_);
         return;
      }

      private function neb(param1:Object) : Jyt {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Jyt = null;
         _loc2_=new Jyt();
         _loc2_.fadetuqe=param1.title;
         _loc2_.wipud=param1.image;
         _loc2_.linkDetail=param1.linkDetail;
         _loc2_.bolyjo=Number(param1.startTime);
         _loc2_.meliwygy=Number(param1.endTime);
         _loc2_.linkType=Guzakis.parse(param1.linkType);
         _loc2_.rihedu=String(param1.platform).split(",");
         _loc2_.priority=uint(param1.priority);
         _loc2_.slot=uint(param1.slot);
         return _loc2_;
      }

      private function dawaj(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ridecy.dispatch(new ErrorDialog("Unable to get news data."));
         return;
      }
   }

}