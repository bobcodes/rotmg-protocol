package donaqyzas
{
   import hunavefeg.Quj;


   public class Zudezyc extends Object
   {
      public function Zudezyc(param1:Array, param2:Array, param3:*, param4:*) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.daqofi=param1;
         this.bydy=param2;
         this.kiz=param3;
         this.sokegoj=param4;
         super();
         return;
      }

      private const vin:String = "You can\'t change the guards and hooks on an existing mapping. Unmap first.";

      private const puqorebo:String = " The stacktrace for this error was stored at the time when you duplicated the mapping - you may have failed to add guards and hooks that were already present.";

      private var daqofi:Array;

      private var bydy:Array;

      private var kiz;

      private var sokegoj;

      private var zijakuveh:Quj;

      private var mowa:Boolean = false;

      public function get nohetuloh() : Boolean {
         return this.mowa;
      }

      public function luzej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mowa=false;
         this.zijakuveh=new Quj(this.vin+this.puqorebo,this.kiz,this.sokegoj);
         return;
      }

      public function fuhe(param1:Array, param2:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.zynihenez(this.daqofi,param1)||!this.zynihenez(this.bydy,param2))
         {
         }
         this.mowa=true;
         this.zijakuveh=null;
         return;
      }

      public function gonyj(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.sematyti(this.daqofi,param1))
         {
            this.dekejoh();
         }
         return;
      }

      public function zog(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.sematyti(this.bydy,param1))
         {
            this.dekejoh();
         }
         return;
      }

      private function sematyti(param1:Array, param2:Array) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = undefined;
         var param2:Array = this.ligiwyg(param2);
         for each (_loc3_ in param2)
         {
            if(param1.indexOf(_loc3_)==-1)
            {
               return true;
            }
         }
         return false;
      }

      private function zynihenez(param1:Array, param2:Array) : Boolean {
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

      public function ligiwyg(param1:Array) : Array {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = undefined;
         var _loc2_:Array = [];
         for each (_loc3_ in param1)
         {
            if(_loc3_ is Array)
            {
               _loc2_=_loc2_.concat(this.ligiwyg(_loc3_ as Array));
            }
            else
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }

      private function dekejoh() : void {
         throw new Quj(this.vin,this.kiz,this.sokegoj);
      }

      private function welezi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.zijakuveh)
         {
            throw this.zijakuveh;
         }
         else
         {
            return false;
         }
      }
   }

}