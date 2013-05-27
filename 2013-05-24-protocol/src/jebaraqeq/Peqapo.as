package jebaraqeq
{
   import komawowag.Pazu;


   public class Peqapo extends Object
   {
      public function Peqapo(param1:Array, param2:Array, param3:*, param4:*) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.macil=param1;
         this.qevyjesak=param2;
         this.hybosily=param3;
         this.pynufini=param4;
         super();
         return;
      }

      private const puc:String = "You can\'t change the guards and hooks on an existing mapping. Unmap first.";

      private const zurodi:String = " The stacktrace for this error was stored at the time when you duplicated the mapping - you may have failed to add guards and hooks that were already present.";

      private var macil:Array;

      private var qevyjesak:Array;

      private var hybosily;

      private var pynufini;

      private var tufabegag:Pazu;

      private var qebi:Boolean = false;

      public function get ryfypa() : Boolean {
         return this.qebi;
      }

      public function vowopuc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qebi=false;
         this.tufabegag=new Pazu(this.puc+this.zurodi,this.hybosily,this.pynufini);
         return;
      }

      public function murus(param1:Array, param2:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.mybeg(this.macil,param1)||!this.mybeg(this.qevyjesak,param2))
         {
         }
         this.qebi=true;
         this.tufabegag=null;
         return;
      }

      public function tukim(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.lavy(this.macil,param1))
         {
            this.taline();
         }
         return;
      }

      public function vejeweba(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.lavy(this.qevyjesak,param1))
         {
            this.taline();
         }
         return;
      }

      private function lavy(param1:Array, param2:Array) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = undefined;
         var param2:Array = this.luce(param2);
         for each (_loc3_ in param2)
         {
            if(param1.indexOf(_loc3_)==-1)
            {
               return true;
            }
         }
         return false;
      }

      private function mybeg(param1:Array, param2:Array) : Boolean {
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

      public function luce(param1:Array) : Array {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = undefined;
         var _loc2_:Array = [];
         for each (_loc3_ in param1)
         {
            if(_loc3_ is Array)
            {
               _loc2_=_loc2_.concat(this.luce(_loc3_ as Array));
            }
            else
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }

      private function taline() : void {
         throw new Pazu(this.puc,this.hybosily,this.pynufini);
      }

      private function sokaruv() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tufabegag)
         {
            throw this.tufabegag;
         }
         else
         {
            return false;
         }
      }
   }

}