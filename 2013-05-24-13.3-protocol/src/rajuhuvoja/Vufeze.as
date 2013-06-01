package rajuhuvoja
{
   import bidav.Qawosir;
   import flash.utils.Dictionary;
   import bidav.Keho;
   import bidav.Cijukuca;
   import flash.display.DisplayObject;


   public class Vufeze extends Object implements Qawosir
   {
      public function Vufeze(param1:Keho) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pizyhar=new Dictionary(true);
         super();
         this._factory=param1;
         return;
      }

      private const qydyd:Array = [];

      private var pizyhar:Dictionary;

      private var _factory:Keho;

      public function fibol(param1:Cijukuca) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.qydyd.indexOf(param1);
         if(_loc2_>-1)
         {
            return;
         }
         this.qydyd.push(param1);
         this.ninegive();
         return;
      }

      public function qukijyq(param1:Cijukuca) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.qydyd.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this.qydyd.splice(_loc2_,1);
         this.ninegive();
         return;
      }

      public function hubumiwek(param1:DisplayObject, param2:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Array = this.dyzyhite(param1,param2);
         if(_loc3_)
         {
            this._factory.jejukuj(param1,param2,_loc3_);
         }
         return;
      }

      public function budec(param1:Object, param2:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Array = this.dyzyhite(param1,param2);
         if(_loc3_)
         {
            this._factory.jejukuj(param1,param2,_loc3_);
         }
         return;
      }

      private function ninegive() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pizyhar=new Dictionary(true);
         return;
      }

      private function dyzyhite(param1:Object, param2:Class) : Array {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Cijukuca = null;
         if(this.pizyhar[param2]===false)
         {
            return null;
         }
         if(this.pizyhar[param2]==undefined)
         {
            this.pizyhar[param2]=false;
            for each (_loc3_ in this.qydyd)
            {
               _loc3_.murus();
               if(_loc3_.judip.matches(param1))
               {
                  this.pizyhar[param2]=(this.pizyhar[param2])||([]);
                  this.pizyhar[param2].push(_loc3_);
               }
            }
            if(this.pizyhar[param2]===false)
            {
               return null;
            }
         }
         return this.pizyhar[param2] as Array;
      }
   }

}