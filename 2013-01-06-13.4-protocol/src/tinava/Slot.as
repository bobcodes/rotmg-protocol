package tinava
{
[CLASS168]

   public class Slot extends Object implements Wusozuve
   {
      public function Slot(param1:Function, param2:Pysu, param3:Boolean=false, param4:int=0) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.votufad=param1;
         this._once=param3;
         this._signal=param2;
         this.bakakuhoc=param4;
         this.dyhes(param1);
         return;
      }

      protected var _signal:Pysu;

      protected var cypyqi:Boolean = true;

      protected var votufad:Function;

      protected var _once:Boolean = false;

      protected var bakakuhoc:int = 0;

      protected var tivabim:Array;

      public function execute0() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.cypyqi)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.tivabim)&&(this.tivabim.length))
         {
            this.votufad.apply(null,this.tivabim);
            return;
         }
         this.votufad();
         return;
      }

      public function execute1(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.cypyqi)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.tivabim)&&(this.tivabim.length))
         {
            this.votufad.apply(null,[param1].concat(this.tivabim));
            return;
         }
         this.votufad(param1);
         return;
      }

      public function execute(param1:Array) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.cypyqi)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.tivabim)&&(this.tivabim.length))
         {
            param1=param1.concat(this.tivabim);
         }
         var _loc2_:int = param1.length;
         if(_loc2_==0)
         {
            this.votufad();
         }
         else
         {
            if(_loc2_==1)
            {
               this.votufad(param1[0]);
            }
            else
            {
               if(_loc2_==2)
               {
                  this.votufad(param1[0],param1[1]);
               }
               else
               {
                  if(_loc2_==3)
                  {
                     this.votufad(param1[0],param1[1],param1[2]);
                  }
                  else
                  {
                     this.votufad.apply(null,param1);
                  }
               }
            }
         }
         return;
      }

      public function get listener() : Function {
         return this.votufad;
      }

      public function set listener(param1:Function) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(null==param1)
         {
            throw new ArgumentError("Given listener is null.\nDid you want to set enabled to false instead?");
         }
         else
         {
            this.dyhes(param1);
            this.votufad=param1;
            return;
         }
      }

      public function get once() : Boolean {
         return this._once;
      }

      public function get priority() : int {
         return this.bakakuhoc;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "[Slot listener: "+this.votufad+", once: "+this._once+", priority: "+this.bakakuhoc+", enabled: "+this.cypyqi+"]";
      }

      public function get enabled() : Boolean {
         return this.cypyqi;
      }

      public function set enabled(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cypyqi=param1;
         return;
      }

      public function get params() : Array {
         return this.tivabim;
      }

      public function set params(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tivabim=param1;
         return;
      }

      public function remove() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this._signal.remove(this.votufad);
         return;
      }

      protected function dyhes(param1:Function) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(null==param1)
         {
            throw new ArgumentError("Given listener is null.");
         }
         else
         {
            if(null==this._signal)
            {
               throw new Error("Internal signal reference has not been set yet.");
            }
            else
            {
               return;
            }
         }
      }
   }
[/CLASS]
}