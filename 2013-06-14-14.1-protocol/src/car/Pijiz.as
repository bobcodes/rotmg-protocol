package car
{
   import gycu.Siv;
   import flash.utils.Timer;
   import gokyc.Rud;
   import pugem.Account;
   import hunavefeg.Depyrew;
   import cycuka.Voli;
   import flash.events.TimerEvent;
   import wavybyjec.Sucy;


   public class Pijiz extends Siv
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Pijiz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.timer=new Timer(qitocaka);
         super();
         return;
      }

      private static const qitocaka:int = 1000*60*60;

      public var timer:Timer;

      public var client:Rud;

      public var nuvet:Levoge;

      public var account:Account;

      public var con:Depyrew;

      public var hyvitu:Voli;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.pedavitu();
         _loc1_.language=this.hyvitu.hohizo();
         this.client.sendRequest("/package/getPackages",_loc1_);
         this.client.complete.addOnce(this.onComplete);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.geqas(param2);
         }
         else
         {
            this.con.bec("GetPackageTask.onComplete: Request failed.");
            dom(false);
         }
         return;
      }

      private function geqas(param1:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = null;
         if(this.vupi(param1))
         {
            this.con.info("GetPackageTask.onComplete: No package available, retrying in 1 hour.");
            this.timer.addEventListener(TimerEvent.TIMER,this.tusewu);
            this.timer.start();
            this.nuvet.lykunaz([]);
         }
         else
         {
            _loc2_=XML(param1);
            this.parse(_loc2_);
         }
         dom(true);
         return;
      }

      private function vupi(param1:*) : Boolean {
         var _loc2_:XMLList = XML(param1).Packages;
         var _loc3_:* = _loc2_.length()==0;
         return _loc3_;
      }

      private function parse(param1:XML) : void {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:Date = null;
         var _loc11_:String = null;
         var _loc12_:* = 0;
         var _loc13_:Sucy = null;
         var _loc2_:Array = [];
         for each (_loc3_ in param1.Packages.Package)
         {
            _loc4_=int(_loc3_.@id);
            _loc5_=String(_loc3_.Name);
            _loc6_=int(_loc3_.Price);
            _loc7_=int(_loc3_.Quantity);
            _loc8_=int(_loc3_.MaxPurchase);
            _loc9_=int(_loc3_.Weight);
            _loc10_=new Date(String(_loc3_.EndDate));
            _loc11_=String(_loc3_.BgURL);
            _loc12_=this.rerucedam(param1,_loc4_);
            _loc13_=new Sucy();
            _loc13_.raqy(_loc4_,_loc10_,_loc5_,_loc7_,_loc8_,_loc9_,_loc6_,_loc11_,_loc12_);
            _loc2_.push(_loc13_);
         }
         this.nuvet.lykunaz(_loc2_);
         return;
      }

      private function rerucedam(param1:XML, param2:int) : int {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var packageHistory:XMLList = null;
         var packagesXML:XML = param1;
         var packageID:int = param2;
         var numPurchased:int = 0;
         var history:XMLList = packagesXML.History;
         if(history)
         {
            packageHistory=history.Package.(@id==packageID);
            if(packageHistory)
            {
               numPurchased=int(packageHistory.Count);
            }
         }
         return numPurchased;
      }

      private function tusewu(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.timer.removeEventListener(TimerEvent.TIMER,this.tusewu);
         this.timer.stop();
         this.startTask();
         return;
      }
   }

}