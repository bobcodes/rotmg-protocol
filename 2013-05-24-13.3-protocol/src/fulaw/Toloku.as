package fulaw
{
   import __AS3__.vec.Vector;


   public class Toloku extends Object
   {
      public function Toloku() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const socucu:Vector.<Dasin> = new Vector.<Dasin>(0);

      private const map:Object = {};

      private var vikibiv:Dasin;

      private var huhuq:Dasin;

      private var zufumivos:int;

      public function dymy() : int {
         return this.socucu.length;
      }

      public function mucosahuh() : Dasin {
         return this.vikibiv;
      }

      public function mipozilin() : Dasin {
         return this.huhuq;
      }

      public function diben(param1:int) : Dasin {
         return this.socucu[param1];
      }

      public function lyloquruv(param1:Dasin, param2:Boolean=false) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.seda.add(this.quluzu);
         this.socucu.push(param1);
         this.map[param1.id]=param1;
         this.cilipyz(param1);
         if(param2)
         {
            this.vikibiv=param1;
            if(!this.huhuq)
            {
               this.huhuq=param1;
               param1.piloni(true);
            }
         }
         else
         {
            if(param1.ruqy())
            {
               this.huhuq=param1;
            }
         }
         return;
      }

      private function quluzu(param1:Dasin) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((param1.ruqy())&&!(this.huhuq==param1))
         {
            this.huhuq=param1;
         }
         return;
      }

      public function pywodyca(param1:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Dasin = null;
         this.zufumivos=param1;
         for each (_loc2_ in this.socucu)
         {
            this.cilipyz(_loc2_);
         }
         return;
      }

      private function cilipyz(param1:Dasin) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.fepyzat().bujoboho())
         {
            param1.setState(this.jopyp(param1));
         }
         return;
      }

      private function jopyp(param1:Dasin) : Wuduler {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.zufumivos>=param1.unlockLevel)
         {
            return Wuduler.PURCHASABLE;
         }
         return Wuduler.LOCKED;
      }

      public function sek(param1:int) : Dasin {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.map[param1])||(this.vikibiv);
      }

      public function labef() : Vector.<Dasin> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Dasin = null;
         var _loc1_:Vector.<Dasin> = new Vector.<Dasin>();
         for each (_loc2_ in this.socucu)
         {
            if(_loc2_.fepyzat()!=Wuduler.UNLISTED)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }

}