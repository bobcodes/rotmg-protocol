package guvakipe
{
[CLASS435]   import flash.utils.Dictionary;
   import tinava.Dab;
   import vinirudel.Zufu;


   public class Guc extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Guc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.papuwar=new Dictionary();
         this.kuret=new Dab(int);
         return;
      }

      public static const deg:int = 2594;

      public static const qywehinuh:int = 254;

      public static const jypaluw:int = 2595;

      public static const rogotuz:int = 255;

      public static function zef(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case deg:
               return qywehinuh;
            case jypaluw:
               return rogotuz;
            default:
               return -1;
         }
      }

      public var papuwar:Dictionary;

      public var kuret:Dab;

      public function pypugeq(param1:XML) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc6_:* = 0;
         var _loc7_:Zufu = null;
         var _loc2_:int = param1.PotionPurchaseCooldown;
         var _loc3_:int = param1.PotionPurchaseCostCooldown;
         var _loc4_:int = param1.MaxStackablePotions;
         var _loc5_:Array = new Array();
         for each (_loc6_ in param1.PotionPurchaseCosts.cost)
         {
            _loc5_.push(_loc6_);
         }
         _loc7_=new Zufu();
         _loc7_.qydehonu=_loc2_;
         _loc7_.tular=_loc3_;
         _loc7_.vico=_loc4_;
         _loc7_.objectId=deg;
         _loc7_.position=0;
         _loc7_.qysyfycug=_loc5_;
         this.papuwar[_loc7_.position]=_loc7_;
         _loc7_.update.add(this.update);
         _loc7_=new Zufu();
         _loc7_.qydehonu=_loc2_;
         _loc7_.tular=_loc3_;
         _loc7_.vico=_loc4_;
         _loc7_.objectId=jypaluw;
         _loc7_.position=1;
         _loc7_.qysyfycug=_loc5_;
         this.papuwar[_loc7_.position]=_loc7_;
         _loc7_.update.add(this.update);
         return;
      }

      public function ciwuta(param1:uint) : Zufu {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         for (_loc2_ in this.papuwar)
         {
            if(this.papuwar[_loc2_].objectId==param1)
            {
               return this.papuwar[_loc2_];
            }
         }
         return null;
      }

      private function update(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kuret.dispatch(param1);
         return;
      }
   }
[/CLASS]
}