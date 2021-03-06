package tuma
{
   import fulaw.Vihekivuc;
   import komawowag.Becepog;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import fulaw.Wuduler;


   public class Benu extends Object
   {
      public function Benu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:XML;

      public var model:Vihekivuc;

      public var qiqely:Becepog;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.deniqoqih();
         this.rizuga();
         this.wen();
         return;
      }

      private function deniqoqih() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:Jimi = null;
         var _loc1_:XMLList = this.data.MaxClassLevelList.MaxClassLevel;
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.lyt(_loc2_.@classType);
            _loc3_.tulodygof(_loc2_.@maxLevel);
         }
         return;
      }

      private function rizuga() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:Dasin = null;
         var _loc1_:XMLList = this.data.ItemCosts.ItemCost;
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.geqocigi(_loc2_.@type);
            if(_loc3_)
            {
               _loc3_.cost=int(_loc2_);
               _loc3_.limited=Boolean(int(_loc2_.@expires));
               if(!Boolean(int(_loc2_.@purchasable)))
               {
                  _loc3_.setState(Wuduler.UNLISTED);
               }
            }
            else
            {
               this.qiqely.mywid("Cannot set Character Skin cost: type {0} not found",[_loc2_.@type]);
            }
         }
         return;
      }

      private function wen() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = 0;
         var _loc3_:Dasin = null;
         var _loc1_:Array = this.data.OwnedSkins.length()?this.data.OwnedSkins.split(","):[];
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.geqocigi(_loc2_);
            if(_loc3_)
            {
               _loc3_.setState(Wuduler.OWNED);
            }
            else
            {
               this.qiqely.mywid("Cannot set Character Skin ownership: type {0} not found",[_loc2_]);
            }
         }
         return;
      }
   }

}