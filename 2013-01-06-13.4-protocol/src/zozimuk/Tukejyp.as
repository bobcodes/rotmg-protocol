package zozimuk
{
[CLASS180]   import syfuqycy.Gyz;
   import flash.utils.Timer;
   import qiwyz.Bozakehy;
   import leselo.Account;
   import bikyvym.Voduzak;
   import koqeko.Vona;
   import flash.events.TimerEvent;
   import kuniv.Nogofado;


   public class Tukejyp extends Gyz
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tukejyp() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.timer=new Timer(mug);
         super();
         return;
      }

      private static const mug:int = 1000*60*60;

      public var timer:Timer;

      public var client:Bozakehy;

      public var wiq:Zuresasy;

      public var account:Account;

      public var wop:Voduzak;

      public var pawale:Vona;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.dera();
         _loc1_.language=this.pawale.bebukir();
         this.client.sendRequest("/package/getPackages",_loc1_);
         this.client.complete.addOnce(this.onComplete);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.zufu(param2);
         }
         else
         {
            this.wop.zygugoqi("GetPackageTask.onComplete: Request failed.");
            pylebodyq(false);
         }
         return;
      }

      private function zufu(param1:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = null;
         if(this.fifatehe(param1))
         {
            this.wop.info("GetPackageTask.onComplete: No package available, retrying in 1 hour.");
            this.timer.addEventListener(TimerEvent.TIMER,this.sohyt);
            this.timer.start();
            this.wiq.vowofozi([]);
         }
         else
         {
            _loc2_=XML(param1);
            this.parse(_loc2_);
         }
         pylebodyq(true);
         return;
      }

      private function fifatehe(param1:*) : Boolean {
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
         var _loc13_:Nogofado = null;
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
            _loc12_=this.bylo(param1,_loc4_);
            _loc13_=new Nogofado();
            _loc13_.polaget(_loc4_,_loc10_,_loc5_,_loc7_,_loc8_,_loc9_,_loc6_,_loc11_,_loc12_);
            _loc2_.push(_loc13_);
         }
         this.wiq.vowofozi(_loc2_);
         return;
      }

      private function bylo(param1:XML, param2:int) : int {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var packageHistory:XMLList = null;
         var packagesXML:XML = param1;
         var packageID:int = param2;
         var numPurchased:int = 0;
         var history:XMLList = packagesXML.History;
         if(history)
         {
            for each (_loc8_ in history.Package)
            {
               with(_loc8_)
               {
                  
                  if(@id==packageID)
                  {
                     _loc4_[_loc5_]=_loc7_;
                  }
               }
            }
            packageHistory=_loc4_;
            if(packageHistory)
            {
               numPurchased=int(packageHistory.Count);
            }
         }
         return numPurchased;
      }

      private function sohyt(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.timer.removeEventListener(TimerEvent.TIMER,this.sohyt);
         this.timer.stop();
         this.startTask();
         return;
      }
   }
[/CLASS]
}