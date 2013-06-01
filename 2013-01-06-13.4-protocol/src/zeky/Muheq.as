package zeky
{
[CLASS114]   import tehakab.Supuvygac;
   import bikyvym.Voduzak;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;
   import tehakab.Dur;


   public class Muheq extends Object
   {
      public function Muheq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:XML;

      public var model:Supuvygac;

      public var wop:Voduzak;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mepokutuc();
         this.vequneni();
         this.saqola();
         return;
      }

      private function mepokutuc() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:Cusifyha = null;
         var _loc1_:XMLList = this.data.MaxClassLevelList.MaxClassLevel;
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.waqy(_loc2_.@classType);
            _loc3_.zehac(_loc2_.@maxLevel);
         }
         return;
      }

      private function vequneni() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:XML = null;
         var _loc3_:Copaqufiv = null;
         var _loc1_:XMLList = this.data.ItemCosts.ItemCost;
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.vusic(_loc2_.@type);
            if(_loc3_)
            {
               _loc3_.cost=int(_loc2_);
               _loc3_.limited=Boolean(int(_loc2_.@expires));
               if(!Boolean(int(_loc2_.@purchasable)))
               {
                  _loc3_.setState(Dur.UNLISTED);
               }
            }
            else
            {
               this.wop.zygugoqi("Cannot set Character Skin cost: type {0} not found",[_loc2_.@type]);
            }
         }
         return;
      }

      private function saqola() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = 0;
         var _loc3_:Copaqufiv = null;
         var _loc1_:Array = this.data.OwnedSkins.length()?this.data.OwnedSkins.split(","):[];
         for each (_loc2_ in _loc1_)
         {
            _loc3_=this.model.vusic(_loc2_);
            if(_loc3_)
            {
               _loc3_.setState(Dur.OWNED);
            }
            else
            {
               this.wop.zygugoqi("Cannot set Character Skin ownership: type {0} not found",[_loc2_]);
            }
         }
         return;
      }
   }
[/CLASS]
}