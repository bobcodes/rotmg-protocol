package mukyrosu
{


   public class Slot extends Object implements Depa
   {
      public function Slot(param1:Function, param2:Peq, param3:Boolean=false, param4:int=0) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.tesito=param1;
         this._once=param3;
         this._signal=param2;
         this.ceqy=param4;
         this.vucynyk(param1);
         return;
      }

      protected var _signal:Peq;

      protected var wysyru:Boolean = true;

      protected var tesito:Function;

      protected var _once:Boolean = false;

      protected var ceqy:int = 0;

      protected var ciqu:Array;

      public function execute0() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.wysyru)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.ciqu)&&(this.ciqu.length))
         {
            this.tesito.apply(null,this.ciqu);
            return;
         }
         this.tesito();
         return;
      }

      public function execute1(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.wysyru)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.ciqu)&&(this.ciqu.length))
         {
            this.tesito.apply(null,[param1].concat(this.ciqu));
            return;
         }
         this.tesito(param1);
         return;
      }

      public function execute(param1:Array) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.wysyru)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if((this.ciqu)&&(this.ciqu.length))
         {
            param1=param1.concat(this.ciqu);
         }
         var _loc2_:int = param1.length;
         if(_loc2_==0)
         {
            this.tesito();
         }
         else
         {
            if(_loc2_==1)
            {
               this.tesito(param1[0]);
            }
            else
            {
               if(_loc2_==2)
               {
                  this.tesito(param1[0],param1[1]);
               }
               else
               {
                  if(_loc2_==3)
                  {
                     this.tesito(param1[0],param1[1],param1[2]);
                  }
                  else
                  {
                     this.tesito.apply(null,param1);
                  }
               }
            }
         }
         return;
      }

      public function get listener() : Function {
         return this.tesito;
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
            this.vucynyk(param1);
            this.tesito=param1;
            return;
         }
      }

      public function get once() : Boolean {
         return this._once;
      }

      public function get priority() : int {
         return this.ceqy;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "[Slot listener: "+this.tesito+", once: "+this._once+", priority: "+this.ceqy+", enabled: "+this.wysyru+"]";
      }

      public function get enabled() : Boolean {
         return this.wysyru;
      }

      public function set enabled(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wysyru=param1;
         return;
      }

      public function get params() : Array {
         return this.ciqu;
      }

      public function set params(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ciqu=param1;
         return;
      }

      public function remove() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this._signal.remove(this.tesito);
         return;
      }

      protected function vucynyk(param1:Function) : void {
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