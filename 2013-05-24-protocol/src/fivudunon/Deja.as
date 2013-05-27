package fivudunon
{
   import tulunyno.Hugyqufyq;
   import tulunyno.Dovihyz;


   public class Deja extends Hugyqufyq
   {
      public function Deja(... rest) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.data=[];
         super(rest);
         return;
      }

      private var data:Array;

      private var log:Boolean = true;

      override public function dispatch(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.log)
         {
            this.data.push(rest);
         }
         super.dispatch.apply(this,rest);
         return;
      }

      override public function add(param1:Function) : Dovihyz {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dovihyz = super.add(param1);
         while(this.data.length>0)
         {
            param1.apply(this,this.data.shift());
         }
         this.log=false;
         return _loc2_;
      }

      override public function addOnce(param1:Function) : Dovihyz {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dovihyz = null;
         if(this.data.length>0)
         {
            param1.apply(this,this.data.shift());
         }
         else
         {
            _loc2_=super.addOnce(param1);
            this.log=false;
         }
         while(this.data.length>0)
         {
            this.data.shift();
         }
         return _loc2_;
      }

      public function madut() : int {
         return this.data.length;
      }
   }

}