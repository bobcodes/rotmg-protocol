package cuwyg
{
   import flash.utils.Dictionary;
   import tulunyno.Hugyqufyq;
   import fom.Cosen;


   public class Dewydo extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Dewydo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.kyfylyzug=new Dictionary();
         this.cina=new Hugyqufyq(int);
         return;
      }

      public static const mokikeqa:int = 2594;

      public static const tuvo:int = 254;

      public static const rywihuh:int = 2595;

      public static const tycewyn:int = 255;

      public static function fil(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(param1)
         {
            case mokikeqa:
               return tuvo;
            case rywihuh:
               return tycewyn;
            default:
               return -1;
         }
      }

      public var kyfylyzug:Dictionary;

      public var cina:Hugyqufyq;

      public function metiko(param1:XML) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc6_:* = 0;
         var _loc7_:Cosen = null;
         var _loc2_:int = param1.PotionPurchaseCooldown;
         var _loc3_:int = param1.PotionPurchaseCostCooldown;
         var _loc4_:int = param1.MaxStackablePotions;
         var _loc5_:Array = new Array();
         for each (_loc6_ in param1.PotionPurchaseCosts.cost)
         {
            _loc5_.push(_loc6_);
         }
         _loc7_=new Cosen();
         _loc7_.tegufej=_loc2_;
         _loc7_.dahycu=_loc3_;
         _loc7_.komysolad=_loc4_;
         _loc7_.objectId=mokikeqa;
         _loc7_.position=0;
         _loc7_.qamus=_loc5_;
         this.kyfylyzug[_loc7_.position]=_loc7_;
         _loc7_.update.add(this.update);
         _loc7_=new Cosen();
         _loc7_.tegufej=_loc2_;
         _loc7_.dahycu=_loc3_;
         _loc7_.komysolad=_loc4_;
         _loc7_.objectId=rywihuh;
         _loc7_.position=1;
         _loc7_.qamus=_loc5_;
         this.kyfylyzug[_loc7_.position]=_loc7_;
         _loc7_.update.add(this.update);
         return;
      }

      public function bomokic(param1:uint) : Cosen {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         for (_loc2_ in this.kyfylyzug)
         {
            if(this.kyfylyzug[_loc2_].objectId==param1)
            {
               return this.kyfylyzug[_loc2_];
            }
         }
         return null;
      }

      private function update(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cina.dispatch(param1);
         return;
      }
   }

}