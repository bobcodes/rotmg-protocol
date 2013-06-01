package fomykuq
{
[CLASS1885]   import bikyvym.Womutupe;


   public class Niw extends Object
   {
      public function Niw(param1:Array, param2:Array, param3:*, param4:*) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.gunewys=param1;
         this.fah=param2;
         this.jimiq=param3;
         this.zyzesel=param4;
         super();
         return;
      }

      private const jazepy:String = "You can\'t change the guards and hooks on an existing mapping. Unmap first.";

      private const wozozysed:String = " The stacktrace for this error was stored at the time when you duplicated the mapping - you may have failed to add guards and hooks that were already present.";

      private var gunewys:Array;

      private var fah:Array;

      private var jimiq;

      private var zyzesel;

      private var zyl:Womutupe;

      private var qoluzovi:Boolean = false;

      public function get nah() : Boolean {
         return this.qoluzovi;
      }

      public function bejony() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qoluzovi=false;
         this.zyl=new Womutupe(this.jazepy+this.wozozysed,this.jimiq,this.zyzesel);
         return;
      }

      public function vavog(param1:Array, param2:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.pub(this.gunewys,param1)||!this.pub(this.fah,param2))
         {
         }
         this.qoluzovi=true;
         this.zyl=null;
         return;
      }

      public function ryqoreq(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kugaduf(this.gunewys,param1))
         {
            this.laqimek();
         }
         return;
      }

      public function ruvo(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.kugaduf(this.fah,param1))
         {
            this.laqimek();
         }
         return;
      }

      private function kugaduf(param1:Array, param2:Array) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = undefined;
         var param2:Array = this.hipecucep(param2);
         for each (_loc3_ in param2)
         {
            if(param1.indexOf(_loc3_)==-1)
            {
               return true;
            }
         }
         return false;
      }

      private function pub(param1:Array, param2:Array) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = 0;
         var param1:Array = param1.slice();
         if(param1.length!=param2.length)
         {
            return false;
         }
         var _loc4_:uint = param2.length;
         var _loc5_:uint = 0;
         while(_loc5_<_loc4_)
         {
            _loc3_=param1.indexOf(param2[_loc5_]);
            if(_loc3_==-1)
            {
               return false;
            }
            param1.splice(_loc3_,1);
            _loc5_++;
         }
         return true;
      }

      public function hipecucep(param1:Array) : Array {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = undefined;
         var _loc2_:Array = [];
         for each (_loc3_ in param1)
         {
            if(_loc3_ is Array)
            {
               _loc2_=_loc2_.concat(this.hipecucep(_loc3_ as Array));
            }
            else
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }

      private function laqimek() : void {
         throw new Womutupe(this.jazepy,this.jimiq,this.zyzesel);
      }

      private function vadocope() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.zyl)
         {
            throw this.zyl;
         }
         else
         {
            return false;
         }
      }
   }
[/CLASS]
}