package zycysoj
{
   import poho.Kyhy;
   import hunavefeg.Depyrew;
   import poho.Dywygave;
   import poho.Pom;
   import poho.Bul;


   public class Vom extends Object
   {
      public function Vom() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:XML;

      public var model:Kyhy;

      public var con:Depyrew;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gefehoj();
         this.hon();
         this.lynicin();
         return;
      }

      private function gefehoj() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:Dywygave = null;
         var _loc1_:XMLList = this.data.MaxClassLevelList.MaxClassLevel;
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.gug(_loc2_.@classType);
            _loc3_.cuwe(_loc2_.@maxLevel);
         }
         return;
      }

      private function hon() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:XML = null;
         var _loc3_:Pom = null;
         var _loc1_:XMLList = this.data.ItemCosts.ItemCost;
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.nidiz(_loc2_.@type);
            if(_loc3_)
            {
               _loc3_.cost=int(_loc2_);
               _loc3_.limited=Boolean(int(_loc2_.@expires));
               if(!Boolean(int(_loc2_.@purchasable)))
               {
                  _loc3_.setState(Bul.UNLISTED);
               }
            }
            else
            {
               this.con.bec("Cannot set Character Skin cost: type {0} not found",[_loc2_.@type]);
            }
         }
         return;
      }

      private function lynicin() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = 0;
         var _loc3_:Pom = null;
         var _loc1_:Array = this.data.OwnedSkins.length()?this.data.OwnedSkins.split(","):[];
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.nidiz(_loc2_);
            if(_loc3_)
            {
               _loc3_.setState(Bul.OWNED);
            }
            else
            {
               this.con.bec("Cannot set Character Skin ownership: type {0} not found",[_loc2_]);
            }
         }
         return;
      }
   }

}