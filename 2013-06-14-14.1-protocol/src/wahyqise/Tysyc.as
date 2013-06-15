package wahyqise
{
   import flash.utils.Dictionary;
   import mukyrosu.Qanyduk;
   import micac.Cake;


   public class Tysyc extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tysyc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.tocahedo=new Dictionary();
         this.jonypufyn=new Qanyduk(int);
         return;
      }

      public static const sanan:int = 2594;

      public static const puhibosil:int = 254;

      public static const lenem:int = 2595;

      public static const qyso:int = 255;

      public static function nyh(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case sanan:
               return puhibosil;
            case lenem:
               return qyso;
            default:
               return -1;
         }
      }

      public var tocahedo:Dictionary;

      public var jonypufyn:Qanyduk;

      public function goso(param1:XML) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc6_:* = 0;
         var _loc7_:Cake = null;
         var _loc2_:int = param1.PotionPurchaseCooldown;
         var _loc3_:int = param1.PotionPurchaseCostCooldown;
         var _loc4_:int = param1.MaxStackablePotions;
         var _loc5_:Array = new Array();
         for each (_loc6_ in param1.PotionPurchaseCosts.cost)
         {
            _loc5_.push(_loc6_);
         }
         _loc7_=new Cake();
         _loc7_.koninu=_loc2_;
         _loc7_.vezaqad=_loc3_;
         _loc7_.fukuk=_loc4_;
         _loc7_.objectId=sanan;
         _loc7_.position=0;
         _loc7_.jidyfale=_loc5_;
         this.tocahedo[_loc7_.position]=_loc7_;
         _loc7_.update.add(this.update);
         _loc7_=new Cake();
         _loc7_.koninu=_loc2_;
         _loc7_.vezaqad=_loc3_;
         _loc7_.fukuk=_loc4_;
         _loc7_.objectId=lenem;
         _loc7_.position=1;
         _loc7_.jidyfale=_loc5_;
         this.tocahedo[_loc7_.position]=_loc7_;
         _loc7_.update.add(this.update);
         return;
      }

      public function hotyzycyc(param1:uint) : Cake {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         for (_loc2_ in this.tocahedo)
         {
            if(this.tocahedo[_loc2_].objectId==param1)
            {
               return this.tocahedo[_loc2_];
            }
         }
         return null;
      }

      private function update(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jonypufyn.dispatch(param1);
         return;
      }
   }

}