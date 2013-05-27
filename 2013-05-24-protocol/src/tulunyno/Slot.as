package tulunyno
{


   public class Slot extends Object implements Dovihyz
   {
      public function Slot(param1:Function, param2:Sabudaweb, param3:Boolean=false, param4:int=0) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.hyzej=param1;
         this._once=param3;
         this._signal=param2;
         this.met=param4;
         this.fas(param1);
         return;
      }

      protected var _signal:Sabudaweb;

      protected var melohop:Boolean = true;

      protected var hyzej:Function;

      protected var _once:Boolean = false;

      protected var met:int = 0;

      protected var medevuhy:Array;

      public function execute0() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.melohop)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.medevuhy)&&(this.medevuhy.length))
         {
            this.hyzej.apply(null,this.medevuhy);
            return;
         }
         this.hyzej();
         return;
      }

      public function execute1(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.melohop)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.medevuhy)&&(this.medevuhy.length))
         {
            this.hyzej.apply(null,[param1].concat(this.medevuhy));
            return;
         }
         this.hyzej(param1);
         return;
      }

      public function execute(param1:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.melohop)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.medevuhy)&&(this.medevuhy.length))
         {
            param1=param1.concat(this.medevuhy);
         }
         var _loc2_:int = param1.length;
         if(_loc2_==0)
         {
            this.hyzej();
         }
         else
         {
            if(_loc2_==1)
            {
               this.hyzej(param1[0]);
            }
            else
            {
               if(_loc2_==2)
               {
                  this.hyzej(param1[0],param1[1]);
               }
               else
               {
                  if(_loc2_==3)
                  {
                     this.hyzej(param1[0],param1[1],param1[2]);
                  }
                  else
                  {
                     this.hyzej.apply(null,param1);
                  }
               }
            }
         }
         return;
      }

      public function get listener() : Function {
         return this.hyzej;
      }

      public function set listener(param1:Function) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(null==param1)
         {
            throw new ArgumentError("Given listener is null.\nDid you want to set enabled to false instead?");
         }
         else
         {
            this.fas(param1);
            this.hyzej=param1;
            return;
         }
      }

      public function get once() : Boolean {
         return this._once;
      }

      public function get priority() : int {
         return this.met;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "[Slot listener: "+this.hyzej+", once: "+this._once+", priority: "+this.met+", enabled: "+this.melohop+"]";
      }

      public function get enabled() : Boolean {
         return this.melohop;
      }

      public function set enabled(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.melohop=param1;
         return;
      }

      public function get params() : Array {
         return this.medevuhy;
      }

      public function set params(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.medevuhy=param1;
         return;
      }

      public function remove() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this._signal.remove(this.hyzej);
         return;
      }

      protected function fas(param1:Function) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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

}