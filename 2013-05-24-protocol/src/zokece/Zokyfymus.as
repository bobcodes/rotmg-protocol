package zokece
{
   import gag.Fijarih;
   import flash.utils.Timer;
   import negirilu.Fuzi;
   import ruwa.Account;
   import komawowag.Becepog;
   import byzany.Qopel;
   import flash.events.TimerEvent;
   import damul.Qyfa;


   public class Zokyfymus extends Fijarih
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zokyfymus() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timer=new Timer(materehyc);
         super();
         return;
      }

      private static const materehyc:int = 1000*60*60;

      public var timer:Timer;

      public var client:Fuzi;

      public var pitosad:Buquk;

      public var account:Account;

      public var qiqely:Becepog;

      public var popa:Qopel;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.venupog();
         _loc1_.language=this.popa.liw();
         this.client.sendRequest("/package/getPackages",_loc1_);
         this.client.complete.addOnce(this.onComplete);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.koze(param2);
         }
         else
         {
            this.qiqely.mywid("GetPackageTask.onComplete: Request failed.");
            syjavimu(false);
         }
         return;
      }

      private function koze(param1:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = null;
         if(this.hyvo(param1))
         {
            this.qiqely.info("GetPackageTask.onComplete: No package available, retrying in 1 hour.");
            this.timer.addEventListener(TimerEvent.TIMER,this.lywogucu);
            this.timer.start();
            this.pitosad.ziqyji([]);
         }
         else
         {
            _loc2_=XML(param1);
            this.parse(_loc2_);
         }
         syjavimu(true);
         return;
      }

      private function hyvo(param1:*) : Boolean {
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
         var _loc13_:Qyfa = null;
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
            _loc12_=this.bemi(param1,_loc4_);
            _loc13_=new Qyfa();
            _loc13_.jaribosod(_loc4_,_loc10_,_loc5_,_loc7_,_loc8_,_loc9_,_loc6_,_loc11_,_loc12_);
            _loc2_.push(_loc13_);
         }
         this.pitosad.ziqyji(_loc2_);
         return;
      }

      private function bemi(param1:XML, param2:int) : int {
         var _loc9_:* = true;
         var _loc10_:* = false;
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

      private function lywogucu(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.timer.removeEventListener(TimerEvent.TIMER,this.lywogucu);
         this.timer.stop();
         this.startTask();
         return;
      }
   }

}